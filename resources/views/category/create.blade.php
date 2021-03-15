@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <div class="inline-block"> {{ __('Dashboard') }}</div>
                    <div>
                        <a class="btn btn-warning" href="{{route('home')}}">Back</a>
                    </div>
                </div>

                <div class="card-body">
                    <h4>Add New Category</h4>
                        <form class="mt-4" action="{{route('category.store')}}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="categoryName">Category Name</label>
                                <div class="">
                                    <input type="text" name="categoryName" class="form-control">
                                    @error('categoryName')
                                        <span class="error text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                            </div>
                            <button class="btn btn-primary" type="submit">Save Category</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
