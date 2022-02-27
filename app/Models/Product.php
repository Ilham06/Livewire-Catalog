<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory;
    use Softdeletes;

    protected $guarded = [];

    public function category()
    {
        return $this->belongsToMany(Category::class)->withPivot('category_id');
    }

    public function color()
    {
        return $this->belongsToMany(Color::class)->withPivot('color_id');
    }

    public function size()
    {
        return $this->belongsToMany(Size::class)->withPivot('size_id');
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class, 'brand_id', 'id');
    }

    public function photo()
    {
        return $this->hasMany(Photo::class, 'product_id', 'id');
    }

    public function discount()
    {
        return $this->hasOne(Discount::class, 'product_id', 'id');
    }

    public function transactionDetail()
    {
        return $this->hasMany(TransactionDetail::class, 'product_id', 'id');
    }

}
