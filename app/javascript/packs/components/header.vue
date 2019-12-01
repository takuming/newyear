<template>
  <header class="header">
    <nav class="nav">
      <ul class="wrapper">
        <li class="about">サービスについて</li>
        <li class="ci">
          <img v-bind:src="require('../images/ci.svg')" alt="newyear">
          </li>
        <li class="account">
          <a v-on:click="signOut">アカウント</a> 
        </li>
      </ul>
    </nav>
  </header>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      user: {}
    }
  },
   mounted () {
    axios
      .get(`/api/v1/users/${this.$route.params.id}.json`)
      .then(response => (this.user = response.data))
  },
  methods: {
    signOut: function() {
      axios
      .delete(`/api/v1/users/`)
    }
  },
}
</script>

<style lang="scss" scoped>
.header {
  background: none;
  width: 92%;
  padding: 40px 0px;
  margin: 0 auto 0;
	.nav {
		.wrapper {
      display: flex;
      justify-content: space-between;
      width: 100%;
      .about{
        font-size: 12px;
      }
      .ci{}
      .account{
        font-size: 12px;
      }
		}
	}
}
</style>


