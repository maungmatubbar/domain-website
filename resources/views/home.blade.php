@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <div class="inline-block"> {{ __('Dashboard') }}</div>
                    <div>
                        <form  class="inline-blick" method="post" action="{{route('logout')}}">
                            @csrf
                            <button class="btn btn-primary" type="submit">Logout</button>
                        </form>
                    </div>
                </div>

                <div class="card-body">
                    <div class="d-flex align-items-between">
                        <a href="{{route('category.create')}}" class="btn btn-success w-50 m-1">Add New Category</a>
                        <a href="{{route('category.index')}}" class="btn btn-success w-50 m-1">Show Category</a>
                    </div>
                    <div class="d-flex align-items-between">
                        <a href="{{route('subcategory.create')}}" class="btn btn-success w-50 m-1">Add New Sub Category</a>
                        <a href="{{route('subcategory.create')}}" class="btn btn-success w-50 m-1">Show Sub Category</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
