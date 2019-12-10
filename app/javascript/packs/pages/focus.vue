<template>
  <div class="focus">
    <HeaderIndex></HeaderIndex>
    <div class="title">
      <p>PHASE2</p>
      <h3>取り組みたいことを 書き上げる</h3>
    </div>
    <div class="note">
      <ul class="quesitions">
        <li class="item"  v-for="q in questions">
          <h3 class="title">Q.{{ q.title }}</h3>
          <textarea name="" id="" cols="30" rows="10" placeholder="ここにテキストが入ります"></textarea>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>

import HeaderIndex from "../components/header-index.vue";
export default {
  components: {
    HeaderIndex
  },
 data() {
   return {
     questions: [
      { title: '変えたいこと' },
      { title: 'つづけたいこと' },
      { title: 'チャレンジしたいこと' },
      { title: 'どんな影響を周りの人に与えたい' },
      { title: 'どんな習慣を持ちたい' },
      { title: 'どんな感情で来年を終えたい' },
      { plholder: '能力、時間、感情・・・・・なんでも書き出してみましょう。' },
      { plholder: 'この月にあったことを2つ~５つなんでも書き出そう' },
      { plholder: '能力、時間、感情・・・・・なんでも書き出してみましょう。' },
      { plholder: 'この月にあったことを2つ~５つなんでも書き出そう' },
      { plholder: '能力、時間、感情・・・・・なんでも書き出してみましょう。' },
      { plholder: 'この月にあったことを2つ~５つなんでも書き出そう' },
    ]
   }
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
.focus {
  background-color:#FFF5EF;
  padding-bottom: 80px;
	.title {
    margin-bottom: 48px;
    h3{
      @include fst-l;
      text-align: center;
      margin-bottom: 8px;
      color: #000;
    }
    p{
      @include fsn-s;
      text-align: center;
      color: #000;
    }
	}
	.note {
    @include note;
		.quesitions {
			.item {
        border-bottom: 1px solid #f3f3f4;
        margin-bottom: 64px;
				.title {
          @include fst-s;
          margin-bottom: 24px;
        }
        textarea{
        @include fsn-m;  
        @include text;
        }
			}
		}
	}
}

</style>
