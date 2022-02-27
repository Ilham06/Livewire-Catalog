<?php

namespace App\Http\Livewire;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Size;
use Livewire\Component;
use Livewire\WithPagination;

class Catalog extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public $search;
    public $sortBy = 'created_at';
    public $sortFrom = 'asc';
    public $categorySelected = [];
    public $brandSelected = [];
    public $sizeSelected = [];

    public function render()
    {
        $products = Product::when($this->search, function ($query) {
                        $query->where('name', 'like', '%' . $this->search . '%');
                    })
                    ->when($this->categorySelected, function ($query) {
                        $query->whereHas('category', function($query) {
                            $query->whereIn('category_product.category_id', $this->categorySelected);
                        });
                    })
                    ->when($this->sizeSelected, function ($query) {
                        $query->whereHas('size', function($query) {
                            $query->whereIn('product_size.size_id', $this->sizeSelected);
                        });
                    })
                    ->when($this->brandSelected, function ($query) {
                        $query->whereHas('brand', function($query) {
                            $query->whereIn('id', $this->brandSelected);
                        });
                    })
                    ->orderBy($this->sortBy, $this->sortFrom)
                    ->paginate(6);

        $this->resetPage();

        return view('livewire.catalog', [
            'products' => $products,
            'categories' => Category::withCount('product')->having('product_count', '!=', 0)->get(),
            'brands' => Brand::withCount('product')->having('product_count', '!=', 0)->get(),
            'sizes' => Size::withCount('product')->having('product_count', '!=', 0)->get()
        ])
            ->extends('layouts.home')
            ->section('content');
    }
}
