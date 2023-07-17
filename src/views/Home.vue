<template>
  <div class="home">
    <haed />
    <el-main>
      <home-main />
    </el-main>
  </div>
</template>

<script setup>
import Haed from "./Haed.vue";
import HomeMain from "./HomeMain.vue";
</script>

<style lang="less" scoped>
.el-main {
  --el-main-padding: 0;
  width: 100%;
  // height: 61.8rem;
  height: 100%;
}
</style>