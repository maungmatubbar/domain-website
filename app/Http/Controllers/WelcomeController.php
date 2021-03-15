<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Domain;
class WelcomeController extends Controller
{
    public function index(){
        $categories = Category::get();
        $subcategories = Subcategory::get();
        $domains = Domain::get();
        return view('welcome')->with('categories',$categories)->with('subcategories',$subcategories)->with('domains',$domains);
    }
}
