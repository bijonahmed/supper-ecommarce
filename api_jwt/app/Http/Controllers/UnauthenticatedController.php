<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\Product;
use App\Models\Sliders;
use App\Models\ProductAdditionalImg;
use App\Models\ProductCategory;
use App\Models\Categorys;
use App\Models\ProductAttributes;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use App\Models\Attribute;
use Illuminate\Support\Facades\Hash;
use DB;
use File;
use PhpParser\Node\Stmt\TryCatch;
use function Ramsey\Uuid\v1;

class UnauthenticatedController extends Controller
{
    protected $frontend_url;
    protected $userid;

    public function allCategory(Request $request)
    {
        $categories = Categorys::with('children.children.children.children.children')->where('parent_id', 0)->get();
        return response()->json($categories);
    }

    public function limitedProducts()
    {

        $data = Product::orderBy('id', 'desc')->select('id', 'name', 'thumnail_img', 'slug')->limit(12)->get();
        //dd($data);
        $collection = collect($data);
        $modifiedCollection = $collection->map(function ($item) {
            return [
                'id'        => $item['id'],
                'name'      => substr($item['name'], 0, 20),
                'thumnail'  => !empty($item->thumnail_img) ? url($item->thumnail_img) : "",
                'slug'        => $item['slug'],
            ];
        });
        //dd($modifiedCollection);
        return response()->json($modifiedCollection, 200);
    }

    public function topSellProducts()
    {
        $data = Product::orderBy('id', 'desc')->select('id', 'name', 'thumnail_img', 'slug')->limit(12)->get();
        foreach ($data as $v) {
            $result[] = [
                'id'   => $v->id,
                'name' => substr($v->name, 0, 12) . '...',
                'thumnail'  => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'     => $v->slug,
            ];
        }

        // dd($result);
        return response()->json($result, 200);
    }

    public function findProductSlug($slug)
    {

        $data['prodAttr'] = Attribute::where('status', 1)->get();

        $data['pro_row']  = Product::where('product.slug', $slug)
            ->select('product.id', 'product.id as product_id', 'product.name', 'product.slug as pro_slug', 'product.thumnail_img', 'description', 'product.price', 'product.discount', 'product.stock_qty', 'product.stock_mini_qty')
            ->first();

        $product_chk       = Product::where('product.slug', $slug)
            ->select('product.id', 'product.id as product_id', 'product.name', 'product.slug as pro_slug', 'product.thumnail_img', 'description', 'product.price', 'product.discount', 'product.stock_qty', 'product.stock_mini_qty')
            ->get();
        $products = [];
        foreach ($product_chk as $key => $v) {
            $products[] = [
                'id'           => $v->id,
                'product_id'   => $v->product_id,
                'product_name' => $v->pro_name,
                'discount'     => $v->discount,
                'price'        => number_format($v->price, 2),
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->pro_slug,

            ];
        }
        $findproductrow   = $data['pro_row'];

        $insertimg['product_id'] = $findproductrow->id;
        $insertimg['images'] = $findproductrow->thumnail_img;

        $chkpoings  = ProductAdditionalImg::where('product_id', $findproductrow->id)->where('images', $findproductrow->thumnail_img)->first();
        // dd($chkpoings);
        if (empty($chkpoings)) {
            ProductAdditionalImg::create($insertimg);
        }

        $data['att_img']   = ProductAdditionalImg::orderBy('id', 'desc')->where('product_id', $findproductrow->id)->get();

        $mul_slider_img = [];
        foreach ($data['att_img'] as $v) {
            $mul_slider_img[] = [
                'product_id' => $v->product_id,
                'thumnail' => !empty($v->images) ? url($v->images) : "", // Assuming thumnail_img is the correct column name
            ];
        }

        //  dd($mul_slider_img);
        $data['slider_img']    = !empty($mul_slider_img) ? $mul_slider_img : "";
        $data['featuredImage'] = url($findproductrow->thumnail_img);
        $data['product']       = $products;
        return response()->json($data, 200);
    }

    public function sellingFast()
    {
        //$data = Product::orderBy('id', 'desc')->select('id', 'name', 'thumnail_img', 'slug')->limit(12)->get();

        $category_id = 27; //for tickets categoryies id 27. 
        $data = productCategory::join('product', 'product.id', '=', 'produc_categories.product_id')
                ->where('produc_categories.category_id', '!=', $category_id)
                ->orderBy('product.id', 'desc')
                ->select('product.id', 'product.name', 'product.thumnail_img', 'product.slug', 'product.price', 'product.stock_qty')
                ->limit(12)
                ->groupby('product.id')
                ->get();

        foreach ($data as $v) {
            $result[] = [
                'id'   => $v->id,
                'name' => substr($v->name, 0, 50) . '...',
                'thumnail'  => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'     => $v->slug,
            ];
        }
        return response()->json($result, 200);
    }

    public function getTickets()
    {
       
        $category_id = 27; //for tickets categoryies id 27. 
        $data = productCategory::join('product', 'product.id', '=', 'produc_categories.product_id')
                ->where('produc_categories.category_id',$category_id)
                ->orderBy('product.id', 'desc')
                ->select('product.id', 'product.name', 'product.thumnail_img', 'product.slug', 'product.price', 'product.stock_qty')
                //->limit(12)
                ->get();

        foreach ($data as $v) {
            $result[] = [
                'id'        => $v->id,
                'name'      => substr($v->name, 0, 350) . '...',
                'thumnail'  => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'      => $v->slug,
                'price'     => $v->price,
                'stock_qty' => $v->stock_qty,
            ];
        }
        return response()->json($result, 200);
    }

    public function slidersImages()
    {
        $data = Sliders::where('status', 1)->get();

        foreach ($data as $v) {
            $result[] = [
                'id'           => $v->id,
                'images'       => !empty($v->images) ? url($v->images) : "",
                'redirect_url' => $v->redirect_url,
            ];
        }

        return response()->json($result, 200);
    }

    public function productCategory($category_id)
    {

        //echo $category_id;exit; 

        $categoryId = Categorys::where('parent_id', $category_id)->pluck('id')->toArray();
        $implodeCategory = implode(',', $categoryId);

        if ($category_id !== 'all') {
            $categoryId = Categorys::where('parent_id', $category_id)->pluck('id')->toArray();
            $implodeCategory = implode(',', $categoryId);
            $categoryIds = explode(',', $implodeCategory);

            $categorys = ProductCategory::join('product', 'product.id', '=', 'produc_categories.product_id')
                ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
                ->select('categorys.name as categoryname', 'produc_categories.product_id', 'product.name', 'product.price', 'product.slug', 'product.thumnail_img')
                ->whereIn('produc_categories.category_id', $categoryIds)
                ->orderByDesc('product.id')
                ->distinct() // Add this line to remove duplicate products
                ->get();
        } else {
            // Logic to fetch all products without the whereIn clause
            $categorys = ProductCategory::join('product', 'product.id', '=', 'produc_categories.product_id')
                ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
                ->select('categorys.name as categoryname', 'produc_categories.product_id', 'product.name', 'product.price', 'product.slug', 'product.thumnail_img')
                ->orderByDesc('product.id')
                ->groupby('product.id') // Add this line to remove duplicate products
                ->get();
        }

        //dd($categorys);
        $result = [];
        foreach ($categorys as $v) {
            $result[] = [
                'product_id'   => $v->product_id,
                'price'        => $v->price,
                'name'         => substr($v->name, 0, 12) . '...',
                'thumnail'     => !empty($v->thumnail_img) ? url($v->thumnail_img) : "",
                'slug'         => $v->slug,
                'category_name' => $v->categoryname,
            ];
        }

        $data['result']  = !empty($result) ? $result : "";
        return response()->json($data, 200);
    }

    public function filterCategory(Request $request)
    {
        $categories = Categorys::where('status', 1)->orderBy("name", "asc")->get();;
        return response()->json($categories);
    }

    public function sliders(Request $request)
    {
        $data = Sliders::where('status', 1)->orderBy("name", "asc")->get();;
        return response()->json($data);
    }

    public function filderProduct(Request $request)
    {
        $slug = $request->slug;
        $chkProNameRow   = Product::where('slug', $slug)->select('id', 'slug', 'name')->first();

        $prodata  = ProductCategory::where('product_id', $chkProNameRow->id)
            ->select('product.id', 'categorys.name as category_name', 'produc_categories.product_id', 'product.description', 'product.name as pro_name', 'produc_categories.category_id', 'thumnail_img', 'product.slug as pro_slug', 'product.download_link')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->first();
        //dd($prodata);
        $data['categoryname']  = $prodata->category_name;
        $data['description']   = $prodata->description;
        $data['download_link'] = $prodata->download_link;
        $data['product_name']  = substr($prodata->pro_name, 0, 12) . '...';
        $data['thumnail_img']  =  url($prodata->thumnail_img);
        return response()->json($data, 200);
    }

    public function getPaginatedData(Request $request)
    {

        $chkCategory = Categorys::where('slug', $request->slug)->select('id', 'parent_id', 'name', 'slug')->first();
        $proCategorys = ProductCategory::where('category_id', $chkCategory->id)
            ->select('product.id', 'product.discount', 'produc_categories.product_id', 'product.name as pro_name', 'produc_categories.category_id', 'description', 'price', 'thumnail_img', 'product.slug as pro_slug')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->paginate($request->input('perPage', 20));

        $result = [];
        foreach ($proCategorys as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->pro_name, 0, 12) . '...', //$v->pro_name, // Use the alias 'pro_name' here
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->pro_slug,
            ];
        }
        $data['result']        = $result;
        $data['pro_count']     = count($result);
        $data['categoryname']  = $chkCategory->name;
        $data['category_id']   = $chkCategory->parent_id;
        $data['category_slug'] = $chkCategory->slug;
        return response()->json($data, 200);
    }

    public function getProductrow(Request $request)
    {

        $products     = Product::where('slug', $request->slug)->select('product.counter', 'product.id', 'product.name', 'description', 'thumnail_img', 'product.download_link')->first();
        $proCategorys = ProductCategory::where('product_id', $products->id)
            ->select('categorys.id', 'categorys.name', 'categorys.slug')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->first();

        $data['product_name']  = !empty($products->name) ? $products->name : "";
        $data['description']   = !empty($products->description) ? $products->description : "";
        $data['thumnail_img']  = url($products->thumnail_img);
        $data['download_link'] = !empty($products->download_link) ? $products->download_link : "";
        $data['category_id']   = $proCategorys->id;
        $data['category_slug'] = $proCategorys->slug;
        $data['category_name'] = $proCategorys->name;
        $data['counter']       = $products->counter;

        $product = Product::find($products->id);
        $product->counter += 1250;
        //Product::where('id', $products->id)->update(['counter' => $updateCounter]);
        $product->save();

        //dd($data);
        return response()->json($data, 200);
    }

    public function defaultShowingProduct()
    {
        $products     = Product::where('status', 1)->select('product.id', 'product.name', 'description', 'thumnail_img', 'slug')->limit(8)->get();
        $result = [];
        foreach ($products as $key => $v) {
            $categoryName = ProductCategory::where('product_id', $v->id)->select('categorys.name as category_name')->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')->first();
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->name, 0, 12) . '...',
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,
                'category_name' => !empty($categoryName->category_name) ? $categoryName->category_name : "",
            ];
        }
        //dd($data);
        return response()->json($result, 200);
    }

    //filter category
    public function findCategorys($slug)
    {
        $chkCategory   = Categorys::where('slug', $slug)->select('id', 'slug', 'parent_id', 'name')->first();
        $proCategorys  = ProductCategory::where('category_id', $chkCategory->id)
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->select('product.id', 'product.download_link', 'produc_categories.product_id', 'product.name as pro_name', 'produc_categories.category_id', 'description', 'thumnail_img', 'product.slug as pro_slug')
            ->get();;

        $result = [];
        foreach ($proCategorys as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_id'   => $v->product_id,
                'name'         => $v->pro_name, // substr($v->pro_name, 0, 12) . '...',
                'p_name'       => $v->pro_name,
                'category_id'  => $v->category_id,
                'download_link' => $v->download_link,
                'thumnail'     => url($v->thumnail_img),
                'slug'         => $v->pro_slug,

            ];
        }

        $data['result']        = $result;
        $data['pro_count']     = count($result);
        $data['categoryname']  = $chkCategory->name;
        $data['category_slug'] = $chkCategory->slug;
        $data['category_id']   = $chkCategory->parent_id;
        //dd($data);
        return response()->json($data, 200);
    }

    //For Home Pages Load More....
    public function defaultShowingMoviesHome(Request $request)
    {
        $perPage = 24; // Update to load 10 products at a time
        $page = $request->input('page', 1);
        $categoryId = 19; // 4k Movies
        $skip = ($page - 1) * $perPage;
        $products = ProductCategory::where('category_id', $categoryId)
            ->select('product.id', 'categorys.name', 'product.slug', 'product.name as product_name', 'product.thumnail_img')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->skip($skip)
            ->take($perPage)
            ->get();

        $result = [];
        foreach ($products as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->product_name, 0, 12) . '...',
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,
            ];
        }
        return response()->json($result);
    }
    public function loadMorePagination(Request $request)
    {
        $chkCategory = Categorys::where('slug', $request->slug)->select('id', 'parent_id', 'name', 'slug')->first();
        //dd($chkCategory->id);
        $perPage = 12; // Change this to the number of items per page
        $page = $request->input('page', 1);
        $products = ProductCategory::where('category_id', $chkCategory->id)
            ->select('product.id', 'categorys.name', 'product.slug', 'product.name as product_name', 'product.thumnail_img', 'product.download_link')
            ->join('categorys', 'categorys.id', '=', 'produc_categories.category_id')
            ->join('product', 'product.id', '=', 'produc_categories.product_id')
            ->paginate($perPage, ['*'], 'page', $page);

        $result = [];
        foreach ($products as $key => $v) {
            $result[] = [
                'id'           => $v->id,
                'product_name' => substr($v->product_name, 0, 12) . '...',
                'p_name'       => $v->product_name,
                'download_link'       => $v->download_link,
                'thumnail_img' => url($v->thumnail_img),
                'pro_slug'     => $v->slug,
            ];
        }

        // dd($result);
        return response()->json(['data' => $result, 'meta' => $products]);
    }

    public function autocomplete(Request $request)
    {
        $query = $request->input('q');
        $results = Product::where('name', 'like', "%$query%")->select('name', 'id', 'slug')->limit(10)->get();
        $data = [];
        foreach ($results as $key => $v) {
            $productid = (int)$v->id;
            $chkcat = ProductCategory::where('product_id', $productid)->select('category_id')->first();
            //echo $chkcat->category_id."===<br>"; 
            $parent = Categorys::where('id', $chkcat->category_id)->select('parent_id')->first();

            $data[] = [
                'value' => $productid,
                'label' => $v->name,
                'slug'  => $v->slug,
                'parent_id' => !empty($parent->parent_id) ? $parent->parent_id : '',

            ];
        }
        //dd($results);
        return response()->json($data);
    }

    public function allsubCategory()
    {
        try {
            $categories =  Categorys::where('parent_id', '!=', 0)->where('file', '!=', '')->where('status', 1)->get();
            $collection = collect($categories);
            $modifiedCollection = $collection->map(function ($item) {
                return [
                    'id'         => $item['id'],
                    'slug'       => $item['slug'],
                    'name'       => $item['name'],
                    'thumnail'   => !empty($item->file) ? url($item->file) : "",
                    'status'     => $item['status'],

                ];
            });
            //dd($modifiedCollection);
            return response()->json($modifiedCollection, 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
