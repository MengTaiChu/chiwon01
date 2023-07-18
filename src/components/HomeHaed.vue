<template>
  <div class="daohan">
    <img src="../img/logo/zh-logo.png" alt="" />
    <div class="fenlei">
      <ul>
        <li v-for="item in fenlei" :key="item">{{ item }}</li>
      </ul>
    </div>
    <!-- <div class="caidan">
      12121212
    </div> -->
  </div>
</template>

<script setup>
import { ref } from "vue";
const fenlei = ref(["首页", "产品", "项目", "联系我们", "18888888888"]);
</script>

<style lang="less" scoped>
//移动端
@media screen and (max-width: 1023px) {
  .daohan {
    width: 100%;
    height: 0.88rem;
    display: flex;
    img {
      height: 0.64rem;
    }
  }
}

//非pc端隐藏分类
@media screen and (max-width: 1023px) {
  .fenlei {
    display: none;
  }
}

//PC
@media screen and (min-width: 1024px) {
  .daohan {
    display: flex;
    // background-color: rgba(255, 0, 0, 0.315);
    height: 0.88rem;
    // width: 100%;
    // margin-left: 0.8rem;
    .fenlei {
      margin-left: 0.8rem;
      width: 100%;
      // display: flex;
      // align-items: center;
      ul {
        display: flex;
        height: 100%;
        li {
          list-style: none;
          font-size: 0.24rem;
          color: #fff;
          height: 100%;
          display: flex;
          align-items: center;
          margin-left: 0.4rem;
          margin-right: 0.4rem;
        }
      }
      // background-color: rgba(255, 0, 0, 0.321);
    }
  }
}
</style>