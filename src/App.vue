<template>
  <router-view />
</template>
<script setup>
import Device from "current-device";

//监听窗口变化
function updateFontSize() {
  const windowWidth = window.innerWidth || document.documentElement.clientWidth;
  const fontSize = Device.mobile() ? 100 : windowWidth * 0.065;
  document.documentElement.style.fontSize = fontSize + "px";
}

if (Device.mobile() || Device.ipad() || Device.desktop()) {
}

updateFontSize();

window.addEventListener("resize", updateFontSize);
</script>

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



