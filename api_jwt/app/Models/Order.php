<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
   
    public $table = "orders";
    protected $fillable = ['orderId', 'itemstotal', 'total','shipping_fee','order_status','txtid','payment_getway','percentageAmount','walletBalance','copon_amount'];
    
}

