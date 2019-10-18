<template>
    <div>
        <slot></slot>
    </div>
</template>

<script>
    import Flickity from 'flickity';
    import 'flickity/dist/flickity.min.css';

    export default {
        props: {
            wraparound: { default: true },
            freescroll: { default: false },
            groupcells: { default: false },
            autoplay: { default: false },
            lazyload: { default: false },
            parallax: { default: false },
        },

        mounted() {
            new Flickity(this.$el, {
                // options
                cellAlign: 'left',
                contain: true,
                wrapAround: this.wraparound,
                freeScroll: this.freescroll,
                groupCells: this.groupcells,
                autoPlay: this.autoplay,
                lazyLoad: this.lazyload,
                Parallax: this.parallax,
            });
        },
    }
</script>