<template>
  <router-view />
</template>
<script setup>
</script>
<!-- 

不用媒体查询就要写两套代码，虽然不是什么难事，但现在要我重构还真是折磨人

 -->
<style>
*,
html,
body {
  margin: 0;
  padding: 0;
}
html,
body {
  height: 100%;
  width: 100%;
  font-size: 100px;
}
a {
  text-decoration: none;
  color: inherit;
  margin: 0;
  padding: 0;
}
</style>