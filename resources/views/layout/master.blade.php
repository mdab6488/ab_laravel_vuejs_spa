<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>My App</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
        <link rel="stylesheet" href="/css/app.css">
        <!-- Styles -->

    </head>
    <body>
        <div class="main">
            <div id="app">
                <nav class="navbar menu-border" role="navigation" aria-label="main navigation">
                    <div class="navbar-brand">
                        <a class="navbar-item" href="https://bulma.io">
                            My App
                        </a>

                        <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                            <span aria-hidden="true"></span>
                            <span aria-hidden="true"></span>
                            <span aria-hidden="true"></span>
                        </a>
                    </div>
                    <div id="navbarBasicExample" class="navbar-menu">
                        <div class="navbar-start">
                            <router-link tag="li" to="/" exact>
                                <a class="navbar-item">Home</a>
                            </router-link>
                            <router-link tag="li" to="/about">
                                <a class="navbar-item">About</a>
                            </router-link>
                            <router-link tag="li" to="/contact">
                                <a class="navbar-item">Contact</a>
                            </router-link>
                        </div>
                    </div>
                </nav>
                <div class="container">
                    <router-view></router-view>
                </div>
            </div>
        </div>
        <script src="/js/app.js"></script>
    </body>
</html>
