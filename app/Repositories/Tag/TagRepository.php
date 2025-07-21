<?php
namespace App\Repositories\Tag;

use App\Repositories\BaseRepository;
use App\Models\Tag;

class  TagRepository extends BaseRepository implements TagRepositoryInterface
{
    protected $model;

    public function __construct(Tag $tag)
    {
        $this->model = $tag;
    }

    public function list($request){
        $query = $this->model->query();

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
}
