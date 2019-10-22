<template lang="">
    <div>
        <li>
            <a class="navbar-item"
                @click="$modal.show('contact-support-model')">
                Contact Us
            </a>
        </li>
        <modal name="contact-support-model" class="model-ab" height="100%" width="100%"
                :pivotY="1"> 
            <div class="section-padding">
                <div class="has-text-centered">
                    <h1>Have a Question?</h1>
                    <br>
                </div>
                <div class="container">
                    <form autocomplete="off"
                        @submit.prevent="contactSupport"
                        @keydown="submitted = false">
                        <div class="field">
                            <div class="control">
                                <input 
                                    class="input" 
                                    type="text" 
                                    name="name" 
                                    placeholder="What's your name?"
                                    v-model="message.name"
                                    @keydown="delete errors.name"
                                    required>
                            </div>
                            <span 
                                class="help is-danger"
                                v-text="errors.name[0]"
                                v-if="errors.name">
                            </span>
                        </div>

                        <div class="field">
                            <div class="control">
                                <input 
                                    class="input" 
                                    type="text" 
                                    name="email" 
                                    placeholder="Which email address should we respond to?"
                                    v-model="message.email"
                                    @keydown="delete errors.email"
                                    required>
                            </div>
                            <span 
                                class="help is-danger"
                                v-text="errors.email[0]"
                                v-if="errors.email">
                            </span>
                        </div>

                        <div class="field">
                            <div class="control">
                                <textarea 
                                    class="textarea" 
                                    name="question" 
                                    placeholder="What's your question?"
                                    v-model="message.question"
                                    @keydown="delete errors.question"
                                    data-autosize
                                    required></textarea>
                            </div>
                            <span 
                                class="help is-danger"
                                v-text="errors.question[0]"
                                v-if="errors.question">
                            </span>
                        </div>

                        <div class="field">
                            <div class="control">
                                <input 
                                    class="input" 
                                    type="number" 
                                    name="verification" 
                                    placeholder="What is 1 + 4?"
                                    v-model="message.verification"
                                    @keydown="delete errors.verification"
                                    required
                                    >
                            </div>
                            <span 
                                class="help is-danger"
                                v-text="errors.verification[0]"
                                v-if="errors.verification">
                            </span>
                        </div>
                        
                        <div class="field is-grouped">
                            <div class="control has-text-right">
                                <a  class="button"
                                    @click="cancel">Cancel</a>
                                <button 
                                    class="button is-link"
                                    :disabled="submitted">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </modal>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                message: {},
                errors: {},
                submitted: false,
            };
        },

        methods: {
            cancel() {
                this.$modal.hide('contact-support-model');

                this.restForm();
            },
            contactSupport() {
                this.submitted = true;
                axios.post('/contact', this.message)
                    .then(() => {
                        this.$modal.hide('contact-support-model');

                        this.restForm();

                        // swal('thanks we will be touch soon!');
                    })
                    .catch(errors => {
                        this.errors = errors.response.data.errors;
                    });
            },
            restForm() {
                this.message = {};
                submitted = false;
            }
        },
    }
</script>