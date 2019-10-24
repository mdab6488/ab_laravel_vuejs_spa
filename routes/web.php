<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	return view('welcome');
});

// Route::get('/statues', function () {
// 	return App\Status::with('user')->latest()->get();
// });

Route::get('/statues', 'StatusController@index');
Route::post('/statues', 'StatusController@store');

Route::get('/reviews', 'ReviewsController@index');
Route::post('/reviews', 'ReviewsController@store');

Route::get('/series', 'SeriesController@index');
// Route::get('/series/{id}', 'SeriesController@show');
// Route::post('/series', 'SeriesController@store');


Route::get('/contact', 'ContactController@index');
Route::post('/contact', 'ContactController@store');

Route::get('/faq', 'AccordionController@index');
