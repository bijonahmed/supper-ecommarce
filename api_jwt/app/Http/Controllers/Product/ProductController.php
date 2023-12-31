<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\Holiday;
use App\Models\User;
use App\Models\ProductAttributeValue;
use App\Models\ProductVarrientHistory;
use App\Models\Categorys;
use App\Models\TicketHistory;
use App\Models\ProductAttributes;
use App\Models\ProductCategory;
use App\Models\Product;
use App\Models\ProductAdditionalImg;
use App\Models\ProductVarrient;
use App\Models\AttributeValues;
use App\Models\AdditionalProducts;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use Session;
use DB;
use PHPUnit\Framework\Attributes\Ticket;

class ProductController extends Controller
{
    protected $userid;
    public function __construct()
    {
        $this->middleware('auth:api');
        $id = auth('api')->user();
        $user = User::find($id->id);
        $this->userid = $user->id;
    }

    public function productUpdate(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name'           => 'required',
            //  'category'       => 'required',

            // 'files' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // max:2048 is the maximum file size in kilobytes (2MB)
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $product_id =  (int)$request->id;
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));
        $data = array(
            'name'                       => $request->name,
            'slug'                       => $slug,
            'description'                => !empty($request->description) ? $request->description : "",
            'meta_title'                 => !empty($request->meta_title) ? $request->meta_title : "",
            'meta_description'           => !empty($request->meta_description) ? $request->meta_description : "",
            'meta_keyword'               => !empty($request->meta_keyword) ? $request->meta_keyword : "",
            'product_tag'                => !empty($request->product_tag) ? $request->product_tag : "",
            'brand'                      => !empty($request->brand) ? $request->brand : "",
            'sku'                        => !empty($request->sku) ? $request->sku : "",
            'external_link'              => !empty($request->external_link) ? $request->external_link : "",
            'cash_dev_status'            => !empty($request->cash_dev_status) ? $request->cash_dev_status : "",
            'price'                      => !empty($request->price) ? $request->price : 0,
            'unit'                       => !empty($request->unit) ? $request->unit : "",
            // 'stock_qty'                  => !empty($request->stock_qty) ? $request->stock_qty : "",
            'stock_mini_qty'             => !empty($request->stock_mini_qty) ? $request->stock_mini_qty : 0,
            'stock_status'               => !empty($request->stock_status) ? $request->stock_status : "",
            'manufacturer'               => !empty($request->manufacturer) ? $request->manufacturer : "",
            'manufacturer'               => !empty($request->manufacturer) ? $request->manufacturer : "",
            'download_link'              => !empty($request->download_link) ? $request->download_link : "",
            'year'                       => !empty($request->year) ? $request->year : "",
            'discount'                   => !empty($request->discount) ? $request->discount : "",
            'discount_status'            => !empty($request->discount_status) ? $request->discount_status : "",
            'shipping_days'              => !empty($request->shipping_days) ? $request->shipping_days : "",
            'free_shopping'              => !empty($request->free_shopping) ? $request->free_shopping : "",
            'flat_rate_status'           => !empty($request->flat_rate_status) ? $request->flat_rate_status : "",
            'flat_rate_price'            => !empty($request->flat_rate_price) ? $request->flat_rate_price : "",
            'vat'                        => !empty($request->vat) ? $request->vat : 0,
            'vat_status'                 => !empty($request->vat_status) ? $request->vat_status : "",
            'tax'                        => !empty($request->tax) ? $request->tax : 0,
            'tax_status'                 => !empty($request->tax_status) ? $request->tax_status : "",
            'status'                     => 1, //!empty($request->status) ? $request->status : "",
            'entry_by'                   => $this->userid
        );

        //insert ticket (category=27) 
        $categoryId =  (int) $request->category_id;
        $chkPoint = TicketHistory::where('product_id', $product_id)->first();
        //dd($chkPoint);

        if ($categoryId == 27) {
            if (empty($chkPoint)) {
                $stockQty = $request->stock_qty;
                $maxValue = TicketHistory::max('id');
                $counter = ($maxValue) ? (int) $maxValue : 0;
                for ($i = 0; $i < $stockQty; $i++) {
                    $counter++;
                    $formattedNumber = sprintf('%09d', $counter);
                    TicketHistory::create([
                        'product_id' => $product_id,
                        'status' => 1,
                        'ticket_number' => $formattedNumber, // Example of generating a random number between 1000 and 9999
                    ]);
                }
            }
        } else {
            $data['stock_qty']  = !empty($request->stock_qty) ? $request->stock_qty : "";
        }

        //start additional product 
        $chk = AdditionalProducts::where('product_id', $product_id)->first();
        if (empty($chk)) {
            //start additional product 
            if (!empty($request->referrance_product_id)) {
                $additional_data = array(
                    'product_id'                 => $product_id,
                    'referrance_product_id'      => !empty($request->referrance_product_id) ? $request->referrance_product_id : "",
                    'add_product_qty'            => !empty($request->add_product_qty) ? $request->add_product_qty : "",
                    'add_product_price'          => !empty($request->add_product_price) ? $request->add_product_price : "",
                    'final_price'                => !empty($request->final_price) ? $request->final_price : "",
                );
                AdditionalProducts::insert($additional_data);
            }

            //end additional product 

        } else {
            //update
            $additional_data = array(
                'product_id'                 => $product_id,
                'referrance_product_id'      => !empty($request->referrance_product_id) ? $request->referrance_product_id : "",
                'add_product_qty'            => !empty($request->add_product_qty) ? $request->add_product_qty : "",
                'add_product_price'          => !empty($request->add_product_price) ? $request->add_product_price : "",
                'final_price'                => !empty($request->final_price) ? $request->final_price : "",
            );
            AdditionalProducts::where('product_id', $product_id)->update($additional_data);
        }

        //end additional product 

        if (!empty($request->file('files'))) {
            $files = $request->file('files');
            $fileName = Str::random(20);
            $ext = strtolower($files->getClientOriginalExtension());
            $path = $fileName . '.' . $ext;
            $uploadPath = '/backend/files/';
            $upload_url = $uploadPath . $path;
            $files->move(public_path('/backend/files/'), $upload_url);
            $file_url = $uploadPath . $path;
            $data['thumnail_img'] = $file_url;
        }
        Product::where('id', $product_id)->update($data);
        // echo "update====$product_id";
        if (!empty($request->file('images'))) {
            foreach ($request->file('images') as $file) {
                $name = $file->getClientOriginalName();
                $dic_name = uniqid() . $name;
                $uploadPath = '/backend/files/';
                $file->move(public_path() . '/backend/files/', $dic_name);
                // $docs[] = $name;  
                $img_data['images']       = $uploadPath . $dic_name;
                $img_data['product_id']   = $product_id;
                DB::table('produc_img_history')->insert($img_data);
            }
        }
        //INSERT MULTIPLE CATEGORY
        $category     = $request->category;
        $dynamicArray = explode(',', $category); // Convert the string to an array
        $results      = Categorys::whereIn('id', $dynamicArray)->get();
        $formattedResults = [];
        foreach ($results as $result) {
            $path = [];
            $category = $result;
            while ($category) {
                array_unshift($path, $category->id);
                $category = $category->parent;
            }
            $formattedResults[] = [
                'product_id'   => $product_id,
                'category_id'  => $result->id,
                'parent_id'    => implode(',', $path)
            ];
        }
        DB::table('produc_categories')->insert($formattedResults);
        $resdata['product_id'] = $product_id;
        return response()->json($resdata);
        ///return response()->json(['message' => 'Product updated successfully'], 200);
    }

    public function save(Request $request)
    {
        //dd($request->all());
        $validator = Validator::make($request->all(), [
            'name'           => 'required',
            'category'       => 'required',
            'price'          => 'required',
            // 'sku'            => 'required',
            'stock_qty'      => 'required|integer',
            'stock_mini_qty' => 'required|integer',
            'shipping_days'  => 'required',
            'status'         => 'required',
            'files' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // max:2048 is the maximum file size in kilobytes (2MB)
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));

        $data = array(
            'name'                       => $request->name,
            'slug'                       => $slug,
            'description'                => !empty($request->description) ? $request->description : "",
            'meta_title'                 => !empty($request->meta_title) ? $request->meta_title : "",
            'meta_description'           => !empty($request->meta_description) ? $request->meta_description : "",
            'meta_keyword'               => !empty($request->meta_keyword) ? $request->meta_keyword : "",
            'product_tag'                => !empty($request->product_tag) ? $request->product_tag : "",
            'brand'                      => !empty($request->brand) ? $request->brand : "",
            'sku'                        => !empty($request->sku) ? $request->sku : "",
            'external_link'              => !empty($request->external_link) ? $request->external_link : "",
            'cash_dev_status'            => !empty($request->cash_dev_status) ? $request->cash_dev_status : "",
            'price'                      => !empty($request->price) ? $request->price : 0,
            'unit'                       => !empty($request->unit) ? $request->unit : "",
            'stock_qty'                  => !empty($request->stock_qty) ? $request->stock_qty : "",
            'stock_mini_qty'             => !empty($request->stock_mini_qty) ? $request->stock_mini_qty : 0,
            'stock_status'               => !empty($request->stock_status) ? $request->stock_status : "",
            'manufacturer'               => !empty($request->manufacturer) ? (int) $request->manufacturer : "",
            'download_link'              => !empty($request->download_link) ? $request->download_link : "",
            'discount'                   => !empty($request->discount) ? $request->discount : "",
            'discount_status'            => !empty($request->discount_status) ? $request->discount_status : "",
            'shipping_days'              => !empty($request->shipping_days) ? $request->shipping_days : "",
            'free_shopping'              => !empty($request->free_shopping) ? $request->free_shopping : "",
            'flat_rate_status'           => !empty($request->flat_rate_status) ? $request->flat_rate_status : "",
            'flat_rate_price'            => !empty($request->flat_rate_price) ? $request->flat_rate_price : "",
            'vat'                        => !empty($request->vat) ? $request->vat : 0,
            'vat_status'                 => !empty($request->vat_status) ? $request->vat_status : "",
            'tax'                        => !empty($request->tax) ? $request->tax : 0,
            'tax_status'                 => !empty($request->tax_status) ? $request->tax_status : "",
            'status'                     => !empty($request->status) ? $request->status : "",
            'entry_by'                   => $this->userid
        );

        // dd($data);
        if (!empty($request->file('files'))) {
            $files = $request->file('files');
            $fileName = Str::random(20);
            $ext = strtolower($files->getClientOriginalExtension());
            $path = $fileName . '.' . $ext;
            $uploadPath = '/backend/files/';
            $upload_url = $uploadPath . $path;
            $files->move(public_path('/backend/files/'), $upload_url);
            $file_url = $uploadPath . $path;
            $data['thumnail_img'] = $file_url;
        }
        //INSERT PRODUCT
        $product_id = Product::insertGetId($data);

        //start additional product 
        $additional_data = array(
            'product_id'                 => $product_id,
            'referrance_product_id'      => !empty($request->referrance_product_id) ? $request->referrance_product_id : "",
            'add_product_qty'            => !empty($request->add_product_qty) ? $request->add_product_qty : "",
            'add_product_price'          => !empty($request->add_product_price) ? $request->add_product_price : "",
            'final_price'                => !empty($request->final_price) ? $request->final_price : "",
        );
        AdditionalProducts::insert($additional_data);
        //end additional product 

        if (!empty($product_id)) {
            $slug                  = "$slug-$product_id";
            DB::table('product')->where('id', $product_id)->update(['slug' => $slug]);
        }
        //INSERT MULTIPLE IMAGE
        if (!empty($request->file('images'))) {
            foreach ($request->file('images') as $file) {
                $name = $file->getClientOriginalName();
                $dic_name = uniqid() . $name;
                $uploadPath = '/backend/files/';
                $file->move(public_path() . '/backend/files/', $dic_name);
                // $docs[] = $name;  
                $img_data['images']       = $uploadPath . $dic_name;
                $img_data['product_id']   = $product_id;
                DB::table('produc_img_history')->insert($img_data);
            }
        }

        //insert ticket (category=27) ----
        $categoryId =  (int) $request->category;
        if ($categoryId == 27) {
            $stockQty = $request->stock_qty;
            $maxValue = TicketHistory::max('id');
            $counter = ($maxValue) ? (int) $maxValue : 0;
            for ($i = 0; $i < $stockQty; $i++) {
                $counter++;
                $formattedNumber = sprintf('%09d', $counter);
                TicketHistory::create([
                    'product_id' => $product_id,
                    'status' => 1,
                    'ticket_number' => $formattedNumber, // Example of generating a random number between 1000 and 9999
                ]);
            }
        }

        //INSERT MULTIPLE CATEGORY
        $category     = $request->category;
        $dynamicArray = explode(',', $category); // Convert the string to an array
        $results      = Categorys::whereIn('id', $dynamicArray)->get();
        $formattedResults = [];
        foreach ($results as $result) {
            $path = [];
            $category = $result;
            while ($category) {
                array_unshift($path, $category->id);
                $category = $category->parent;
            }
            $formattedResults[] = [
                'product_id'   => $product_id,
                'category_id'  => $result->id,
                'parent_id'    => implode(',', $path)
            ];
        }
        DB::table('produc_categories')->insert($formattedResults);
        $resdata['product_id'] = $product_id;
        return response()->json($resdata);
    }

    public function insertVarientGroup(Request $request)
    {

        $varrients = $request->input('varrient');
        //dd($request->all());     
        foreach ($varrients as $key => $varrientData) {
            $v_id = $varrientData['varient_id'];
            $find = ProductVarrient::where('id', $v_id)->first();
            $vid = $find->id;
            if (!empty($find)) {
                //start validation
                $validator = Validator::make($varrientData, [
                    "sku" => 'required',
                    "qty" => 'required|min:1',
                    "price" => 'required|min:0',
                    //"file" => 'required|image|mimes:jpeg,png,jpg,gif', // Adjust allowed file types and maximum size as needed
                ]);
                if ($validator->fails()) {
                    return response()->json(['errors' => $validator->errors()], 422);
                }
                //end validation 

                $v_data['sku']   = $varrientData['sku'];
                $v_data['qty']   = $varrientData['qty'];
                $v_data['price'] = $varrientData['price'];
                if ($request->hasFile("varrient.$key.file")) {
                    $file = $request->file("varrient.$key.file");
                    $uniqueFileName = Str::random(40) . '.' . $file->getClientOriginalExtension();
                    $ext = strtolower($file->getClientOriginalExtension());
                    //$path = $uniqueFileName . '.' . $ext;
                    $path = $uniqueFileName;
                    $uploadPath = '/backend/files/';
                    $upload_url = $uploadPath . $path;
                    $file->move(public_path('/backend/files/'), $upload_url);
                    $file_url = $uploadPath . $path;
                    //$data['image'] = $file_url;
                    //$file->storeAs('uploads', $uniqueFileName);
                    $v_data['file'] = $file_url;
                }
                // echo '<pre>';
                // print_r($v_data);
                ProductVarrient::where('id', $vid)->update($v_data);
            }
        }
        return response()->json(['message' => 'Data updated successfully'], 200);
    }

    function generateUnique4DigitNumber($existingNumbers = [])
    {
        do {
            $uniqueNumber = str_pad(mt_rand(0, 9999), 4, '0', STR_PAD_LEFT);
        } while (in_array($uniqueNumber, $existingNumbers));

        return $uniqueNumber;
    }

    public function insertProductVarient(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'product_id'            => 'required|integer',
            'selectedHistoryValues' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $res     = $request->selectedHistoryValues;
        // dd($res);
        //array_shift($res);
        // Use array_filter to remove "undefined" values
        //$resultArray = array_filter($res, function ($value) {
        //return $value !== "undefined";
        //});
        $arr_val = $res; //implode(',', $resultArray);
        $resultArray =  explode(',', $arr_val); // $arr_val;
        //dd($resultArray);
        // unique number:
        $numbers = []; // An array to store existing numbers to check against
        $uniqueNumber      = $this->generateUnique4DigitNumber($numbers);
        $existingNumbers[] = $uniqueNumber . $request->product_id; // Add the generated number to the list
        $uniqueNum         = $existingNumbers[0];
        //find product for price
        $product = Product::find($request->product_id);

        $insertArr                        = new ProductVarrient();
        $insertArr->pro_attr_val_his_id   = $arr_val;
        $insertArr->product_id            = $request->product_id;
        $insertArr->sku                   = $uniqueNum;
        $insertArr->qty                   = 1;
        $insertArr->price                 = !empty($product->price) ? $product->price : 0;
        $insertArr->entry_by              = $this->userid;
        $insertArr->save();

        $pro_varient_id = $insertArr->id;
        foreach ($resultArray as $key => $val) {
            $findrow = AttributeValues::where('id', $val)->select('name')->first();
            //echo "$key=====$val.<br>";
            $insertArr                        = new ProductVarrientHistory();
            $insertArr->pro_attr_val_his_id   = $val;
            $insertArr->varient_name          = $findrow->name;
            $insertArr->pro_varient_id        = $pro_varient_id;
            $insertArr->product_id            = $request->product_id;
            $insertArr->save();
        }
        $msg['msg']     = "Insert successfully";
        return response()->json($msg);
    }
    public function insertProductAttrAndValues(Request $request)
    {
        // this merge button action
        $chkPost = ProductAttributes::where('product_id', $request->product_id)->where('attributes_id', $request->product_attribute_id)->first();
        if (empty($chkPost)) {
            $data = array(
                'product_id'                 => $request->product_id,
                'attributes_id'              => $request->product_attribute_id,
            );
            $product_attribute_id = ProductAttributes::insertGetId($data);
        } else {
            $product_attribute_id = $chkPost->attributes_id;
        }
        if (!empty($request->AttrValues)) {
            $arr_val = $request->AttrValues;
            foreach ($arr_val as $key => $v) {
                $newRecord                  = new ProductAttributeValue();
                $newRecord->product_att_value_id  = $v;
                $newRecord->attribute_id          = $request->product_attribute_id;
                $newRecord->product_attribute_id  = $product_attribute_id;
                $newRecord->product_id            = $request->product_id;
                $newRecord->save();
            }
        }
        $response = [
            'message' => 'Successfull',
        ];
        return response()->json($response);
    }
    public function getAttrHistory($id)
    {
        $product_id = (int) $id;
        $Attrdata = ProductAttributes::checkingAttrube($product_id);
        $formatedData = [];
        $categoriesData = $Attrdata; //Category::all(); // Assuming you have a Category model and table
        foreach ($categoriesData as $val) {
            $atthistory =  ProductAttributes::attribueHistory($val->attributes_id);
            $subcategoryNames = $atthistory;
            $formatedData[] = [
                'id'             => $val->id,
                'name'           => ucfirst($val->name),
                'value_history'  => $subcategoryNames,
            ];
        }
        return response()->json(array_values($formatedData));
        //dd($categoriess);
    }
    public function getVarientHistory(Request $request)
    {
        $product_id = $request->product_id;
        $arrData    = ProductVarrientHistory::getProductVarientHistory($product_id);
        //dd($arrData);
        $formatedData = [];
        foreach ($arrData as $Key => $value) {
            $formatedData[] = [
                'varient_id'       => $value->pro_varient_id,
                'sku'              => $value->sku,
                'price'            => $value->price,
                'qty'              => $value->qty,
                'file'             => $value->file,
                'showfile'         => !empty($value->file) ? url($value->file) : "",
                'product_id'       => $value->product_id,
                'path'             => $value->varient_name,
            ];
        }

        //dd($formatedData);
        return response()->json($formatedData);
    }
    public function deleteValrient(Request $request)
    {

        $data = ProductVarrient::find($request->varient_id);
        $data->delete();

        ProductVarrientHistory::where('pro_varient_id', $request->varient_id)->delete();
        return response()->json("Delete Varient");
    }

    public function additionaIMagesDelete(Request $request)
    {
        $images_id =  $request->images_id;
        ProductAdditionalImg::where('id', $images_id)->delete();
        return response()->json("Delete Images");
    }

    public function deleteCategory(Request $request)
    {

        // dd($request->all());
        $dynamicArray = explode(',', $request->item); // Convert the string to an array
        $lastElement  = trim(end($dynamicArray));
        $category_id  = Categorys::where('name', $lastElement)->select('id')->first();
        $row          = ProductCategory::where('category_id', $category_id->id)->where('product_id', $request->product_id)->first();

        if (!empty($row->category_id)) {
            ProductCategory::where('category_id', $row->category_id)->delete();
        }
        return response()->json("Delete Category Category ID: $row->category_id ");
    }

    public function productrow($id)
    {

        $category_row      = ProductCategory::where('product_id', $id)->first();
        $produCategory     = ProductCategory::where('product_id', $id)->get();
        $ticketHistory     = TicketHistory::where('product_id', $id)->get();
        $additionalProduct = AdditionalProducts::where('product_id', $id)
            ->select('product.name as product_name', 'additional_product.referrance_product_id', 'additional_product.add_product_qty', 'additional_product.add_product_price', 'additional_product.final_price')
            ->join('product', 'product.id', '=', 'additional_product.referrance_product_id')->first();

        $prodimages        = ProductAdditionalImg::where('product_id', $id)->select('images', 'id')->get();
        $prodImages        = Product::find($id);
        $addiImg = [];
        foreach ($prodimages as $v) {
            $addiImg[] = [
                'images'       => url($v->images),
                'id'           => $v->id,
            ];
        }
        $returnData = [];
        foreach ($produCategory as $key => $val) {
            $returnData[] = DB::select("SELECT GROUP_CONCAT(name SEPARATOR ', ') AS name,id FROM categorys WHERE id IN ($val->parent_id)");
        }
        $concatenated_names = [];
        foreach ($returnData as $inner_array) {
            foreach ($inner_array as $obj) {
                $concatenated_names[] = $obj->name;
            }
        }
        $resulting_string = implode("<br/>", $concatenated_names);
        $show_edit_cat = $concatenated_names; //implode("<br/>", $concatenated_names);
        //dd($resulting_string);
        $responseData['productImg']        = !empty($prodImages) ? url($prodImages->thumnail_img) : "";
        $responseData['product']           = Product::where('product.id', $id)->first();
        //dd($responseData['product']);
        $responseData['product_cat']        = $resulting_string;
        $responseData['product_edit_cat']   = $show_edit_cat;
        $responseData['product_imgs']       = $addiImg;
        $responseData['product_additional'] = $additionalProduct;
        $responseData['category_id']        = $category_row->category_id;
        $responseData['ticketHistory']      = $ticketHistory;
        //dd($responseData['ticketHistory']);
        return response()->json($responseData);
    }

    public function getTicketList()
    {

        $data = TicketHistory::orderBy('id', 'desc')
            ->select('ticket_history.id', 'ticket_history.product_id', 'product.name', 'ticket_history.ticket_number', 'ticket_history.orderId', 'ticket_history.status', 'ticket_history.customer_id', 'ticket_history.category_id', 'ticket_history.orderDate')
            ->join('product', 'product.id', '=', 'ticket_history.product_id')

            ->get();

        $formatedData = [];
        foreach ($data as $Key => $value) {
            $category =  Categorys::where('id', $value->category_id)->first();
            $formatedData[] = [
                'id'               => $value->id,
                'product_id'       => $value->product_id,
                'name'             => $value->name,
                'ticket_number'    => $value->ticket_number,
                'orderId'          => $value->orderId,
                'status'           => $value->status,
                'customer_id'      => $value->customer_id,
                'orderDate'        => $value->orderDate,
                'category_name'    => !empty($category->name) ? $category->name : "",
                'category_id'      => !empty($category->category_id) ? $category->category_id : "",
            ];
        }
        //dd($formatedData);
        return response()->json($formatedData);
    }

    public function getProductList()
    {
        $data = Product::orderBy('id', 'desc')
            ->select('product.id', 'product.name', 'product.stock_qty', 'product.sell_qty', 'product.status', 'produc_categories.category_id')
            ->join('produc_categories', 'produc_categories.product_id', '=', 'product.id')
            ->get();

        $collection = collect($data);
        $groupedCollection = $collection->groupBy('id');
        $modifiedCollection = $groupedCollection->map(function ($group) {

            $firstItem = $group->first();

            $total_tickets  = TicketHistory::where('product_id', $firstItem['id'])->count();
            $total_selling  = TicketHistory::where('product_id', $firstItem['id'])->whereNotNull('orderId')->count();
            $current_stock  = ($total_tickets - $total_selling);


            if ($firstItem['category_id'] == 27) {
                $tsell = !empty($total_selling) ? $total_selling : 0;
                $cstock = $current_stock;
            } else {
                $tsell = "";
                $cstock = "";
            }


            return [
                'id'              => $firstItem['id'],
                'name'       => substr($firstItem['name'], 0, 250),
                'stock_qty'  => !empty($total_tickets) ? $total_tickets : "",
                'sell_qty'   => $tsell,
                'currentstock'   => $cstock,
                'category_id' => $firstItem['category_id'],
                'status'     => $firstItem['status'],
            ];
        })->values(); // Use values() to reset keys if needed
        return response()->json($modifiedCollection, 200);
    }

    public function removeProducts($id)
    {
        //echo $id;exit; 
        if (!empty($id)) {
            /*
            Product::where('id', $id)->delete();
            ProductAttributes::where('product_id', $id)->delete();
            ProductAttributeValue::where('product_id', $id)->delete();
            ProductVarrient::where('product_id', $id)->delete();
            ProductVarrientHistory::where('product_id', $id)->delete();
            ProductCategory::where('product_id', $id)->delete();
            ProductAdditionalImg::where('product_id', $id)->delete();
            */
        }
        return response()->json("successfully delete product", 200);
    }

    public function autocompleteSearch(Request $request)
    {
        $query = $request->input('query');
        $suggestions = Product::join('produc_categories', 'product.id', '=', 'produc_categories.product_id')
            ->join('categorys', 'produc_categories.category_id', '=', 'categorys.id')
            ->select('product.id', 'product.name', 'product.stock_qty', 'product.price')
            ->where('product.name', 'like', '%' . $query . '%')
            ->where('produc_categories.category_id', 27)
            ->get();
            return response()->json($suggestions);
    }

    public function summaryReportTickets()
    {

        $data = ProductCategory::orderBy('product.id', 'desc')
            ->select(
                'product.id',
                'product.name',
                'produc_categories.category_id',
            )
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->leftJoin('ticket_history', 'ticket_history.product_id', '=', 'product.id')
            ->where('produc_categories.category_id', 27)
            ->groupBy('product.id', 'product.name', 'produc_categories.category_id')
            ->get();

        $formattedData = [];
        foreach ($data as $key => $value) {
            $total_tickets  = TicketHistory::where('product_id', $value->id)->count();
            $total_selling  = TicketHistory::where('product_id', $value->id)->whereNotNull('orderId')->count();
            $current_stock  = ($total_tickets - $total_selling);
            $formattedData[] = [
                'id'               => $value->id,
                'name'             => $value->name,
                'category_id'      => $value->category_id,
                'total_tickets'    => $total_tickets,
                'total_selling'    => $total_selling,
                'current_stock'    => $current_stock,
            ];
        }
        //dd($formattedData);
        return response()->json($formattedData);
    }
}
