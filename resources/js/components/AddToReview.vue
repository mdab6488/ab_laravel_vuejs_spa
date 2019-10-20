<template>
    <div>
        <div class="message">
            <div class="message-header">
                Push To The Reviews
            </div>
            <div class="message-body">
                <form 
                    @submit.prevent="onSubmit"
                    @keydown="form.errors.clear($event.target.name)">
                    <div class="field">
                        <label class="label" id="name">Name: </label>
                        <div class="control">
                            <input class="input" type="text" id="name" name="name"
                                v-model="form.name">
                            <span class="help is-danger"
                                    v-text="form.errors.get('name')"
                                    v-if="form.errors.has('name')">
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Message: </label>
                        <div class="control" id="message">
                            <textarea class="textarea" placeholder="Your Review......" id="message" name="description"
                                v-model="form.description"></textarea>
                            <span class="help is-danger"
                                    v-text="form.errors.get('description')"
                                    v-if="form.errors.has('description')">
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label" id="url">Image Url: </label>
                        <div class="control">
                            <input class="input" type="text" id="url" name="avater"
                                v-model="form.avater">
                            <span class="help is-danger"
                                    v-text="form.errors.get('avater')"
                                    v-if="form.errors.has('avater')">
                            </span>
                        </div>
                    </div>

                    <div class="field is-grouped">
                        <div class="control">
                            <input type="submit" class="button is-link"
                                :disabled="form.errors.any()">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                form: new Form({
                    name: '',
                    description: '',
                    avater: '',
                }),
            }
        },
        methods: {
            onSubmit() {
                this.form
                    .post('/reviews')
                    .then(review => this.$emit('completed', review));
            }
        },
    }
</script>
