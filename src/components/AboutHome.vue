<template>
  <div :class="about">
    <div class="it1">
      <img src="../img/linshi/xm1.jpg" alt="" />
    </div>
    <div class="i" v-for="item in aboutData" :key="item">
      <div class="left lefttwo">
        <h5 :class="{ animate__heartBeat: isAnimating }" @click="btn">
          {{ item.h5 }}
        </h5>
        <p v-for="pItem in item.p" :key="pItem">
          {{ pItem }}
        </p>
      </div>
      <div class="right">
        <img :src="item.src" alt="" />
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { getCurrentInstance, onMounted, ref } from "vue";
import Device from "current-device";

const aboutData = ref([]);

const { proxy } = getCurrentInstance;

const getAboutData = async () => {
  const res = await axios.get("/aboutHome/getData");
  aboutData.value = res.data.data.about;
};

const about = ref("");
onMounted(() => {
  getAboutData();
  if (Device.mobile()) {
    about.value = "mobile";
  } else if (Device.ipad()) {
    about.value = "desktop";
  } else if (Device.desktop()) {
    about.value = "desktop";
  }
});
const isAnimating = ref(false);
const btn = () => {
  isAnimating.value = true;
  setTimeout(() => {
    isAnimating.value = false;
  }, 1000);
};
</script>

<style lang="less" scoped>
.mobile {
  .i {
    margin-top: 0.16rem;
    margin-bottom: 0.16rem;
    .left {
      h5 {
        font-size: 0.24rem;
        font-weight: bold;
      }
      p {
        font-size: 0.16rem;
      }
    }
    .right {
      img {
        width: 100%;
        height: 100%;
        background-size: cover;
      }
    }
  }
  .it1 {
    width: 100%;
    height: 1.6rem;
    img {
      width: 100%;
      height: 100%;
    }
  }
}
.desktop {
  .i {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 0.4rem;
    margin-bottom: 0.4rem;
    .left {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-right: 0.4rem;
      h5 {
        font-size: 0.48rem;
        margin-bottom: 0.3rem;
      }
      p {
        font-size: 0.36rem;
        margin-top: 0.3rem;
        margin-bottom: 0.3rem;
      }
    }

    .right {
      width: 8rem;
      height: 6rem;
      margin-left: 0.4rem;
      img {
        width: 100%;
        height: 100%;
        background-size: cover;
      }
    }
  }
  .it1 {
    height: 7.8rem;
    width: 100%;
    img {
      width: 100%;
      height: 100%;
    }
  }
}
</style>
