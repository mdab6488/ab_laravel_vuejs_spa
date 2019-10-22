import './bootstrap';

import router from './routes';

Vue.component(
    'menu-list',
    require('./components/menu-list-scoped.vue').default
);

Vue.component('carousal', require('./components/Carousel-slider.vue').default);

Vue.component(
    'series-dropdown',
    require('./components/SeriesDropdown.vue').default
);

Vue.component(
    'support-button',
    require('./components/SupportButton.vue').default
);

const app = new Vue({
    el: '#app',

    router,
});
