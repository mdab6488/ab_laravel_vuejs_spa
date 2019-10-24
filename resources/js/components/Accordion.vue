<!-- 
==========
Good
==========
-->
<!-- 
<template>
    <div>
        <div class="accordion">
            <div class="columns">
                <div class="column is-1 is-offset-3 has-text-centered">
                    <div class="question">
                        <button
                            @click="isOpen = ! isOpen">
                            <svg v-if="isOpen" xmlns="http://www.w3.org/2000/svg" width="12" height="16" viewBox="0 0 12 16" class="tw-fill-current">
                                <path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/>
                            </svg>

                            <svg v-else xmlns="http://www.w3.org/2000/svg" width="12" height="16" viewBox="0 0 12 16" class="tw-fill-current">
                                <path d="M12 9H7v5H5V9H0V7h5V2h2v5h5z"/>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="column is-6">
                    <div class="answer">
                        <h3 v-text="question.question"
                            class=""
                            @click="isOpen = ! isOpen"
                        ></h3>

                        <div v-html="question.answer" v-show="isOpen"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['question'],

        data() {
            return {
                isOpen: false
            };
        }
    };
</script>
-->

<!-- 
==========
Better 
==========
-->
<!--
<template>
    <div>
        <div class="accordion">
            <div class="columns">
                <div class="column is-1 is-offset-3 has-text-centered">
                    <div class="question">
                        <button
                            @click="isOpen = ! isOpen">
                            <svg v-if="isOpen" xmlns="http://www.w3.org/2000/svg" width="12" height="16" viewBox="0 0 12 16" class="tw-fill-current">
                                <path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/>
                            </svg>

                            <svg v-else xmlns="http://www.w3.org/2000/svg" width="12" height="16" viewBox="0 0 12 16" class="tw-fill-current">
                                <path d="M12 9H7v5H5V9H0V7h5V2h2v5h5z"/>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="column is-6">
                    <div class="answer">
                        <h3 v-text="title"
                            class=""
                            @click="isOpen = ! isOpen"
                        ></h3>

                        <div v-html="body" v-show="isOpen"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['title', 'body'],
        data() {
            return {
                isOpen: false
            };
        }
    };
</script>
-->

<!-- 
==========
Best
==========
-->
<template>
    <div>
        <accordion-item
        v-for="(item, index) in items"
        :item="item"
        :key="index"
        :isOpen="activeItemIndex == index"
        @toggled="Ontoggled">
        </accordion-item>
    </div>
</template>

<script>
    import AccordionItem from './AccordionItem.vue'
    
    export default {
        props: ['items'],

        data() {
            return {
                activeItemIndex: null
            }
        },
        
        components: {
            AccordionItem
        },

        methods: {
            Ontoggled(index) {
                if(this.activeItemIndex == index) {
                    return this.activeItemIndex = null;
                }
                this.activeItemIndex = index;
            }
        },
    };
</script>