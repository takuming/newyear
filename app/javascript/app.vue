<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from "vue";
import VueRouter from "vue-router";

import Index from "index.vue";
import Lookback from "./packs/pages/lookback.vue";
import LookbackMonth from "./packs/pages/month.vue";
import LookbackReflection from "./packs/pages/reflection.vue";
import LookbackCuriosity from "./packs/pages/curiosity.vue";

const router = new VueRouter({
  routes: [
    { path: "/", component: Index },
    { path: "/lookback", component: Lookback },
    { path: "/lookback/month", component: LookbackMonth },
    { path: "/lookback/reflection", component: LookbackReflection },
    { path: "/lookback/curiosity", component: LookbackCuriosity },
  ]
});

// ref. https://jp.vuejs.org/v2/guide/plugins.html#%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E4%BD%BF%E7%94%A8
Vue.use(VueRouter);

export default {
  router
};
</script>

<style>
@import "./style/global.scss";
@import "./style/_mixin.scss";
</style>
