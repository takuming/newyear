<template>
  <div>
    <transition mode="out-in">
      <router-view></router-view>
    </transition>
  </div>
</template>

<script>
import axios from 'axios';

import Vue from "vue";
import VueRouter from "vue-router";

import Index from "index.vue";
import Lookback from "./packs/pages/lookback.vue";
import Focus from "./packs/pages/focus.vue";
import LookbackMonth from "./packs/pages/month.vue";
import LookbackReflection from "./packs/pages/reflection.vue";
import LookbackCuriosity from "./packs/pages/curiosity.vue";
import Setgoal from "./packs/pages/setgoal.vue";
import SetgoalNew from "./packs/pages/setgoalNew.vue";
import SetgoalEdit from "./packs/pages/setgoalEdit.vue";
import Opening from "./packs/components/opening.vue";
import Intro from "./packs/components/intro.vue";

const router = new VueRouter({
  routes: [
    { path: "/", component: Index },
    { path: "/lookback", component: Lookback },
    { path: "/setgoal", name: 'SetGoal',component: Setgoal },
    { path: "/setgoal/new", component: SetgoalNew },
    { path: "/setgoal/:id(\\d+)/edit'", name: 'SetGoalEdit',component: SetgoalEdit },

    { path: "/lookback/month", component: LookbackMonth },
    { path: "/lookback/reflection", component: LookbackReflection },
    { path: "/lookback/curiosity", component: LookbackCuriosity },
    { path: "/opening", component: Opening },
    { path: "/intro", component: Intro },
  ]
});

// ref. https://jp.vuejs.org/v2/guide/plugins.html#%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E4%BD%BF%E7%94%A8
Vue.use(VueRouter);

export default {
  router,
  data: function () {
    return {
      employees: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/employees.json')
      .then(response => (this.employees = response.data))
  }
};
</script>

<style>
@import "./style/global.scss";
@import "./style/_mixin.scss";

.v-enter {
  transform: translate(0px, -4px);
  opacity: 0;
}
.v-enter-to {
  opacity: 1;
}
.v-enter-active {
  transition: all 1s 0s ease;
}
.v-leave {
  transform: translate(0, 0);
  opacity: 1;
}
.v-leave-to {
  transform: translate(0px, -4px);
  opacity: 0;
}
.v-leave-active {
  transition: all .5s 0s ease;
}
</style>
