<?php

namespace App\Http\Livewire;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Size;
use Livewire\Component;

class Catalog extends Component
{
    public function render()
    {
        $products = Product::all();

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
