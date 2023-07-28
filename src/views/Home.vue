<template>
  <div class="home" ref="jy">
    <home-haed />
    <el-main class="homeMain">
      <home-home />
    </el-main>
    <home-foot />
  </div>
</template>

<script setup>
import HomeHome from "../components/HomeHome.vue";
import HomeHaed from "../components/HomeHaed.vue";
import HomeFoot from "../components/HomeFoot.vue";
import { onMounted, ref } from "vue";

const jy = ref(null);
function jyxg() {
  const homeTop = jy.value.getBoundingClientRect().top;
  const homeBottom = jy.value.getBoundingClientRect().bottom;

  if (homeTop >= 0 && homeBottom <= window.innerHeight) {
    jy.value.classList.add("homeMain-in");
  } else {
    jy.value.classList.remove("homeMain-in");
  }
}

onMounted(() => {
  window.addEventListener("scroll", jyxg);
  jyxg();
});

// onMounted(window.addEventListener("scroll", jyxg),jyxg())
</script>

<style lang="less" scoped>
//移动端
@media screen and (max-width: 800px) {
}

//PC端
@media screen and (min-width: 801px) {
  // .homeMain {
  //   opacity: 0.3;
  //   transition: opacity 2.5s;
  // }

  // .homeMain-in {
  //   opacity: 1;
  // }

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