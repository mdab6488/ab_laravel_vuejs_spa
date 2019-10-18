<template>
    <div>
        <ul>
            <!-- <li v-for="item in items" v-text="item"></li> -->
            <!-- <li v-for="item in items">
                <slot>Default Data</slot>
            </li> -->
            <!-- <li v-for="item in items">
                <slot>{{ item }}</slot>
            </li> -->
            <!-- <li v-for="item in items">
                <slot :item="item">{{ item }}</slot>
            </li> -->
            <!-- <li v-for="item in items">
                <slot thing="foo" bar="bar">{{ item }}</slot>
            </li> -->
            <!-- <li v-for="item in items">
                <slot :item="item">{{ item }}</slot>
            </li> -->
            <li v-for="item in items">
                <slot name="menu-item" :item="item">{{ item }}</slot>
            </li>
        </ul>
    </div>
</template>

<script>
    export default {
        props: ['items'],
    }
</script>
