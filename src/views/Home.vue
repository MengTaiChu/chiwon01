<template>
  <div class="home">
    <home-haed />
    <el-main>
      <home-home />
    </el-main>
    <home-foot />
  </div>
</template>

<script setup>
import HomeHome from "../components/HomeHome.vue";
import HomeHaed from "../components/HomeHaed.vue";
import HomeFoot from '../components/HomeFoot.vue';
</script>

<style lang="less" scoped>
//移动端
@media screen and (max-width: 1023px) {
}

//PC端
@media screen and (min-width: 1024px) {
  .el-main {
    --el-main-padding: 0;
    min-width: 12rem;
    width: 100%;
    height: 100%;
  }
}

.el-main {
  --el-main-padding: 0;
}
</style>