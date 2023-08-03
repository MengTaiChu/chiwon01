<template>
  <home-haed />
  <el-main>
    <about-home />
  </el-main>
  <home-foot />
</template>

<script setup>
import HomeHaed from "../components/HomeHaed.vue";
import HomeFoot from "../components/HomeFoot.vue";
import AboutHome from "../components/AboutHome.vue";
</script>

<style lang="less" scoped>
.el-main {
  --el-main-padding: 0;
}
</style>