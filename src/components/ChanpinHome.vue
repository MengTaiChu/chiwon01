<template>
  <div class="cp">
    <div class="it1">
      <img src="../img/linshi/xm1.jpg" alt="" />
    </div>
    <div class="PCCP">
      <div class="nr" v-for="item in cp" :key="item">
        <div class="left">
          <el-image
            :src="item.src"
            :zoom-rate="1.2"
            :preview-src-list="[item.src]"
            fit="cover"
            alt="网络错误"
          />
        </div>
        <div class="right">
          <h5>{{ item.h5 }}</h5>
          <div class="fenge"></div>
          <p>
            {{ item.p }}
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script  setup>
import { ref, onMounted } from "vue";
import axios from "axios";

const cp = ref([]);

const getXmit = async () => {
  const res = await axios.get("/cpHome/getData");
  cp.value = res.data.data.cp;
};
onMounted(getXmit);
</script>

<style lang="less" scoped>
@media screen and (max-width: 800px) {
  .nr {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    margin-top: 0.12rem;
    margin-bottom: 0.12rem;
    .left {
      width: 1.6rem;
      height: 1.6rem;
      margin-right: 0.08rem;
      .el-image {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 15%;
      }
    }
    .right {
      width: 45%;
      height: 100%;
      margin-left: 0.08rem;
      h5 {
        font-size: 0.12rem;
        font-weight: bold;
      }
      .fenge {
        width: 1.6rem;
        height: 0.01rem;
        background-color: black;
        border-radius: 0.01rem;
        margin-top: 0.06rem;
        margin-bottom: 0.06rem;
      }
      p {
        font-size: 0.08rem;
        // margin-top: 0.38rem;
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
//PC
@media screen and (min-width: 801px) {
  .nr {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 0.24rem;
    margin-bottom: 0.24rem;
    .left {
      width: 4rem;
      height: 4rem;
      margin-right: 0.3rem;
      .el-image {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
    }
    .right {
      width: 8rem;
      height: 100%;
      margin-left: 0.3rem;
      h5 {
        font-size: 0.48rem;
        margin-bottom: 0.12rem;
      }
      .fenge {
        width: 4.6rem;
        height: 0.02rem;
        background-color: black;
        border-radius: 0.01rem;
        margin-top: 0.12rem;
      }
      p {
        font-size: 0.32rem;
        margin-top: 0.38rem;
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