<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
        /**
     * displays contact page
     *
     * @return \Illuminate\View\View
     */
    public function contact()
    {
        $randomInteger1 = substr(mt_rand(),0,2);
        $randomInteger2 = substr(mt_rand(),0,1);

        $captchaQuestion = sprintf('What is %s + %s?', $randomInteger1, $randomInteger2);
        $captchaAnswer = $randomInteger1 + $randomInteger2;

        Session::put('captcha_answer', $captchaAnswer);

        return view('pages.contact', compact('captchaQuestion'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

		return Contact::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		//Validation
		$this->validate($request, [
			'name' => 'required',
			'email' => 'required',
			'question' => 'required',
			'verification' => [
                'required',
                function ($attribute, $value, $fail) {
                    if ( $value != 5) {
                        $fail('This Selected ' . $attribute .' is invalid.');
                    }
                },
            ],
		]);

		//Create The User
		return Contact::create($request->all());

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
