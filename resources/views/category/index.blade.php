@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <div class="inline-block">All out categories</div>
                    <div>
                        <a class="btn btn-warning" href="{{route('home')}}">Back</a>
                    </div>
                </div>
                <div class="card-body">
                    @foreach($categories as $category)
                        <!-- <h3>{{$category->categoryName}}</h3> -->
                        @foreach($category->subcategories as $subcategory)
                        <!-- <ul>
                            <li>{{$subcategory->subcategoryname}}</li>
                        </ul> -->
                        @endforeach
                        
                    @endforeach
                     <show-category-component :categories="{{$categories}}"></show-category-component>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
