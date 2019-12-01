<template>
  <header class="header">
    <nav class="nav">
      <ul class="wrapper">
        <li class="back">
          <router-link to="/lookback">
              <span class="icon">
                <img v-bind:src="require('../images/arrow_back.svg')" alt="arrowback">
              </span>
              <p>戻る</p> 
          </router-link>
        </li>
        <li class="save">保存する</li>
      </ul>
    </nav>
  </header>
</template>

<script>
export default {
  
}
</script>

<style lang="scss" scoped>
.header {
  background: none;
  padding: 20px 32px;
	.nav {
		.wrapper {
      display: flex;
      justify-content: space-between;
      width: 100%;
			.back {
        padding: 12px 16px;
        a{
          display: flex;
          justify-content: space-between;
          text-decoration: none;
          background-color: rgba(0,0,0,0.04);
          border-radius: 100px;
          padding: 12px 20px 10px 16px;
          .icon {
              margin-right: 12px
          }
          p{
            padding: 4px 0;
          }
        }
				
        p{
          font-size:14px;
          font-weight: bold;
          line-height:1;
        }
			}
			.save {
        padding: 12px 16px;
        font-size: 14px;
        background-color: #fff;
        border-radius: 100px;
			}
		}
	}
}
</style>
