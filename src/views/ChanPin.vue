<template>
  <home-haed />
  <el-main>
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
.el-main {
  --el-main-padding: 0;
}
</style>