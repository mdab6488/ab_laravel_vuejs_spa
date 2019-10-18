<template>
    <div class="margin-bottom">
        <section class="hero is-link is-medium">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <p class="title">
                        Scoped Slots
                    </p>
                </div>
            </div>
        </section>
        <div class="container">
            <!-- <menu-list :items="['one', 'two', 'three']"></menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']">
                Overrited Data
            </menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']"></menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']">
                <h5>Ovverriting Content</h5>
            </menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']">
                <template v-slot="props">
                    <h2 v-text="props.item"></h2>
                </template>
            </menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']">
                <template v-slot="data">
                    <h2 v-text="data.item"></h2>
                </template>
            </menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']">
                <template v-slot="props">
                    <h2 v-text="props.bar"></h2>
                </template>
            </menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']">
                <template v-slot="{ bar }">
                    <h2 v-text="bar"></h2>
                </template>
            </menu-list> -->
            <!-- <menu-list :items="['one', 'two', 'three']">
                <template v-slot="props">
                    <div>
                        <em v-text="props.item"></em>
                    </div>
                </template>
            </menu-list> -->
            <menu-list :items="['one', 'two', 'three']">
                <template v-slot:menu-item="props">
                    <b>Scoped Slots: </b>
                    <div>
                        <pre v-text="props.item"></pre>
                    </div>
                    <br>
                </template>
            </menu-list>
        </div>
    </div>
</template>
