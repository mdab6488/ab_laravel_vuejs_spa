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
    {
        path: '/testimonials_components',
        component: require('./views/TestimonialComp').default,
    },
    {
        path: '/mega_menus_on_to_one_relationship',
        component: require('./views/MegaMenu').default,
    },
];

export default new VueRouter({
    routes,
    linkActiveClass: 'is-active',
});
