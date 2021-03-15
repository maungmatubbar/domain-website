@extends('layouts.app')

@section('content')
<div class="container ">
    <div class="row py-5">
        <div class="w-100">
            <h1 class="text-center">Add your domain to our website and get backlink.</h1>
            <domain-register-component :categories="{{$categories}}" :subcategories="{{$subcategories}}"></domain-register-component>
        </div>
    </div>
</div>
@endsection