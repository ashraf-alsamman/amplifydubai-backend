<?php

namespace App\Http\Controllers;
 
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class AuthController extends Controller
{
    public function register(Request $request)
    {
         $validatedData = $request->validate([
                                    'name'=>'required|max:55',
                                    'email'=>'email|required|unique:users',
                                    'password'=>'required'
         ]);
 
         $validatedData['password'] = bcrypt($request->password);
 
         $user = User::create($validatedData);
 

                $uploadedFile = $request->file('logo');
                $filename = time().'.'.$uploadedFile->getClientOriginalExtension();

            Storage::disk('local')->putFileAs(
            'files/',
            $uploadedFile,
            $filename
            );

             $user->logo=$filename;
             $user->save();
         $accessToken = $user->createToken('authToken')->accessToken;

         return response(['user'=> $user, 'access_token'=> $accessToken]);
        
    }
 
 
    public function login(Request $request)
    {
         $loginData = $request->validate([
             'email' => 'email|required',
             'password' => 'required'
         ]);
        
         if(!auth()->attempt($loginData)) {
             return response(['message'=>'Invalid']);
         }
 
         $accessToken = auth()->user()->createToken('authToken')->accessToken;
 
         return response(['user' => auth()->user(), 'access_token' => $accessToken]);
 
    }
}
