<div>
    <!-- Page Header Start -->
    <div class="container-fluid mb-5 bg-soft-blue">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Catalog</h1>
            <div class="d-inline-flex">
                <p class="m-0">Find Your Favorite Product Here!</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3">
                <div class="shoop-search">
                    <form action="">
                        <div class="input-group">
                            <input wire:model="search" type="text" class="form-control" placeholder="Search by name">
                        </div>
                    </form>
                </div>
                <div id="accordion" class="myaccordion mt-3">
                    <div wire:ignore class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button class="d-flex align-items-center justify-content-between btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Kategori
                                </button>
                            </h2>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <form>
                                    @foreach ($categories as $category)
                                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                            <input wire:model="categorySelected" type="checkbox" class="custom-control-input" id="{{ $category->name }}" value="{{ $category->id }}">
                                            <label class="custom-control-label" for="{{ $category->name }}">{{ $category->name }}</label>
                                            <span class="badge border font-weight-normal">{{ $category->product_count }}</span>
                                        </div>
                                    @endforeach
                                </form>
                            </div>
                        </div>
                    </div>
                    <div wire:ignore class="card">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Brand
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="card-body">
                                <form>
                                    @foreach ($brands as $brand)
                                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                            <input wire:model="brandSelected" type="checkbox" class="custom-control-input" id="{{ $brand->name }}" value="{{ $brand->id }}">
                                            <label class="custom-control-label" for="{{ $brand->name }}">{{ $brand->name }}</label>
                                            <span class="badge border font-weight-normal">{{ $brand->product_count }}</span>
                                        </div>
                                    @endforeach
                                </form>
                            </div>
                        </div>
                    </div>
                    <div wire:ignore class="card">
                        <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                                <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Ukuran
                                </button>
                            </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                <form>
                                    @foreach ($sizes as $size)
                                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                            <input wire:model="sizeSelected" type="checkbox" class="custom-control-input" id="{{ $size->size }}" value="{{ $size->id }}">
                                            <label class="custom-control-label" for="{{ $size->size }}">{{ $size->size }}</label>
                                            <span class="badge border font-weight-normal">{{ $size->product_count }}</span>
                                        </div>
                                    @endforeach
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Shop Sidebar End -->
            <!-- Shop Product Start -->
            <div class="col-lg-9 col-md-12">
                <div class="row">
                    <div class="col-12 mb-3">
                        <div class="top-page d-flex align-items-center justify-content-end">
                            <div class="dropdown ml-4">
                                <select wire:model="sortBy" class="form-control select" name="" id="">
                                    <option value="created_at">Terbaru</option>
                                    <option value="price">Harga</option>
                                </select>
                            </div>
                            <div class="dropdown ml-4">
                                <select wire:model="sortFrom" class="form-control select" name="" id="">
                                    <option value="asc">Asc</option>
                                    <option value="desc">Desc</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    @foreach ($products as $pl)
                    <div class="col-lg-4 col-md-6 col-6 pb-1">
                        <div class="card product-item mb-4 position-relative">
                            <div class="product-img position-relative overflow-hidden bg-transparent p-0">
                                <img class="img-fluid w-100" src="{{ asset('storage/image/product/'.$pl->photo->first()->url) }}" alt="">
                            </div>
                            <div class="card-body text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">{{ $pl->name }}</h6>
                                <h6 class="">Rp. {{ number_format($pl->price) }}</h6>
                            </div>
                            <div class="action-button">
                                <a href=""><i class="fas fa-shopping-cart"></i></a>
                                <a href=""><i class="fas fa-heart"></i></a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                {{ $products->links() }}
            </div>
            <!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop End -->
</div>
