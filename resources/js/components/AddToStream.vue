<template>
    <div>
        <div class="message">
            <div class="message-header">
                Push To The Stream
            </div>
            <div class="message-body">
                <form 
                    @submit.prevent="onSubmit" 
                    @keydown="form.errors.clear()">
                    <div class="field">
                        <label class="label">Message</label>
                        <div class="control">
                            <textarea class="textarea" placeholder="I Have Somting To Say..."
                                v-model="form.body"></textarea>
                            <span class="help is-danger" 
                                v-if="form.errors.has('body')"
                                v-text="form.errors.get('body')"></span>
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
                form: new Form({ body: '' }),
            }
        },
        methods: {
            onSubmit() {
                //Submit An Ajax Request To Server
                this.form
                    .post('/statues')
                    .then(status => this.$emit('completed', status));
            }
        },
    }
</script>
