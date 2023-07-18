<template>
  <div class="head">
    <home-haed />
  </div>
</template>

<script setup>
import HomeHaed from "../components/HomeHaed.vue";
</script>

<style lang="less" scoped>
.head {
  height: 1.2rem;
  width: 100%;
  display: flex;
  align-items: flex-start;
  justify-content: center;
  position: fixed;
  z-index: 999;
  background-image: linear-gradient(
    rgba(51, 100, 174, 0.34) 45%,
    rgba(51, 100, 174, 0.06),
    rgba(51, 100, 174, 0)
  );
}
</style>