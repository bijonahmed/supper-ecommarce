<?php

namespace App\Models;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use AuthorizesRequests;
use DB;

class TicketsBooking extends Authenticatable
{
  use HasApiTokens, HasFactory, Notifiable;
  public $table = "tickets_booking";
  protected $fillable = [
    'ticket_history_id', 'orderId', 'order_date'
  ];
}
