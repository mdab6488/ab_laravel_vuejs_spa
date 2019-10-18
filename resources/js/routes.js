/* eslint-disable global-require */
/* eslint-disable import/no-unresolved */
import VueRouter from 'vue-router';

const routes = [
    {
        path: '/',
        component: require('./views/Home').default,
    },
    {
        path: '/scopedslots',
        component: require('./views/ScopedSlots').default,
    },
    {
        path: '/carousel',
        component: require('./views/Carousel').default,
    },
];

export default new VueRouter({
    routes,
    linkActiveClass: 'is-active',
});
