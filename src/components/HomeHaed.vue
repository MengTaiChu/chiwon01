<template>
  <div class="daohan">
    <img src="../img/logo/zh-logo.png" alt="" class="logo" />
    <div class="fenlei">
      <ul>
        <li v-for="item in fenlei" :key="item">{{ item }}</li>
      </ul>
    </div>
    <div class="ycaidan">
      <el-button
        type="text"
        style="margin-left: 16px"
        @click="drawer = true"
        class="menubtn"
      >
        <img src="src\img\tubiao\caidan.png" alt="" />
      </el-button>

      <el-drawer v-model="drawer" :with-header="false">
        <ul class="menuUl">
          <li style="color: aquamarine">首页</li>
          <li>产品</li>
          <li>项目</li>
          <li>联系我们</li>
        </ul>
      </el-drawer>
    </div>
  </div>
</template>

<script setup >
import { ref } from "vue";
const fenlei = ref(["首页", "产品", "项目", "联系我们", "18888888888"]);

const drawer = ref(false);
</script>

<style lang="less" scoped>
//移动端
@media screen and (max-width: 1023px) {
  .daohan {
    width: 100%;
    height: 0.44rem;
    display: flex;
    img {
      height: 0.28rem;
    }
    .logo {
      margin-left: 0.24rem;
    }
    .ycaidan {
      display: flex;
      width: 100%;
      height: 100%;
      justify-content: flex-end;
      font-size: 0.16rem;
      .menubtn {
        width: 0.24rem;
        height: 0.24rem;
        margin-right: 0.12rem;

        img {
          width: 100%;
          height: 100%;
          background-size: cover;
        }
      }

      .menuUl {
        display: flex;
        flex-direction: column;
        align-items: center;
        li {
          margin-bottom: 0.12rem;
          font-size: 0.16rem;
        }
      }
    }
    .fenlei {
      display: none;
    }
  }
}

//非pc端隐藏分类
@media screen and (max-width: 1023px) {
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
        li:first-child {
          color: aquamarine;
        }
      }
      // background-color: rgba(255, 0, 0, 0.321);
    }

    .ycaidan {
      display: none;
    }
  }
}
</style>