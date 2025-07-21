@extends('layouts.app')
@section('content')
    <style>
        #list-project {
            height: 500px;
            overflow: auto;
            padding: 4px 0;
        }
        #reviews h3{
            text-transform: uppercase;
            margin: 10px 0 20px;
            padding: 10px;
            box-shadow: 3px 3px 3px #ccc;
            border-radius: 8px;
        }
        #reviews ul{
            padding-left: 0;
            max-height: 500px;
            overflow: auto
        }
        #reviews .list-group-item{
            border-bottom: 1px solid #ccc;
            margin-bottom: 15px;
            padding-bottom: 15px;
        }
        #reviews .list-group-item label{
            font-weight: bold;
            margin-bottom: 2px;
        }
        #reviews .list-group-item p{
            color: #4b4b4b;
        }
        #reviews .list-group-item a{
            display: block;
            text-align: right;
        }
    </style>
    <section class="approve-project">
        <div class="container-fluid pt-4">
            <div class="row">
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="panel">
                                <div class="panel-body">
                                    <h3>Danh sách Dailycheck</h3>
                                    <div id="list-project" class="list-group">
                                        @if (!empty($projects))
                                            <ul>
                                                @foreach ($projects as $project)
                                                    <li id="item-project-{{ $project['id'] }}" onclick="showProject({{ $project['id'] }})">
                                                        <div href="javascript:void(0);"
                                                            class="project-id-{{ $project['id'] }} list-group-item list-group-item-action active {{ $project['status'] == 2 ? 'approve' : '' }}"
                                                            aria-current="true">
                                                            <div class="d-flex w-100 justify-content-between">
                                                                <h5 class="mb-1">{{ $project['name'] }}</h5>
                                                                <small>{{ $project['created_at'] }}</small>
                                                            </div>
                                                            <div class="text-description" class="mb-1">
                                                                {{ $project['comment'] }}</div>
                                                            <inpyut type="hidden" class="project-id"
                                                                value="{{ $project['id'] }}">
                                                        </div>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        @else
                                            <div id="no-result">
                                                <div class="text-center">
                                                    <span class="material-symbols-outlined">
                                                        upcoming
                                                    </span>
                                                    <p>Vui lòng chọn dự án cần duyệt</p>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="panel">
                                <div class="panel-body">
                                    <h3>Chi tiết nhiệm vụ</h3>
                                    <div id="info-project">
                                        <div class="text-center">
                                            <span class="material-symbols-outlined">
                                                upcoming
                                            </span>
                                            <p>Vui lòng chọn dự án cần duyệt</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        function showProject(id) {
            if($('#item-project-'+id).hasClass('active')){
                $('#item-project-'+id).removeClass('active');
                $('#item-project-'+id).find('.label-mission').remove();
                $('#item-project-'+id).find('ul.list-missions').remove();
                return;
            }
            $('#item-project-'+id).addClass('active');
            let url = `{{ route('show.project.json', ['id' => 'ID_PLACEHOLDER']) }}`.replace('ID_PLACEHOLDER', id);
            $.ajax({
                url: url,
                type: "POST",
                data: {
                    '_token': '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(data) {
                    $('#info-project *').remove();
                    let link_map = '';
                    if (data.data.link_confirm) {
                        link_map = data.data.link_confirm;
                    } else {
                        link_map = `https://www.google.com/maps/embed/v1/place?key={{env('GOOGLE_MAP_API_KEY')}}&q=place_id:${data.data?.place_id}`;
                    }
                    if(data.data?.missions && data.data?.missions.length > 0) {
                        $('#item-project-' + id).append(`
                            <p class="label-mission" style="margin-bottom:0">Nhiệm vụ:</p>
                            <ul class="list-missions">
                                ${
                                    data.data.missions.map(mission => {
                                        let className = 'label-mission';
                                        if (mission.status == 1) {
                                            className = 'label-mission approve';
                                        }else if(mission.status == 3 || mission.status == 4){
                                            className = 'label-mission wating';
                                        }else if(mission.status == 5 || mission.status == 6){
                                            className = 'label-mission reject';
                                        }
                                        return `
                                            <li id="item-mission-${mission.id}" class="list-group-item list-group-item-action ${className}" aria-current="true">
                                                <div class="d-flex w-100 justify-content-between">
                                                    <p class="mb-1">${mission.comments.comment}</p>
                                                </div>
                                                ${
                                                    mission.no_image || mission.no_review ? `
                                                        <span class="material-symbols-outlined">
                                                        feedback
                                                        </span>
                                                    `:``
                                                }
                                            </li>
                                        `;
                                    }).join('')
                                }
                            </ul>
                        `);

                        data.data.missions.forEach(mission => {
                            $(`#item-mission-${mission.id}`).on('click', (e) => {
                                e.preventDefault();
                                e.stopPropagation();
                                onCheckMission(mission.id)
                            });
                        });
                    }
                }
            });
        }

        function onCheckMission(mission_id){
            $.ajax({
                url: `{{ route('show.mission.json', ['id' => 'ID_PLACEHOLDER']) }}`.replace('ID_PLACEHOLDER', mission_id),
                type: "POST",
                data: {
                    '_token': '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(data) {
                    if(data.data && data.data?.mission){
                        console.log(data.data);
                        $('#info-project *').remove();
                        $('#info-project').append(`
                            <div class="form-detail">
                                <div class="form-group mb-4">
                                    <label>Tên dự án</label>
                                    <input type="text" class="form-control" readonly value="${data.data.project?.name ?? ''}">
                                </div>
                                <div class="form-group mb-4">
                                    <label>Từ khóa</label> 
                                    <input type="text" class="form-control" readonly value="${data.data.project?.keyword ?? ''}">
                                </div>
                                <div class="form-group mb-4">
                                    <label>Nhiệm vụ</label> 
                                    <textarea class="form-control" readonly rows="5">${data.data.comments?.comment ?? ''}</textarea>
                                </div>
                                ${
                                    data.data?.mission?.no_image || data.data?.mission?.no_review ? `
                                    <div class="form-group">
                                        <hr />
                                        <label>Kết quả đã check: </label> 
                                    </div>`:``
                                }
                                ${
                                    data.data?.mission?.no_image ? `
                                        <div class="form-group mb-4">
                                            <input type="text" class="form-control" readonly value="Không thấy ảnh">
                                        </div>
                                    ` : ''
                                }
                                ${
                                    data.data?.mission?.no_review ? `
                                        <div class="form-group mb-4">
                                            <input type="text" class="form-control" readonly value="Không thấy đánh giá">
                                        </div>
                                    ` : ''
                                }
                                <div class="d-flex gap-3 group-action text-right">
                                    <button onclick="handleViewRate('${data.data.project?.place_id}')" class="btn btn-outline-primary">Xem đánh giá</button>
                                    ${data.data?.mission?.status !== {{$status_complete}} && !!data.data?.project?.id && data.data?.mission?.num_check < 2 ? `
                                        <button onclick="handleNoImage(${data.data?.mission?.id})" class="btn btn-danger">Không thấy ảnh, sai ảnh</button>  
                                        <button onclick="handleNoRate(${data.data?.mission?.id})" class="btn btn-danger">Không thấy đánh giá</button>  
                                        <button class="btn btn-primary" onclick="handleApprove(${data.data?.mission?.id})">Duyệt</button>
                                    ` : ''}
                                </div>
                            </div>
                        `);
                    }
                }
            });
        }

        function handleViewRate(place_id) {
            let link_map = `https://www.google.com/maps/embed/v1/place?key={{env('GOOGLE_MAP_API_KEY')}}&q=place_id:${place_id}`;
            if(place_id){
                $.ajax({
                    url: `{{ route('result.google.map', ['place_id' => 'PLACE_ID']) }}`.replace('PLACE_ID', place_id),
                    type: "POST",
                    data: {
                        '_token': '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(res) {
                        let data_reviews = null;
                        if(res.status){
                            data_reviews = res.data.reviews;
                            $('body').append(`
                                <div id="myModal" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <button onclick="$('#myModal').modal('hide')" style="background: transparent; z-index: 10; border: none; outline: none; color: #6f6e6e; position: absolute; top: 10px; right: 10px;width: 35px;padding: 0;border-radius: 50%;" type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span class="material-symbols-outlined">
                                                    close
                                                </span>
                                            </button>
                                            <div class="modal-body">
                                                <div id="map-project">
                                                    <iframe src="${link_map}" width="100%" height="350px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                                </div>
                                                <div id="reviews">
                                                    <h3>Bình luận gần nhất</h3>
                                                    <ul>
                                                        ${
                                                            data_reviews.map(review => {
                                                                if(!review.originalText?.text) return '';
                                                                return `
                                                                    <li class="list-group-item list-group-item-action">
                                                                        <div class="d-block w-100 justify-content-between review-item">
                                                                            <label>Người đánh giá</label>
                                                                            <p class="mb-1">${review.authorAttribution?.displayName ?? '' }</p>
                                                                            <label>Điểm đánh giá</label>
                                                                            <p class="mb-1">${review.rating ?? '' }</p>
                                                                            <label>Thời gian đánh giá</label>
                                                                            <p class="mb-1">${review.publishTime ?? ''}</p>
                                                                            <label>Nội dung đánh giá</label>
                                                                            <p class="mb-1">${review.originalText?.text ?? ''}</p>
                                                                            <a href="${review.googleMapsUri ?? ''}" target="_blank"><span>Xem chi tiết</span></a>
                                                                        </div>
                                                                    </li>
                                                                `
                                                            }).join('') ?? ''
                                                        }
                                                    </ul>    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `);
                            $('#myModal').modal('show');
                        }
                    }
                });
            }
        }

        function handleApprove(id) {
            if (confirm('Bạn xác nhận duyệt dự án này?')) {
                $.ajax({
                    url: `{{ route('update.mission.status', ['id' => 'ID_PLACEHOLDER']) }}`.replace(
                        'ID_PLACEHOLDER', id),
                    type: "POST",
                    data: {
                        '_token': '{{ csrf_token() }}',
                        'status': {{ $status_complete }}
                    },
                    dataType: 'json',
                    success: function(data) {
                        if (data.status) {
                            $('#item-mission-' + data.data.id).removeClass('wating');
                            $('#item-mission-' + data.data.id).addClass('approve');
                            Swal.fire({
                                title: "Thông báo",
                                text: "Duyệt nhiệm vụ thành công",
                                icon: "success"
                            });
                        } else {
                            Swal.fire({
                                title: "Thông báo",
                                text: "Duyệt nhiệm vụ không thành công",
                                icon: "error"
                            });
                        }
                    }
                })
            }
        }

        function handleNoImage(id){
            $.ajax({
                url: `{{ route('update.no.image', ['id' => 'ID_PLACEHOLDER']) }}`.replace('ID_PLACEHOLDER', id),
                type: "POST",
                data: {
                    '_token': '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(data) {
                    if (data.status) {
                        Swal.fire({
                            title: "Thông báo",
                            text: "Cập nhật thành công",
                            icon: "success"
                        });
                        $('#item-mission-'+data.data.id).append(`
                            <span class="material-symbols-outlined">
                            feedback
                            </span>
                        `);
                    } else {
                        Swal.fire({
                            title: "Thông báo",
                            text: "Cập nhật không thành công",
                            icon: "error"
                        });
                    }
                }
            });
        }
        
        function handleNoRate(id){
            $.ajax({
                url: `{{ route('update.no.review', ['id' => 'ID_PLACEHOLDER']) }}`.replace('ID_PLACEHOLDER', id),
                type: "POST",
                data: {
                    '_token': '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(data) {
                    if (data.status) {
                        Swal.fire({
                            title: "Thông báo",
                            text: "Cập nhật thành công",
                            icon: "success"
                        });
                        $('#item-mission-'+data.data.id).append(`
                            <span class="material-symbols-outlined">
                            feedback
                            </span>
                        `);
                    } else {
                        Swal.fire({
                            title: "Thông báo",
                            text: "Cập nhật không thành công",
                            icon: "error"
                        });
                    }
                }
            });
        }
    </script>
    <style>
        #list-project ul {
            list-style: none;
            padding: 0;
        }

        #list-project ul li {
            cursor: pointer;
        }

        #list-project .list-group-item {
            background-color: #f1f1f1;
            color: #363d47;
            margin-bottom: 10px;
            padding: 20px 10px;
        }

        /* #list-project .list-group-item.wating{
            background: #fdffd5;
        } */
        #list-project .list-group-item.reject{
            background: #ffdada;
        }
        #list-project .list-group-item .material-symbols-outlined{
            position: absolute;
            bottom: 5px;
            right: 5px;
        }
        #list-project .list-group-item.approve{
            background: #d8fbe6;
        }

        #list-project .list-group-item.active {
            background-color: #fdfdfd;
            color: #403647;
            padding: 12px 15px;
            border: 1px solid;
            border-radius: 0;
        }

        #list-project .list-group-item.approve {
            color: #3e3e3e;
            font-weight: normal;
            font-size: 16px;
        }

        #list-project .list-group-item.approve h5 {
            color: #3e3e3e;
        }
        #list-project.text-description{
            font-size: 14px;
        }
        .text-description,
        .text-keyword {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 1;
            line-height: 1.5;
            max-height: 1.5;
        }

        button {
            width: 16rem;
            font-family: Montserrat;
            font-size: 16px;
            font-weight: 700;
            line-height: 25.6px;
            text-align: center;
            font-weight: 500 !important;
        }
    </style>
@endsection
