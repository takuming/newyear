<template>
  <div class="goal_detail">
    <HeaderNav2></HeaderNav2>
    <div class="note">
      <div class="wrapper">
          <div class="title">
            <input v-model="goal.title" v-on:keypress.enter="createGoal" type="text" placeholder="目標のタイトル">
          </div>
          <div class="monthlist">
            <ul class="wrapper"  >
              <li class="detail">
                <h4>目標のためにやるべきこと</h4>
                <textarea v-model="goal.action" v-on:keypress.enter="createGoal" name="" id="" cols="30" rows="10" 
                placeholder="目標達成に必要なことを具体化してみましょう">
                </textarea>
              </li>
              <li class="detail">
                <h4>障害になること</h4>
                <textarea v-model="goal.problem" v-on:keypress.enter="createGoal" name="" id="" cols="30" rows="10" 
                placeholder="達成するにあたって壁になることを書きましょう">
                </textarea>
              </li>
            </ul>
          </div>
        </div>
    </div>
    
  </div>
  
</template>

<script>
import axios from 'axios';

import HeaderNav2 from "../components/header-nav2.vue";

export default {
  el: '#demo',
  components: {
    HeaderNav2
  },
  data: function (){
   return {
     goal: {}
   }
 },
 mounted () {
    axios
      .get('/api/v1/setgoal/${this.$route.params.id}.json')
      .then(response => (this.goal = response.data))
  },
  methods:{
   updateGoal: function(){
      axios
      .post('/api/v1/goals/${this.goal.id}', this.goal)
      .then(response => {
        this.$router.push({path:'/lookback/month'})
      })
    }
  },
}
</script>

<style lang="scss" scoped>
@import "./app/javascript/style/global.scss";
@import "./app/javascript/style/_mixin.scss";
.goal_detail {
  background-color:#FAF5EC;
  padding-bottom: 80px;
	.note {
    background-color: white;
    border-radius:8px;
    padding: 48px;
    width: 88%;
    margin: 0 auto;
		.wrapper {
			.title {
        padding: 32px auto;
        margin-bottom: 32px;
        width: 100%;
        border-bottom: 1px solid #dadbdd;
        h3{
          @include fst-l;
          text-align: center;
          margin-bottom: 32px;
        }
			}
			.monthlist {raiul
				.wrapper {
          display: flex;
          flex-wrap: wrap;
          justify-content: space-between;
					.detail {
            width: calc(46% - 16px);
            height: 400px;
            padding: 24px;
            &:nth-child(odd){
              border-right: 1px solid #f3f3f4;
            }
            &:nth-child(1),&:nth-child(2){

              border-bottom: 1px solid #f3f3f4;
            }
            
            h4{
              @include fst-m;
              margin-bottom: 24px;
            }
            textarea{
              @include fsn-m;
              padding: 0;
            }
					}
				}
			}
		}
	}
}
</style>
