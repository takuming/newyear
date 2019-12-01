<template>
<transition>
    <div class="lookback">
      <HeaderNav></HeaderNav>
      <div class="note">
        <div class="title">
          <p class="items">PHASE 1</p>
          <h2>今年を振り返る</h2>
        </div>
        <ul>
            <li v-on:click="createLbmonth">
              <a>
                  <div class="left">
                    <p class="step">STEP1.</p>
                    <h3>月を振り返る</h3>
                  </div>
                  <div class="right">
                    <i class="material-icons">keyboard_arrow_right</i>
                  </div>    
              </a>
            </li>
            <li>
              <router-link to="/opening">今年の内省</router-link>
            </li>
            <li>
              <router-link to="/lookback/curiosity">今年の発見</router-link>
            </li>
          </ul>
      </div>
    </div>
  </transition>
</template>

<script>
import axios from 'axios';

import HeaderNav from "../components/header-nav.vue";

export default {
  components: {
    HeaderNav
  },
  data: function() {
    return {
      message: ""
    };
  },
  methods: {
    createLbmonth: function(){
      axios
      .post('/api/v1/lbmonths', this.lbmonths)
      .then(response =>{
        this.$router.push({path:'/lookback/month'})
      })
    }
  }
};
</script>

<style lang="scss" scoped>
@import "./app/javascript/style/global.scss";
@import "./app/javascript/style/_mixin.scss";
.header{
  margin-bottom: 16px;
}
.lookback{
  background-image: url('../images/bg_paturn.jpg');
  background-size: contain;
    background-repeat: no-repeat;
    background-color: #FAF8EC;
    padding-bottom: 80px;
}
.note {
  @include note;
  width: 84%;
	.title {
		.items {
      @include eng_font;
      margin-bottom:20px;
      text-align: center;
    }
    h2{
      @include fst-l;
      margin-bottom: 48px;
      text-align: center;
    }
  }
  ul{
    width: 60%;
    margin: 0 auto;
    li{
      a{
        display: flex;
      justify-content: space-between;
      padding: 32px 40px;
      background-color: rgba(0,0,0,0.02);
      border-radius: 12px;
      margin-bottom: 20px;
      transition: all 0.24s ease-in;
      &:hover{
        background-color: rgba(0,0,0,0.08);
      }
      }
    }
  }
	   .left {
       .step{
         font-size: 12px;
         font-weight: bold;
         @include eng_font;
         margin-bottom: 4px;
       }
       h3{
         @include fst-xs;
       }
	    }
	   .right {
	    }
}
</style>
