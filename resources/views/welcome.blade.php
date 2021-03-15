@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row py-3">
            <div class="d-flex flex-column justify-content-center col-md-6">
               <div class="py-3"><h1>WE HAVE PERFECT WEB HOSTING PACKAGE FOR YOU.</h1></div>
               <div class="py-3"><h4>We provide SSD Hosting with Top security and 99.99% up-time. We are top Domain Hosting provider in Bangladesh.</h4></div>
               <div><a href="{{route('domain.create')}}" class="btn btn-primary">Submit your domain</a></div>
            </div>
            <div class="col-md-6">
                <div class="d-flex justify-content-end align-items-center">
                    <img src="{{asset('images/backlink.jpg')}}" alt="">
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center">
            <h2 class="font-weight-bolder">Categories</h2>
        </div>
        <domain-display-component :categories="{{$categories}}" :subcategories="{{$subcategories}}" :domains="{{$domains}}"></domain-display-component>
    </div>
@endsection