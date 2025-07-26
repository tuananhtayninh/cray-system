@extends('layouts.app')
@section('content')
<style>
    .list-table-image .bt-content{
        display: flex;
        gap: 5px;
        overflow: auto;
        justify-content: center
    }
    .list-table-image .bt-content img{
        height: 110px;
        object-fit: contain;
        border: 1px solid #dddddd;
        border-radius: 8px;
    }
    .btn.btn-info,.btn.btn-danger{
        padding: 10px;
    }
    .btn.btn-info > span, .btn.btn-danger > span{
        font-size: 20px;
    }
</style>
    <!-- danh-sach-du-an -->
    <section class="section danh-sach-du-an mb-5">
        <div class="container-fluid">
            <div class="col-inner" style="overflow: scroll">
                <h2 class="section-title mb-4">Danh sách DailyCheck</h2>
                <div id="group-alert">
                    @if(session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif
                    @if(session('error'))
                        <div class="alert alert-danger">
                            {{ session('error') }}
                        </div>
                    @endif
                    @if(session('success') || session('error'))
                        <script>
                            $('.alert').setTimeout(() => {
                                $('.alert').remove();
                            }, 5000);
                        </script>
                    @endif
                </div>
                <form>
                    <div class="input-group group-search">
                        <div class="input-group">
                            <select class="form-control col-sm-8" id="select-categories">
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}" {!! $category->id == $category_id ? 'selected' : '' !!}>{{$category->name}}</option>
                                @endforeach
                            </select>
                            <input class="form-control col-sm-2" type="date" placeholder="Tìm kiếm" id="search-input">
                        </div>
                        <button class="btn btn-default btn-filter" type="button">
                            <img src="{{ asset('./assets/img/filter.svg') }}" alt="filter"> <span>Tìm kiếm</span>
                        </button>
                    </div>
                </form>
                <table class="table list-table">
                    <thead>
                        <tr>
                            <th class="list-table-stt" scope="col">STT</th>
                            <th>Ngày</th>
                            @for($i = 1; $i <= $data_columns; $i++)
                                @if($data_columns == 9)
                                    <th class="list-table-product-name" scope="col">SSO{{$i}}</th>
                                @elseif($data_columns == 16)
                                    <th class="list-table-product-name" scope="col">T24{!!$i<10?'0'.$i:$i!!}</th>
                                @elseif($data_columns == 5)
                                    <th class="list-table-product-name" scope="col">T24R{!!$i<10?'0'.$i:$i!!}</th>
                                @endif
                            @endfor
                            @if($data_columns === 4)
                                <th class="list-table-product-name" scope="col">EDW</th>
                                <th class="list-table-product-name" scope="col">GW</th>
                                <th class="list-table-product-name" scope="col">Status</th>
                                <th class="list-table-product-name" scope="col">Ghi Chú</th>
                            @endif
                            @if($data_columns !== 4)
                            <th class="list-table-image" scope="col">   
                                Hình lỗi
                            </th>
                            @endif
                            <th class="list-table-handle">
                                Thao tác
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @for($i = 1; $i <= 31; $i++)
                                @php
                                    $key = ($i < 10 ? '0'.$i : $i) . '-' . date('m-Y');
                                @endphp
                                @if(!empty($products[$key]))
                                <tr id="item-product-{{ $products[$key]->id }}">
                                    <td class="text-center">{{$i}}</td>
                                    <td>{{ $i . '/'. date('m') .  '/'. date('Y') }}</td>
                                    @for($j = 1; $j <= $data_columns; $j++)
                                        <td class="list-table-product-name text-center" scope="col">
                                                @php
                                                    $value = $products[$key]->{'data' . $j};
                                                @endphp
                                                @if($value === null)
                                                    {{-- empty --}}
                                                @else
                                                    {{ $value ? 'OK' : 'NOT OK' }}
                                                @endif
                                        </td>
                                    @endfor
                                    @if($data_columns !== 4)
                                    <td class="list-table-image text-center" scope="col">   
                                        <img src="{!! !empty($products[$key]->images[0]?->link_image) ? asset('storage/'.$products[$key]->images[0]->link_image) : asset('assets/img/no-image.png') !!}" alt="image" width="100px">
                                    </td>
                                    @endif
                                    <td class="list-table-handle text-center">
                                        <button class="btn btn-info" type="button" onclick="handleEdit('{{ $key }}','{{ $category_id }}')">
                                            <span class="material-symbols-outlined">
                                                edit
                                            </span>
                                        </button>
                                    </td>
                                </tr>
                                @else
                                <tr id="item-product-{{ $key }}">
                                    <td class="text-center">{{$i}}</td>
                                    <td>{{ $i . '/'. date('m') .  '/'. date('Y') }}</td>
                                    @if($data_columns !== 4)
                                    <td class="list-table-product-name" scope="col"></td>
                                    @endif
                                    @for($j = 1; $j <= $data_columns; $j++)
                                        <td class="list-table-product-name" scope="col">--</td>
                                    @endfor
                                    <td class="list-table-price text-center">
                                        <button class="btn btn-info" type="button" onclick="handleEdit('{{ $key }}','{{ $category_id }}')">
                                            <span class="material-symbols-outlined">
                                                edit
                                            </span>
                                        </button>
                                    </td>
                                </tr>
                                @endif
                            @endfor
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <!-- end danh-sach-du-an --> 
@endsection
@section('js')
    <script>
        function handleEdit(date,categoryId) {
            window.location.href = '{{ route("product.edit.form") }}?date=' + date + '&category_id=' + categoryId;
        }
        $(document).ready(function(){
            $('.btn-filter').on('click', function(){
                let categoryId = $('#select-categories').val();
                let dateSearch = $('#search-input').val();
                let linkUrl = '/admin/product';
                if(dateSearch){
                    linkUrl += '?date='+dateSearch;
                }
                if(categoryId){
                    linkUrl += (dateSearch) ? "&" : "?";
                    linkUrl += "category_id="+categoryId;
                }
                if(linkUrl === '') return;
                window.location.href  = linkUrl;
            });
        })
    </script>
@endsection