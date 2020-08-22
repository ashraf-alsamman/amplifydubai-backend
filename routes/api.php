<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->post('/user', function (Request $request) {
    return $request->user();
});


            Route::middleware('auth:api')->group( function(){
                
            Route::post('GetTeams', 'FixtureController@GetTeams') ;
            Route::post('GetFixtures', 'FixtureController@GetFixtures') ;
            Route::post('AddFixtures', 'FixtureController@AddFixtures') ;
            Route::post('SetScores', 'FixtureController@SetScores') ;
            Route::post('LeagueTable', 'FixtureController@LeagueTable') ;

            Route::post('validate-token',  function (Request $request) {  return ['data' => 'valid','user'=>$request->user()]; }) ;


       
} );

Route::post('/register', 'AuthController@register');
Route::post('/login', 'AuthController@login');


 