<template>
  <header class="header">
    <nav class="nav">
      <ul class="wrapper">
        <li class="back">
          <span class="icon">X</span>
          <p>戻る</p> 
        </li>
        <li class="save"></li>
      </ul>
    </nav>
  </header>
</template>

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
        display: flex;
        justify-content: space-between;
				.icon {
          margin-right: 12px
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
