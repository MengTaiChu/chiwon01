<template>
  <div class="home">
    <haed />
    <el-main>
      <home-home />
    </el-main>
  </div>
</template>

<script setup>
import Haed from "./Haed.vue";
import HomeHome from "../components/HomeHome.vue";
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