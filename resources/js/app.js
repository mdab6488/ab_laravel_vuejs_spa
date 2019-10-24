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

Vue.component('accordion', require('./components/accordion.vue').default);

Vue.component('pinned', require('./components/Pinned.vue').default);

import PoperTooltip from 'tooltip.js';

Vue.directive('tooltip', {
    bind(elem, bindings) {
        // console.log(bindings);
        new PoperTooltip(elem, {
            placement: bindings.arg,
            title: bindings.value,
        });
    },
});

Vue.component('tooltip', require('./components/Tooltip.vue').default);

const app = new Vue({
    el: '#app',

    router,

    mounted() {
        document.querySelectorAll('[data-tooltip]').forEach(elem => {
            // console.log(elem.dataset);
            new PoperTooltip(elem, {
                placement: elem.dataset.tooltipPlacement || 'top',
                title: elem.dataset.tooltip,
            });
        });
    },
});
