<?php

namespace App\Http\Controllers\Order;

use App\Http\Controllers\Controller;
use App\Models\AdditionalProducts;
use Illuminate\Http\Request;
use App\Models\Product;
//use Darryldecode\Cart\Cart;
use Illuminate\Support\Facades\Session;
use App\Models\Order;
use Validator;
use App\Models\TicketHistory;
use App\Models\OrderStatus;
use App\Models\OrderHistory;
use App\Models\ProductCategory;
use App\Models\WishList;
use App\Models\User;
use App\Models\TicketsBooking;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{

    protected $userid;
    public function __construct()
    {
        $this->middleware('auth:api');
        $id = auth('api')->user();
        $user = User::find($id->id);
        $this->userid = $user->id;
    }

    public function getOrderhistory($id)
    {
        $orderRow  = Order::where('customer_id', $this->userid)->where('id', $id)->first();
        $status    = OrderStatus::find($orderRow->order_status);
        $paytype   = (int)$orderRow->payment_getway;
        $ptype     = $this->paymenttype($paytype);
        $orderstatus              = !empty($status->name) ? $status->name : "";
        $odata['orderId']         = $orderRow->orderId;
        $odata['subtotal']        = $orderRow->subtotal;
        $odata['payment_getway']  = $ptype;
        $odata['order_status']    = $orderstatus;
        $odata['placeOn']         = date_format(date_create($orderRow->created_at), "d-m-Y");
        return response()->json($odata, 200);
    }

    public function paymenttype($id)
    {
        $name = "";
        if ($id === 2) {
            $name =  "Bkash";
        } elseif ($id === 3) {
            $name = "Nagad";
        } elseif ($id === 4) {
            $name = "Roket";
        } elseif ($id === 5) {
            $name = "Upay";
        }
        return $name;
    }

    public function orderStatusRow($id)
    {
        try {
            $row = OrderStatus::find($id);
            $response = [
                'data' => $row,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }

    public function save_order(Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name'           => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $data = array(
            'name'        => $request->name,
            'description' => $request->description,
        );
        if (empty($request->id)) {
            OrderStatus::insertGetId($data);
        } else {
            OrderStatus::where('id', $request->id)->update($data);
        }

        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function orderStatus()
    {

        try {
            $rows = OrderStatus::all();
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }

    function addtowish($slug)
    {
        $findproduct = Product::where('slug', $slug)->select('id')->first();
        $row                  = new WishList();
        $row->customer_id     = $this->userid;
        $row->product_id      = $findproduct->id;
        $row->save();
        return response()->json("Item successfully added to your wishlist!", 200);
    }

    function allWishList()
    {
        $rows = WishList::join('product', 'product.id', '=', 'wishlist.product_id')->select('wishlist.id as wishid', 'product.thumnail_img', 'product.slug', 'product.name', 'price', 'product.id')->get();
        $products = [];
        foreach ($rows as $key => $v) {
            $products[] = [
                'id'           => $v->id,
                'product_name' => $v->name,
                'wishid'       => $v->wishid,
                'price'        => number_format($v->price, 2),
                'thumnail_img' => url($v->thumnail_img),
                'slug'         => $v->slug,

            ];
        }

        return response()->json($products, 200);
    }

    function removeWishList($id)
    {

        $wishlistItem = WishList::find($id);
        if (!$wishlistItem) {
            return response()->json(['error' => 'WishList item not found'], 404);
        }
        $wishlistItem->delete();
        return response()->json(['message' => 'WishList item deleted successfully']);
    }

    function generateUniqueRandomNumber($length = 5)
    {
        do {
            $randomNumber = mt_rand(pow(10, $length - 1), pow(10, $length) - 1);
        } while (Order::where('id', $randomNumber)->exists());

        return $randomNumber;
    }

    public function getOrder()
    {

        $data['orders']  = Order::where('customer_id', $this->userid)->where('order_status', 1)->limit(2)->get();
        foreach ($data['orders'] as $v) {
            $orders[] = [
                'orderId'      => $v->orderId,
                'placeOn'      => date_format(date_create($v->created_at), "Y-m-d"),
                'total'        => number_format($v->total, 2),
            ];
        }

        $order['orderdata']      = $orders;

        return response()->json($order, 200);
    }

    public function update_order_status(Request $request)
    {

        $orderid = $request->orderId;
        $ckhOrder = Order::where('orderId', $orderid)->first();
        $chkpoint = OrderHistory::select('order_history.quantity', 'order_history.product_id')
            ->where('order_id', $ckhOrder->id)
            ->get();

        $totalQty = 0;
        foreach ($chkpoint as $v) {
            $pcategory = ProductCategory::where('product_id', $v->product_id)->first();
            $category_id = $pcategory->category_id;
            $quantity = $v->quantity;
        
            if ($category_id == 27) {
                $product_id = $v->product_id;
                $chkPointTickets = TicketHistory::where('product_id', $product_id)
                    ->whereNull('orderId')
                    ->limit($quantity)
                    ->get();
            } else {
                $additionalProduct = AdditionalProducts::where('product_id', $v->product_id)->first();
                $addi_quantity = $additionalProduct->add_product_qty;
                $product_id = $additionalProduct->referrance_product_id;
                $chkPointTickets = TicketHistory::where('product_id', $product_id)
                    ->whereNull('orderId')
                    ->limit($addi_quantity)
                    ->get();
            }
        
            foreach ($chkPointTickets as $tChkPoint) {

                $data['orderId'] = $orderid;
                $data['category_id'] = $category_id;
                $data['product_id'] = $product_id;  
                $data['orderDate'] =  date("Y-m-d",strtotime($ckhOrder->created_at));
                $data['customer_id'] = $ckhOrder->customer_id;  
                // Increment the total quantity
                $totalQty++;
                TicketHistory::where('id', $tChkPoint->id)->update($data);
                //TicketHistory::where('id', $tChkPoint->id)->update(['orderId' => $orderid]);
            }
        }
        
        // Now $totalQty contains the total number of records inserted
        echo "Total Records Inserted: $totalQty";
        


        



     
        exit;
        $data = [];
        foreach ($totalQty as $v) {
            foreach ($v as $record) {
                $chkpost = TicketsBooking::where('orderId', $orderid)->first();
                if (empty($chkpost)) {
                    $data[] = [
                        'ticket_history_id' => $record->id,
                        'orderId'           => $orderid,
                        // Add other columns and values as needed
                    ];
                }
            }
        }
        dd($data);
        // Perform multiple inserts
        DB::table('tickets_booking')->insert($data);

        exit;

        $data['order_status'] = $request->orderstatus;
        Order::where('orderId', $request->orderId)->update($data);

        return response()->json("update successfully", 200);
    }
    public function orderDetails($order_id)
    {

        $orderStatus     = orderStatus::all();
        $findorder       = Order::join('order_status', 'order_status.id', '=', 'orders.order_status')->select('orders.*', 'order_status.name as orderstatus', 'order_status.id as orderstatus_id')->where('orderId', $order_id)->first();
        $data['orders']  = OrderHistory::join('product', 'product.id', '=', 'order_history.product_id')
            ->select('product.name as product_name', 'product.thumnail_img', 'order_history.*')
            //  ->groupBy('order_history.order_id')
            ->where('order_id', $findorder->id)->get();

        foreach ($data['orders'] as $v) {
            $orders[] = [
                'product_name'    => $v->product_name,
                'thumbnail_img'   => url($v->thumnail_img),
                'quantity'        => $v->quantity,
                'price'           => $v->price,
                'total'           => $v->quantity * $v->price,
            ];
        }

        // dd($orders);

        $findCustomer = User::where('id', $findorder->customer_id)->first();
        $order['customername']  = !empty($findCustomer->name) ? $findCustomer->name : "";
        $order['customeremail'] = !empty($findCustomer->email) ? $findCustomer->email : "";
        $order['orderdata']     = $orders;
        $order['orderrow']      = !empty($findorder->orderstatus) ? $findorder->orderstatus : "";
        $order['orderstatus_id'] = !empty($findorder->orderstatus_id) ? $findorder->orderstatus_id : "";
        $order['subtotal'] = !empty($findorder->subtotal) ? $findorder->subtotal : "";
        $order['OrderStatus']   = $orderStatus;
        //dd($data['orderStatus']);
        return response()->json($order, 200);
    }
    public function allOrders()
    {

        $data['orders']  = Order::join('order_status', 'orders.order_status', '=', 'order_status.id')
            ->select('orders.*', 'order_status.name')
            ->where('orders.customer_id', $this->userid)
            ->orderBy('orders.id', 'DESC')
            //
            ->get(); //Order::where('customer_id', $this->userid)->get();
        foreach ($data['orders'] as $v) {
            $orders[] = [
                'name'         => $v->name,
                'orderId'      => $v->orderId,
                'placeOn'      => date_format(date_create($v->created_at), "Y-m-d"),
                'total'        => number_format($v->total, 2),
            ];
        }

        $order['orderdata']      = $orders;

        return response()->json($order, 200);
    }

    public function allOrdersAdmin()
    {

        $data['orders']  = Order::join('order_status', 'orders.order_status', '=', 'order_status.id')
            ->select('orders.*', 'order_status.name')
            ->orderBy('orders.id', 'DESC')
            ->get(); //Order::where('customer_id', $this->userid)->get();
        foreach ($data['orders'] as $v) {
            $orders[] = [
                'id'           => $v->id,
                'name'         => $v->name,
                'orderId'      => $v->orderId,
                'placeOn'      => date_format(date_create($v->created_at), "Y-m-d"),
                'total'        => number_format($v->total, 2),
            ];
        }

        $order['orderdata']      = $orders;

        return response()->json($order, 200);
    }

    public function submitOrder(Request $request)
    {
        //dd($request->all());
        //dd($request->all());
        $validator = Validator::make($request->all(), [
            'txtid'           => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $randomNum = $this->userid . $this->generateUniqueRandomNumber() . "-" . date("y");

        $cartData = $request->input('cart');
        $cart     = $request->input('cart');
        $txtid    = $request->input('txtid');
        $subtotal_amt    = floatval($request->input('subtotal_amt'));
        $payment_getway    = $request->input('payment_getway');
        ///dd($cartData);
        $total = 0;
        foreach ($cartData as $cartItem) {
            $productid = $cartItem['id'];
            $quantity  = $cartItem['quantity'];
            $price     = $cartItem['price']; //str_replace(',', '', $cartItem['price']); // Remove commas
            $price     = floatval($price); // Convert to float

            if (!is_numeric($quantity) || !is_numeric($price)) {
                //  echo "Invalid quantity or price for Product ID: {$productid}<br/>";
                continue;  // Skip the current iteration and move to the next item
            }
            // Calculate the subtotal for the current item
            $subtotal = $subtotal_amt; //$quantity * $price;
            // Add the subtotal to the total
            $total += $subtotal;
            //echo "Product ID: {$productid} - Quantity: {$quantity} - Price: {$price} - Subtotal: {$subtotal} - Total: {$total}<br/>";
        }
        $order                  = new Order();
        $order->orderId         = $randomNum;
        $order->txtid           = $txtid;
        $order->payment_getway  = $payment_getway;
        $order->total           = $total;
        $order->subtotal        = $total;
        $order->customer_id     = $this->userid;
        $order->order_status    = 1; // Order Placed 
        $order->save();
        // Get the last inserted order ID
        $lastOrderId = $order->id;
        // Update orderId with the last inserted order ID

        $itemtotal = 0;
        foreach ($cart as $cartItem) {
            $productid = $cartItem['id'];
            $quantity  = $cartItem['quantity'];
            $price     = $cartItem['price']; //str_replace(',', '', $cartItem['price']); // Remove commas
            $price     = floatval($price); // Convert to float

            $subtotal = $quantity * $price;
            // Add the subtotal to the total
            $itemtotal += $subtotal;
            $order_history                  = new OrderHistory();
            $order_history->order_id        = $lastOrderId;
            $order_history->product_id      = $productid;
            $order_history->quantity        = $quantity;
            $order_history->price           = $price;
            $order_history->total           = $itemtotal;
            $order_history->save();
        }
        $odata['orderid'] = $lastOrderId;
        $odata['msg']     = $lastOrderId;

        return response()->json($odata);
    }
}
