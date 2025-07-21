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
            <div class="row">
                <div class="clear col-sm-12 text-right">
                    <button class="btn btn-primary my-3" type="button" onclick="window.location.href='{{ route('product.create') }}'">
                        <i class="fas fa-plus"></i> Đăng sản phẩm
                    </button>
                </div>
            </div>
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
                            <button class="input-group-text" type="submit">
                                <span class="material-symbols-outlined">search</span>
                            </button>
                            <select class="form-control" id="select-categories">
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <button class="btn btn-default btn-filter" type="button" onclick="filter()">
                            <img src="{{ asset('./assets/img/filter.svg') }}" alt="filter"> <span>Tìm kiếm</span>
                        </button>
                    </div>
                </form>
                <table class="table list-table">
                    <thead>
                        <tr>
                            <th class="list-table-stt" scope="col">STT</th>
                            @for($i = 1; $i <= $data_columns; $i++)
                                @if($data_columns == 9)
                                    <th class="list-table-product-name" scope="col">SSO{{$i}}</th>
                                @elseif($data_columns == 16)
                                    <th class="list-table-product-name" scope="col">T24{!!$i<10?'0'.$i:$i!!}</th>
                                @else
                                    <th class="list-table-product-name" scope="col">T24{!!$i<10?'0'.$i:$i!!}</th>
                                @endif
                            @endfor
                            <th class="list-table-image" scope="col">   
                                Hình lỗi
                            </th>
                            <th class="list-table-product">
                                Danh mục
                            </th>
                            <th class="list-table-price">
                                Giá sản phẩm
                            </th>
                            <th class="list-table-handle">
                                Thao tác
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(!empty($products) && count($products) > 0)
                            @foreach($products as $product)
                                <tr id="item-product-{{ $product->id }}">
                                    <td class="list-table-product-name" scope="col">{{ $product->id }}</td>
                                    <td class="list-table-product-code text-center" scope="col">
                                    {{ $product->name }}
                                    </td>
                                    <td class="list-table-product-code text-center" scope="col">
                                    {{ $product->product_code }}
                                    </td>
                                    <td class="list-table-image text-center" scope="col">   
                                        <img src="{!! !empty($product->images[0]?->link_image) ? asset('storage/'.$product->images[0]->link_image) : asset('assets/img/no-image.png') !!}" alt="image" width="100px">
                                    </td>
                                    <td class="list-table-product">
                                        
                                    </td>
                                    <td class="list-table-price text-center">
                                        {!! formatVND($product->price) !!}
                                    </td>
                                    <td class="list-table-handle text-center">
                                        <button class="btn btn-info" type="button" onclick="handleEdit({{ $product->id }})">
                                            <span class="material-symbols-outlined">
                                                edit
                                            </span>
                                        </button>
                                        <button class="btn btn-danger" type="button" onclick="handleDelete({{ $product->id }})">
                                            <span class="material-symbols-outlined">
                                                delete
                                            </span>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr class="no-result">
                                <td colspan="7">
                                    <img src="{{ asset('assets/img/no-image.svg') }}" alt="no-data"> <span>{{ __('Chưa có sản phẩm') }}</span>
                                </td>
                            </tr>
                        @endif
                    </tbody>
                </table>
                @if(!empty($products) && count($products) > 0)
                {{ $products->links('vendor.pagination.custom') }}
                @endif
            </div>
        </div>
    </section>
    <!-- end danh-sach-du-an --> 
@endsection
@section('js')
    <script>
        function handleEdit(id) {
            window.location.href = "{{route('product.edit', ['product' => 'ID_PRODUCT'])}}".replace('ID_PRODUCT', id);
        }
        function filterCategories(){
            let category_id = $('')
        }
        function handleDelete(id){
            $.ajax({
                url: "{{route('product.destroy', ['product' => 'ID_PRODUCT'])}}".replace('ID_PRODUCT', id),
                type: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    id: id,
                    _method: 'DELETE'
                },
                dataType: 'json',
                success: function (data) {
                    $('#item-product-'+id).remove();
                    showAlert('success','Xóa thành công');
                }
            })
        }
    </script>
@endsection