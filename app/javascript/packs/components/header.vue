<template>
  <header class="header">
    <nav class="nav">
      <ul class="wrapper">
        <li class="about">サービスについて</li>
        <li class="ci"><img v-bind:src="require('../images/ci.svg')" alt="newyear"></li>
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
  methods: {
    signOut: function() {
      axios
      .delete('/destroy_user_session')
    }
  }
}
</script>

<style lang="scss" scoped>
.header {
  background: none;
  width: 100%;
  padding: 20px 32px;
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


