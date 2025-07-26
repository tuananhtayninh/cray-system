<?php
namespace App\Repositories\Product;

use App\Repositories\BaseRepository;
use App\Models\Product;

class  ProductRepository extends BaseRepository implements ProductRepositoryInterface
{
    protected $model;

    public function __construct(Product $product)
    {
        $this->model = $product;
    }

    public function list($request){
        $query = $this->model->query();
        $query = $this->model->query()->with(['createdBy', 'images', 'category' => function($query) use ($request) {
            if (!empty($request->category_id)) {
                $query->where('id', $request->category_id);
            }
        }]);
        if(isset($request->user_id)){
            $query->where('created_by', $request->user_id);
        }
        if (!empty($request->category_id)) {
            $query->where('category_id', $request->category_id);
        }
        $orderBy = $request->order_by ?? [];
        if(!empty($orderBy)){
            foreach ($orderBy as $column => $direction) {
                $query->orderBy($column, $direction);
            }
        }
        
        $page = $request->page ?? 1;
        $perPage = $request->per_page ?? 15;
        return $query->paginate($perPage, ['*'], 'page', $page);
    }
    public function showByDate($date, $categoryId){
        $query = $this->model->query();
        $query = $this->model->query()->with(['createdBy', 'images', 'category' => function($query) use ($categoryId) {
            if (!empty($categoryId)) {
                $query->where('id', $categoryId);
            }
        }]);
        if(isset($date)){
            $query->where('created_at', $date);
        }
        if (!empty($categoryId)) {
            $query->where('category_id', $categoryId);
        }
        return $query->first();
    }

    public function listGroupByDay($request){
        $query = $this->model->query()->with(['createdBy', 'images', 'category' => function($query) use ($request) {
            if (!empty($request->category_id)) {
                $query->where('id', $request->category_id);
            }
        }]);
        if(isset($request->user_id)){
            $query->where('created_by', $request->user_id);
        }
        if (!empty($request->category_id)) {
            $query->where('category_id', $request->category_id);
        }
        $orderBy = $request->order_by ?? [];
        if(!empty($orderBy)){
            foreach ($orderBy as $column => $direction) {
                $query->orderBy($column, $direction);
            }
        }
        $page = $request->page ?? 1;
        $perPage = $request->per_page ?? 15;
        return $query->paginate($perPage, ['*'], 'page', $page);
    }

    public function findBySlug($slug){
        return $this->model->query()->with(['createdBy', 'images', 'category'])->where('slug', $slug)->first();
    }
}
