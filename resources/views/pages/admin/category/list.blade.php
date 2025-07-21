@extends('layouts.app')
@section('content')
<style>
    .btn.btn-danger{
    padding: 10px;
    }
    .btn.btn-danger > span{
    font-size: 20px;
    }
</style>
    <!-- danh-sach-du-an -->
    <section class="section danh-sach-du-an mb-5">
        <div class="container-fluid">
            <div class="row">
                <div class="clear col-sm-12 text-right">
                    <button class="btn btn-primary my-3" type="button" onclick="window.location.href='{{ route('category.create') }}'">
                        <i class="fas fa-plus"></i> Tạo danh mục
                    </button>
                </div>
            </div>
            <div class="col-inner">
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
                <form id="formSearch" action="{{ route('category.index') }}" method="GET">
                    <div class="input-group group-search">
                        <div class="input-group">
                            <button class="input-group-text" type="submit">
                                <span class="material-symbols-outlined">search</span>
                            </button>
                            <input type="text" value="{{ request()->name }}" placeholder="Tìm kiếm" name="name" class="form-control" id="inputSearch">
                        </div>
                        <button class="btn btn-default btn-filter" type="button" onclick="filter()">
                            <img src="{{ asset('./assets/img/filter.svg') }}" alt="filter"> <span>Tìm kiếm</span>
                        </button>
                    </div>
                </form>
                <table class="table list-table">
                    <thead>
                        <tr>
                            <th class="list-table-stt text-center" scope="col">STT</th>
                            <th class="list-table-name text-center">
                                Tên danh mục
                            </th>
                            <th class="list-table-image text-center">
                                Hình ảnh
                            </th>
                            <th class="text-center">Thuộc nhóm</th>
                            <th class="list-table-creater text-center" scope="col">Người tạo</th>
                            <th class="list-table-progree text-center" scope="col">Trạng thái</th>
                            <th class="list-table-time text-center" scope="col">Ngày tạo</th>
                            <th class="list-table-handle text-center">
                                Thao tác
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(!empty($categories) && count($categories) > 0)
                            @foreach($categories as $category)
                            <tr class="category-{{ $category->id }}">
                                <td class="list-table-stt text-center" scope="col">{{ $category->id }}</td>
                                <td class="list-table-name text-center">
                                    {{ $category->name }}
                                </td>
                                <td class="list-table-image text-center" scope="col">   
                                    <img class="icon-image" src="{!! !empty($category->image) ? asset('storage/'.$category->image) : asset('assets/img/no-image.png') !!}" alt="image" width="100px">
                                </td>
                                <td class="list-table-name text-center">
                                    {{ optional($category->parent)->name }}
                                </td>
                                <td class="list-table-creater text-center" scope="col">
                                    {{
                                        $category->createdBy->name
                                    }}
                                </td>
                                <td class="list-table-progree text-center" scope="col">
                                    {{ $category->active ? 'Hoạt động' : 'Không hoạt động' }}
                                </td>
                                <td class="list-table-time text-center" scope="col">
                                    {{ date('d/m/Y', strtotime($category->created_at)) }}
                                </td>
                                <td class="list-table-handle text-center">
                                    <button class="btn btn-danger" type="button" onclick="handleDelete({{ $category->id }})">
                                        <span class="material-symbols-outlined">
                                            delete
                                        </span>
                                    </button>
                                </td>
                            </tr>
                            @endforeach
                        @else
                        <tr>
                            <td colspan="8">
                                <img src="{{ asset('assets/img/no-image.svg') }}" alt="no-data"> <span>{{ __('Chưa có danh mục') }}</span>
                            </td>
                        </tr>
                        @endif
                    </tbody>
                </table>
                @if(!empty($categories) && count($categories) > 0)
                {{ $categories->links('vendor.pagination.custom') }}
                @endif
            </div>
        </div>
    </section>
    <script>
        function handleDelete(id) {
            if (id === null || id === undefined) {
                showAlert('Lỗi: Không thể xóa bài viết!');
                return;
            }

            if (confirm('Bạn có chắc muốn xoá ?')) {
                $.ajax({
                    url: "{{ route('destroy.category.id', ':id') }}".replace(':id', id),
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}' // Thêm CSRF token
                    },
                    success: function(response) {
                        console.log(response);
                        if(response.status){
                            $('#group-alert').append(`
                                <div class="alert alert-success">
                                    Xóa danh mục thành công
                                </div>`);
                            $('.category-' + id).remove();
                        }else{
                            $('#group-alert').append(`
                                <div class="alert alert-error">
                                    Xóa danh mục thất bại
                                </div>`);
                        }
                        setTimeout(() => {
                            $('.alert').remove();
                        }, 5000);
                    },
                    error: function(xhr, status, error) {
                        if (xhr.status === 404) {
                            showAlert('Lỗi: Không tìm thấy bài viết!');
                        } else if (xhr.status === 403) {
                            showAlert('Lỗi: Không có quyền xóa bài viết!');
                        } else {
                            showAlert('Lỗi: ' + error);
                        }
                    }
                });
            }
        }
    </script>
@endsection