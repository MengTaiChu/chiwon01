<template>
  <div>
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
import HomeFoot from "../components/HomeFoot.vue";
</script>

<style lang="less" scoped>

.el-main {
  --el-main-padding: 0;
}
</style>