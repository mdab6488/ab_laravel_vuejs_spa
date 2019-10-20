// npm i --save lodash
<template>
    <div class="margin-bottom">
        <section class="hero is-link is-medium">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <p class="title">
                        Testimonials | components
                    </p>
                </div>
            </div>
        </section>
        <div class="container has-text-centered margin-bottom-70">
            <h1 class="title is-1 margin-bottom">Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h1>
            <div class="testimonials">
                <div class="left">
                    <ul>
                        <!-- The Difference Between Debounce and Throttle -->
                        <!-- <li :id="`testimonial-${++index}`"
                            v-for="(review, index) in reviews"
                            @mouseover="UpdatefeaturedReviews(review)">
                            <img :src="review.avater" :alt="review.name">
                        </li> -->
                        
                        <!-- Raguler Maybe -->
                        <li :id="`testimonial-${++index}`"
                            v-for="(review, index) in reviews"
                            @mouseover="UpdatefeaturedReviews(review)"
                            @mouseout="clearTimer"
                            :class="featuredReviews.id === review.id ? 'active' : 'in-active'">
                            <!-- <img 
                                :src="`/images/reviews/${review.avater}`" :alt="review.name"> -->
                            <img :src="review.avater" :alt="review.name">
                        </li>
                    </ul>
                </div>
                <div class="right">
                    <div class="review-user-infos">
                        <img 
                            :src="featuredReviews.avater"
                            :alt="featuredReviews.name">
                        <h5 v-text="featuredReviews.name"></h5>
                        <p v-text="featuredReviews.description"></p>
                        <button class="button is-rounded is-primary">
                            More Testimonials
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="columns">
            <div class="column">
            </div>
            <div class="column is-four-fifths">
                <div class="add-to-review">
                    <!-- add to stream form -->
                    <add-to-review @completed="addReviews"></add-to-review>
                </div>
            </div>
            <div class="column">
            </div>
        </div>
    </div>
</template>


<script>
    import _ from 'lodash';

    import Reviews from '../models/Reviews';

    import AddToReview from '../components/AddToReview';

    export default {
        components: {
            AddToReview,
        }, 
        
        data() {
            return {
                reviews: [],
                featuredReviews: {},
                timer: null,
            }
        },

        created() {
             //fire of an ajax request
            Reviews.all(reviews => {
                this.reviews = reviews;
                this.featuredReviews = reviews[0];
            });
        },

        methods: {
            addReviews(review) {
                this.reviews.unshift(review);

                alert('Your Review Added To The Stream!');

                window.scrollTo(0, 0);
            },

            // The Difference Between Debounce and Throttle
            // UpdatefeaturedReviews: _.debounce(function(reviews) {
            //     console.log('called' + reviews.name + "'s");
            //     this.featuredReviews = reviews;
            // }, 2000),

            // UpdatefeaturedReviews: _.throttle(function(reviews) {
            //     console.log('called' + reviews.name + "'s");
            //     this.featuredReviews = reviews;
            // }, 2000),

            // Regular (Maybe)
            UpdatefeaturedReviews(reviews) {
                this.timer = setTimeout(() => {
                    // console.log('Updating: ' + reviews.name + "'s");
                    this.featuredReviews = reviews;
                }, 250);
            },

            clearTimer() {
                clearTimeout(this.timer);
            },
        },
    }
</script>
