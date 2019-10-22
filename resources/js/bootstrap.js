import Vue from 'vue';

import VueRouter from 'vue-router';

import axios from 'axios';

import PortalVue from 'portal-vue';

import vmodal from 'vue-js-modal';

import Form from './utilities/Form';

window.Vue = Vue;

window.axios = axios;

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

window.Form = Form;

Vue.use(VueRouter);

Vue.use(PortalVue);

Vue.use(vmodal);
