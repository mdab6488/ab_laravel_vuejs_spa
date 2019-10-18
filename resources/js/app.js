import './bootstrap';

import router from './routes';

Vue.component(
    'menu-list',
    require('./components/menu-list-scoped.vue').default
);

const app = new Vue({
    el: '#app',

    router,
});
