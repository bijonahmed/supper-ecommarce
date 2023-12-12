<?php
namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Countrys;
use Validator;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use DB;
class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register', 'showProfileData', 'updateprofile', 'updatePassword']]);
    }
    protected function validateLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|string',
            'password' => 'required|string',
        ]);
        
    }

     
    public function login(Request $request)
    {
        $this->validateLogin($request);
        $credentials = request(['email', 'password']);
        if (!$token = auth('api')->attempt($credentials)) {
            return response()->json([
                'errors' => [
                    'account' => [
                        "Invalid username or password"
                    ]
                ]
            ], 422);
        }
        return $this->respondWithToken($token);
    }



    public function register(Request $request)
    {
      // dd($request->all());
       $validator = \Validator::make($request->all(), [
            'fname'          => 'required',
            'lname'          => 'required',
            'phone_number'   => 'required|unique:users,phone_number',
            'date_of_birth'  => 'required',
            'gender'         => 'required',
            'nationality_id' => 'required',
            'email'          => 'required|unique:users,email',
            'password'       => 'required|min:2|confirmed', // Add the 'confirmed' rule
        ]);

        $validator->setCustomMessages([
            'fname.required'          => 'The first name is required.',
            'lname.required'          => 'The last name is required.',
            'phone_number.required'   => 'The phone number is required.',
            'date_of_birth.required'  => 'The date of birth is required.',
            'gender.required'         => 'The gender is required.',
            'nationality_id.required' => 'The nationality is required.',
            'email.required'          => 'The email is required.',
            'email.unique'            => 'The email has already been taken.',
            'password.required'       => 'The password is required.',
            'password.min'            => 'The password must be at least :min characters.',
            'password.confirmed'      => 'The password confirmation does not match.',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = User::create([

            'fname'            => $request->fname,
            'lname'            => $request->lname,
            'name'             => "$request->fname $request->lname",
            'date_of_birth'    => date("Y-m-d",strtotime($request->date_of_birth)),
            'gender'           => $request->gender,
            'phone_number'     => $request->phone_number,
            'nationality_id'   => $request->nationality_id,
            'email'            => $request->email,
            'role_id'          => 2,
            'status'           => 1,
            'show_password'    => $request->password,
            'password'         => bcrypt($request->password),
        ]);
        // Get the token
        $token = auth('api')->login($user);
        return $this->respondWithToken($token);
    }
    public function me()
    {
        return response()->json($this->guard('api')->user());
    }
    public function logout()
    {
        auth()->guard('api')->logout();
        return response()->json(['message' => 'Successfully logged out']);
    }
    public function refresh()
    {
        return $this->respondWithToken($this->guard('api')->refresh());
    }
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth('api')->factory()->getTTL() * 60
        ]);
    }
    public function guard()
    {
        return Auth::guard();
    }
    public function profile(Request $request)
    {
        $user = auth('api')->user();
        $this->validate($request, [
            'name' => 'required',
            'email' => "required|unique:users,email, $user->id",
            'password' => 'sometimes|nullable|min:8'
        ]);
        $user->update([
            'name' => $request->name,
            'email' => $request->email,
        ]);
        if ($request->password) {
            $user->update([
                'password' => bcrypt($request->password),
            ]);
        }
        return response()->json([
            'success' => true,
            'user' => $user
        ], 200);
    }
    public function updateprofile(Request $request)
    {
        $user = auth('api')->user();
        $authId = $user->id;
        $validator = \Validator::make($request->all(), [
            'fname'          => 'required',
            'lname'          => 'required',
            'phone_number'   => 'required',
            'email'          => 'required',

        ]);

        $validator->setCustomMessages([
            'fname.required'          => 'The first name is required.',
            'lname.required'          => 'The last name is required.',
            'phone_number.required'   => 'The phone number is required.',
            'email.required'          => 'The email is required.',
            'email.unique'            => 'The email has already been taken.',
            
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $name = "$request->fname $request->lname";
        $data = array(
            'id'                => $authId,
            'fname'             => !empty($request->fname) ? $request->fname : "",
            'lname'             => !empty($request->lname) ? $request->lname : "",
            'name'              => $name,
            'email'             => !empty($request->email) ? $request->email : "",
            'phone_number'      => !empty($request->phone_number) ? $request->phone_number : "",
            'nationality_id'    => !empty($request->nationality_id) ? $request->nationality_id : "",
            'date_of_birth'     => !empty($request->date_of_birth) ? date("Y-m-d",strtotime($request->date_of_birth)) : "",
            'country_residence' => !empty($request->country_residence) ? $request->country_residence : "",
           
        );
        if (!empty($request->file('file'))) {
            $documents = $request->file('file');
            $fileName = Str::random(20);
            $ext = strtolower($documents->getClientOriginalExtension());
            $path = $fileName . '.' . $ext;
            $uploadPath = '/backend/files/';
            $upload_url = $uploadPath . $path;
            $documents->move(public_path('/backend/files/'), $upload_url);
            $data['image'] = $upload_url;
        }
        //dd($data);
        DB::table('users')->where('id', $authId)->update($data);
        $response = [
            'imagelink' => !empty($user) ? url($user->image) : "",
            'message' => 'User successfully update'
        ];
        return response()->json($response);
    }

  
    public function showProfileData(Request $request)
    {
        $data = auth('api')->user();
        return response()->json([
            'data' => $data,
            'dataImg' => !empty($data->image) ? url($data->image) : "",
            'message' => 'User Profile Data'
        ]);
    }
    public function changesPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required|min:1|confirmed',
            'password_confirmation' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $id = auth('api')->user();
        $user = User::find($id->id);
        //dd($currentuser->username);
        $user->password = Hash::make($request->password);
        $user->show_password = $request->password;
        $user->save();
        $response = "Password successfully changed!";
        return response()->json($response);
    }
}