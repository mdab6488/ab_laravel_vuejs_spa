@extends('layout.master')
@section('content')
    <div class="container">
        <header class="has-text-centered section-padding">
            <h1>FAQ</h1>
            <p>It's okay. From time to time, we all have questions.</p>
        </header>

        <accordion :items="{{ $accordions }}"></accordion>

        <footer class="has-text-centered section-padding">
            <a href="/" class="button is-primary">Home</a>
        </footer>
    </div>
@endsection
