<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class Customers extends Controller
{
    public function index()
    {
        $rawData = Http::get("http://niceye-node.test:3000/customers")->body();
        $customers = json_decode($rawData);
        return view('customers', ['customers' => $customers]);
    }
}