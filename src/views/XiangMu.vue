<template>
  <div>
    <home-haed />
    <el-main>
      <xiangmu-home />
    </el-main>
    <home-foot />
  </div>
</template>

<script setup>
import HomeHaed from "../components/HomeHaed.vue";
import HomeFoot from "../components/HomeFoot.vue";
import XiangmuHome from "../components/XiangmuHome.vue";
</script>


<style lang="less" scoped>
//PC端
@media screen and (min-width: 801px) {
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