<template>
  <div class="setgoal">
    <HeaderNav2></HeaderNav2>
    <div class="title">
      <p>PHAESE 3</p>
      <h3>目標を設定しよう</h3>
    </div>
    <div class="note">
      <ul class="goals">
        <li class="item">
          <a href="">
            <div class="wrapper">
              <h3 class="title">目標のサンプル</h3>
              <div>></div>
            </div>
          </a>
        </li>
      </ul>
      <div class="button make_goal">
        <router-link :to="{path:'/setgoal/new'}">
            <p>目標を追加する</p>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>

import HeaderNav2 from "../components/header-nav2.vue";
export default {
  components: {
    HeaderNav2
  }
}
</script>

<style lang="scss" scoped>
@import "./app/javascript/style/global.scss";
@import "./app/javascript/style/_mixin.scss";
.header{
  color: white;
  .save{
    color: #000;
  }
}
.setgoal {
  background-color:#FAF5EC;
  padding-bottom: 80px;
	.title {
    margin-bottom: 48px;
    h3{
      @include fst-l;
      text-align: center;
      margin-bottom: 8px;
      color: #fff;
    }
    p{
      @include fsn-s;
      text-align: center;
      color: #fff;
    }
	}
	.note {
    @include note;
    padding: 72px;
    width: 84%;
		.goals {
			.item {
        border-bottom: 1px solid #f3f3f4;
        padding: 24px;
        border-radius: 16px;
        margin-bottom: 24px;
        .wrapper{
              display: flex;
              justify-content: space-between;
              .title {
                  @include fst-s;
                  margin: 0;
              }
        }
				
			}
		}
	}
}

</style>
