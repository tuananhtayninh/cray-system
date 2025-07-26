<?php

namespace App\Services;

use App\Helpers\Helper;
use Illuminate\Support\Facades\Auth;
use App\Repositories\Product\ProductRepositoryInterface;
use App\Http\Resources\ProductResource;
use App\Repositories\ProductImage\ProductImageRepositoryInterface;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Storage;

class ProductService {
    protected $productRepository, $productImageRepository;
    protected $categoryService;

    public function __construct(
        ProductRepositoryInterface $productRepository,
        ProductImageRepositoryInterface $productImageRepository,
        CategoryService $categoryService
    )
    {
        $this->productRepository = $productRepository;
        $this->productImageRepository = $productImageRepository;
        $this->categoryService = $categoryService;
    }

    /**
     * Authenticates the product with the given credentials.
     *
     * @param array $credentials The product's login credentials.
     * @return mixed|null The authenticated product if successful, null otherwise.
     * @throws ValidationException
     */

    public function list($request){
        $products = $this->productRepository->list($request);
        $products = ProductResource::collection($products)->resource;
        return $products;
    }


    public function listGroupByDay($request){
        $products = $this->productRepository->listGroupByDay($request);
        $data = [];
        foreach($products as $product){
            if(empty($product->created_at)) return;
            $data[date('d-m-Y', strtotime($product->created_at))] = $product;
        }
        return $data;
    }

    public function fullList($request){
        $products = $this->productRepository->list($request);
        return $products;
    }

    public function create($request){
        $product = $this->filterData($request);
        $data = $this->productRepository->create($product);
        if($data) {
            $imagePath = null;

            if ($request->hasFile('image')) {
                if(is_array($request->file('image'))){
                    foreach ($request->file('image') as $image) {
                        if ($image && $image->isValid()) {
                            $directory = 'images/product';
                            if (!Storage::disk('public')->exists($directory)) {
                                Storage::disk('public')->makeDirectory($directory);
                            }
                            $imagePath = $image->store($directory, 'public');
                            $this->productImageRepository->create([
                                'product_id' => $data->id,
                                'link_image' => $imagePath
                            ]);
                        }
                    }
                }else{
                    $image = $request->file('image');
                    if ($image && $image->isValid()) {
                        $directory = 'images/product';
                        if (!Storage::disk('public')->exists($directory)) {
                            Storage::disk('public')->makeDirectory($directory);
                        }
                        $imagePath = $image->store($directory, 'public');
                        $this->productImageRepository->create([
                            'product_id' => $data->id,
                            'link_image' => $imagePath
                        ]);
                    }
                }
            }
            return $data;
        }
        return [];
    }

    public function show($id){
        $data = $this->productRepository->find($id);
        return $data;
    }

    public function showByDate($date, $categoryId){
        $data = $this->productRepository->showByDate($date, $categoryId);
        return $data;
    }

    public function findBySlug($slug){
        $data = $this->productRepository->findBySlug($slug);
        return $data;
    }

    public function getCategories($request){
        $data = $this->categoryService->list($request);
        return $data;
    }

    public function update($request, $id){
        $product = $this->filterData($request);
        $data = $this->productRepository->update($product, $id);

        if ($request->hasFile('image')) {
            $img_product = $this->productImageRepository->findByKey('product_id', $id, ['*'], [], 'all');
            if(!empty($img_product)){
                foreach ($img_product as $img) {
                    $this->productImageRepository->delete($img->id);
                }
            }
            $directory = 'images/product';
            if (!Storage::disk('public')->exists($directory)) {
                Storage::disk('public')->makeDirectory($directory);
            }
            if(is_array($request->file('image'))){
                foreach ($request->file('image') as $image) {
                    $imagePath = $image->store($directory, 'public');
                    $this->productImageRepository->create([
                        'product_id' => $data->id,
                        'link_image' => $imagePath
                    ]);
                }
            }else{
                $imagePath = $request->file('image')->store($directory, 'public');
                $this->productImageRepository->create([
                    'product_id' => $data->id,
                    'link_image' => $imagePath
                ]);
            }
        }
        return $data; 
    }

    public function delete($id){
        $data = $this->productRepository->delete($id);
        return $data;
    }

    private function filterData($request): array{
        $data = is_array($request) ? $request : $request->all();
        $data_request = [];
        for($i = 1; $i <= 16; $i++){
            if(!empty($data['data'.$i])){
                $data_request['data'.$i] = trim($data['data'.$i]);
            }
        }
        return $data_request;
    }

    public function checkCode($product_code){
        $data = $this->productRepository->findByKey('product_code',$product_code);
        return $data;
    }
}