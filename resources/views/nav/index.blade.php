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
            <router-link tag="li" to="/scopedslots">
                <a class="navbar-item">Scoped Slots</a>
            </router-link>
            <router-link tag="li" to="/carousel">
                <a class="navbar-item">Carousel</a>
            </router-link>
            <router-link tag="li" to="/testimonials_components">
                <a class="navbar-item">Ts Comp</a>
            </router-link>
            <series-dropdown></series-dropdown>
            <support-button></support-button>
        </div>
    </div>
</nav>

<portal-target name="nav-after"></portal-target>
