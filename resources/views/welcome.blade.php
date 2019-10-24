@extends('layout.master')
@section('content')
    @include('nav.index')
    <router-view></router-view>

    <div class="container text-center has-text-centered margin-bottom">
        <h3>Option No: 1</h3>
        <p>
            Hello There,
            <span
                data-tooltip="i am a tooltip"
                data-tooltip-placement="right">
                Hover Over Me
            </span>
        </p>
        <br>
        <br>
        <h3>Option No: 2</h3>
        <p>
            Hello There,
            <span v-tooltip:top="'Here Fucking Javascript Expression'">
                Hover Over Me
            </span>
        </p>
        <br>
        <br>
        <h3>Option No: 3</h3>
        <p>
            Hello There,
            <span data-tooltip-name="our-product-tooltip">
                Learn About Our Products
            </span>
        </p>

        <tooltip name="our-product-tooltip" offset="0, 50">
            <div class="p-30">
                <h1>Our Products</h1>
                <p>
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Suscipit cupiditate porro
                </p>
            </div>
        </tooltip>
    </div>
@endsection
