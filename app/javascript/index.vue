<template>
  <div id="app">
    <Header></Header>
    <div class="index_wrapper">
        <div class="title">
          <h2>来年を等身大で過ごすための</h2>
          <h2>3つのノートを用意しました</h2>
        </div>
        <div class="section_contents">
          <ul class="content_wrapper">
            <li class="content _lookback">
              <router-link to="/lookback">
                <div class="img">
                  <img v-bind:src="require('./packs/images/note_lookback.png')">
                </div>
                <div class="text">
                  <span>PHASE 1</span>
                  <h3>今年を振り返る</h3>
                  <p>今年を振り返りどんな１年だったかを明らかにしましょう。</p>
                </div>
              </router-link>
            </li>
            <li class="content _interest">
              <router-link to="/lookback">
              <div class="img">
                <img v-bind:src="require('./packs/images/note_interest.png')">
              </div>
              <div class="text">
                <span>PHASE 2</span>
                <h3>今の自分を整理する</h3>
                <p>変えたいこと、挑戦したいこと。今の自分がうっすらと感じていることを明らかにします。</p>
              </div>
              </router-link>
            </li>
            <li class="content _goalset">
              <router-link to="/lookback">
              <div class="img">
                <img v-bind:src="require('./packs/images/note_goalset.png')">
              </div>
              <div class="text">
                <span>PHASE 3</span>
                <h3>2020年の目標を立てる</h3>
                <p>新しい年を生きるためのイメージを明確にしてみましょう。</p>
              </div>
              </router-link>
            </li>
          </ul>
        </div>
    </div>
    <div>
      {{ info }}
    </div>
    <Footer></Footer>
  </div>
</template>


<script>
import axios from 'axios';

import Header from "./packs/components/header.vue";
import Footer from "./packs/components/footer.vue";

export default {
  components: {
    Header,
    Footer
  },
  data: function() {
    return {
      message: "",
      info:null,
    };
  },
  mounted () {
    axios
      .get('https://api.coindesk.com/v1/bpi/currentprice.json')
      .then(response => (this.info = response))
  }
};
</script>

<style lang="scss" scoped>
@import "./app/javascript/style/global.scss";
@import "./app/javascript/style/_mixin.scss";
.index_wrapper{
  width: 1160px;
  margin: 0 auto;
  padding: 40px 0 48px;
}
.title {
  @include fst-m;
  text-align: center;
  margin-bottom:48px;
}
.section_contents {
	.content_wrapper {
    display: flex;
    justify-content: space-between;
		.content{
      width: 23%;
      transition:$transiton-base ;
      &:hover{
        transition:$transiton-base ;
        .img{
          top: -8px;
          position: relative;
        }
      }
			 .img {
         margin-bottom: 24px;
         img{
           width: 100%;
           height: auto;
           transition:$transiton-base ;
         }
			}
			 .text {
         span{
           @include fsn-xs;
           font-weight: bold;
           margin-bottom: 8px;
           display: block;
         }
         h3{
           @include fst-s;
           margin-bottom: 8px;
         }
         p{
           @include fsn-s;
           font-weight: bold;
           opacity: 40%;;
         }
			}
	}
}
}
</style>
