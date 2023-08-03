<template>
  <home-haed />
  <el-main>
    <RouterLink to="/home">cp</RouterLink>
    <chanpin-home />
  </el-main>
  <home-foot />
</template>

<script setup>
import HomeHaed from "../components/HomeHaed.vue";
import HomeFoot from "../components/HomeFoot.vue";
import ChanpinHome from "../components/ChanpinHome.vue";
</script>

<style lang="less" scoped>
</style>