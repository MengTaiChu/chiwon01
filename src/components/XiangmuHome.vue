<template>
  <div class="it">
    <div class="it1">
      <img src="../img/linshi/xm1.jpg" alt="" />
    </div>
    <div class="xmPdata" v-for="item in xm" :key="item">
      <div class="biaoti">
        <h5>
          <!-- 这是某个项目的标题 -->
          {{ item.bt }}
        </h5>
      </div>
      <div class="nr">
        <div class="xbt" v-for="xbtItem in item.xbt" :key="xbtItem">
          <div class="card">
            <div class="zm">
              <img :src="xbtItem.img" />
              <p>
                {{ xbtItem.zm }}
              </p>
            </div>
            <div class="bm">
              <p>
                <!-- 这里是背面的一些内容，主要就是对这一个小标题的内容作出的一些简单或详细的介绍 -->
                {{ xbtItem.bm }}
              </p>
            </div>
          </div>
          <div class="next">
            <img :src="xbtItem.next" />
          </div>
        </div>
      </div>
    </div>

    <div class="xmAdata" v-for="(item, index) in xm" :key="index">
      <div class="nr">
        <div class="biaoti">
          <h5>{{ item.bt }}</h5>
        </div>
        <div class="card">
          <div class="xbt" v-for="xbtItem in item.xbt" :key="xbtItem">
            <img :src="xbtItem.img" alt="img" />
            <p>{{ xbtItem.zm }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, getCurrentInstance, onMounted, computed } from "vue";

const { proxy } = getCurrentInstance();

const xm = ref([]);

const getXmit = async () => {
  const res = await proxy.$api.getXmitData();
  xm.value = res.xm;
};
onMounted(getXmit);
</script>

<style lang="less" scoped>
@media screen and (max-width: 800px) {
  .xmAdata {
    width: 100%;
    // height: 2.56rem;
    height: 100%;
    margin-top: 0.12rem;
    margin-bottom: 0.12rem;
    .nr {
      position: relative;
      display: flex;
      justify-content: center;
      align-items: center;
      .biaoti {
        background-color: rgb(255, 255, 255);
        width: 1.2rem;
        height: 1.2rem;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        z-index: 1;
        h5 {
          font-size: 0.18rem;
          text-align: center;
          // display: table-cell;
          // vertical-align: middle;
          margin: 16px;
          display: -webkit-box;
          -webkit-line-clamp: 3;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
        }
      }
      .card {
        display: grid;
        grid-template-columns: 1fr 1fr;
        justify-content: center;
        .xbt {
          width: 1.6rem;
          height: 1.2rem;
          position: relative;
          margin: 0.08rem;
          display: flex;
          justify-content: center;
          align-items: center;
          p {
            font-size: 0.16rem;
            position: absolute;
            width: 100%;

            text-align: center;
            background-color: rgba(255, 255, 255, 0.35);
          }
          img {
            width: 100%;
            height: 100%;
            position: absolute;
            border-radius: 0.12rem;
          }
        }
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
  .xmPdata {
    display: none;
  }
}
//PC
@media screen and (min-width: 801px) {
  .xmPdata {
    width: 100%;
    height: 5.2rem;
    background: url(../img/linshi/xmbg.jpg);
    .nr {
      width: 100%;
      height: 3.92rem;
      display: flex;
      justify-content: center;
      .xbt {
        display: flex;
        align-items: center;
      }
      .xbt:last-child {
        .next {
          display: none;
        }
      }
      .card {
        width: 3rem;
        height: 3.92rem;
        position: relative;

        img {
          width: 100%;
          height: 100%;
          background-size: cover;
        }
        .zm,
        .bm {
          position: absolute;
          backface-visibility: hidden;
        }
        .zm {
          width: 100%;
          height: 100%;
          background-size: cover;
          transition: 0.8s;
          display: flex;
          justify-content: center;
          img {
            position: absolute;
            border-radius: 0.12rem;
          }
          p {
            position: absolute;
            width: 100%;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.35);
            border-radius: 0.12rem 0.12rem 0 0;
          }
        }
        .bm {
          width: 100%;
          height: 100%;
          background-color: rgb(255, 255, 255);
          transform: rotateY(180deg);
          transition: 0.8s;
          border-radius: 0.12rem;
          p {
            padding: 0.16rem;
          }
        }
      }
      .next {
        width: 0.72rem;
        height: 0.24rem;
        display: flex;
        margin-left: 0.08rem;
        margin-right: 0.08rem;
        img {
          width: 100%;
          height: 100%;
        }
      }
      .card:hover .zm {
        transform: rotateY(180deg);
      }
      .card:hover .bm {
        transform: rotateY(0deg);
      }
      p {
        font-size: 0.24rem;
        line-height: 0.32rem;
      }
    }
    .biaoti {
      height: 0.88rem;
      display: flex;
      align-items: center;
      justify-content: center;
      h5 {
        font-size: 0.44rem;
        line-height: 0.52rem;
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
  .xmAdata {
    display: none;
  }
}
</style>