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
.el-main {
  --el-main-padding: 0;
  // max-width: 16rem;
  min-width: 16rem;
  width: 100%;
  // height: 61.8rem;
  height: 100%;
}
</style>