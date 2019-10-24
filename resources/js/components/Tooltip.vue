// npm install tooltip.js
<template>
    <div>
        <div ref="body" v-show="false"><slot></slot></div>
    </div>
</template>

<script>
    import PoperTooltip from 'tooltip.js';
    export default {
        props: {
            name: {},
            placement: {
                default: 'top',
            },
            offset: {
                default: false
            }
        },

        mounted() {
            document.querySelectorAll(`[data-tooltip-name=${this.name}]`)
            .forEach(elem => {
                console.log(this.$refs.body.innerHTML);
                new PoperTooltip(elem, {
                    placement: this.placement,
                    title: this.$refs.body.innerHTML,
                    html: true,
                    offset: this.offset,
                });
            });
        },
    }
</script>

<style lang="scss">

</style>
