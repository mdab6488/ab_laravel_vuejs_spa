<template>
    <div>
        <slot></slot>
    </div>
</template>

<script>
    import {throttle} from 'lodash';

    export default {
                // mounted() {
        //     let bar = this.$refs['menu-meta'];
        //     let originalOffsetTop = this.$refs['menu-meta'].offsetTop;

        //     window.addEventListener(
        //         'scroll', 
        //         throttle(function() {
        //             console.log('it was called');
        //             if(window.scrollY >= originalOffsetTop){
        //                 bar.classList.add('active');
        //             }else{
        //                 bar.classList.remove('active');
        //             }
        //         }, 300)
        //     );
        // },

        mounted() {
            let el = this.$el;
            let originalOffsetTop = this.$el.offsetTop;

            window.addEventListener(
                'scroll', 
                throttle(function() {
                    el.classList[
                        window.scrollY >= originalOffsetTop ? 'add' : 'remove'
                    ]('is_sticky');
                }, 300)
            );
        },
    }
</script>