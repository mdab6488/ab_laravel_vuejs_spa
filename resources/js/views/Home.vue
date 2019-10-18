// npm install moment --save
<template>
    <div class="margin-bottom">
        <section class="hero is-link is-medium">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <p class="title">
                        Home Page
                    </p>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="box">
                <article class="media"
                            v-for="status in statues">
                    <div class="media-left">
                        <figure class="image is-64x64">
                            <img src="https://bulma.io/images/placeholders/128x128.png" alt="Image">
                        </figure>
                    </div>
                    <div class="media-content"> 
                        <div class="content">
                            <p>
                                <strong>{{status.user.name}}</strong>
                                <small>@johnsmith</small> 
                                <small>{{ status.created_at | ago | capitalize }}</small>
                                <br>
                                {{ status.body }}
                            </p>
                        </div>
                    </div>
                </article>
            </div>
            <div class="add-to-stream">
                <!-- add to stream form -->
                <add-to-stream @completed="addStatus"></add-to-stream>
            </div>
        </div>
    </div>
</template>

<script>
    // Vue Filter Data
    import moment from 'moment';
    import Status from '../models/Status'

    import AddToStream from '../components/AddToStream'

    export default {
        components: { AddToStream },

        data() {
            return {
                statues: [],
            }
        },

        filters: {
            ago(data) {
                return moment(data).fromNow();
            },
            capitalize(value) {
                return value.toUpperCase();
            }
        },

        created() {
            //fire of an ajax request
            Status.all(statues => this.statues = statues);
        },

        methods: {
            addStatus(status) {
                this.statues.unshift(status);

                alert('Your Status Added To The Stream!');

                window.scrollTo(0, 0);
            }
        },
    }


    // way-2
    // import moment from 'moment';
    // import Status from '../models/Status'
    // export default {
    //     data() {
    //         return {
    //             statues: [],
    //         }
    //     },

    //     created() {
    //         //fire of an ajax request
    //         Status.all(statues => this.statues = statues);
    //     },
        
    //     methods: {
    //         postedOn(status) {
    //             return moment(status.created_at).fromNow();
    //         }
    //     },
    // }
    
    // way-1
    // import moment from 'moment';
    // export default {
    //     data() {
    //         return {
    //             statues: [],
    //         }
    //     },

    //     created() {
    //         //fire of an ajax request
    //         axios.get('/statues')
    //             .then(({data}) => this.statues = data);
    //     },
        
    //     methods: {
    //         postedOn(status) {
    //             return moment(status.created_at).fromNow();
    //         }
    //     },
    // }
</script>
