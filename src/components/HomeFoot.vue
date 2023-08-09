<template>
  <div :class="foot">
    <div class="it7">
      <div class="guanyu">
        <div class="nr" v-for="item in gy" :key="item">
          <div class="ftm">
            <h5 @click="h5btn(item)">
              <RouterLink :to="item.path">
                {{ item.name }}
              </RouterLink>
            </h5>

            <p
              v-for="fenzItem in item.fenz"
              :key="fenzItem"
              @click="pbtn(fenzItem)"
            >
              <RouterLink :to="fenzItem.path">
                {{ fenzItem.pf }}
              </RouterLink>
            </p>
          </div>
        </div>
        <div class="ynr">
          <div class="yynr" v-for="item in gy" :key="item">
            <div>
              <h5>
                <router-link :to="item.path">
                  {{ item.name }}
                </router-link>
              </h5>
              <p v-for="fenzItem in item.fenz" :key="fenzItem">
                <router-link :to="fenzItem.path">
                  {{ fenzItem.pf }}
                </router-link>
              </p>
            </div>
          </div>
        </div>

        <div class="erwm">
          <img src="../img/linshi/8.jpg" alt="tuyi" />
          <p>扫码添加</p>
        </div>
      </div>
    </div>

    <div class="it8">
      <div class="dizhi">
        <p>备案信息：xxxxxxxxxxxxxxxxxx</p>
        <p>公司地址：xxxxxxxxxxxxxxxxxx</p>
        <p>联系方式：xxxxxxxxxxxxxxxxxx</p>
      </div>
    </div>
  </div>
</template>

<script setup>
import { getCurrentInstance, onMounted, ref } from "vue";
import { useRouter, RouterLink } from "vue-router";
import axios from "axios";
import Device from "current-device";

const { proxy } = getCurrentInstance();

const gy = ref([]);
const foot = ref("");
const getGy = async () => {
  const res = await axios.get("/homeFoot/getData");
  gy.value = res.data.data.gy;
};
onMounted(() => {
  getGy();
  if (Device.mobile()) {
    foot.value = "mobile";
  } else if (Device.ipad()) {
    foot.value = "desktop";
  } else if (Device.desktop()) {
    foot.value = "desktop";
  }
});

const router = useRouter();
</script>

<style lang="less" scoped>
.mobile {
  .it8 {
    height: 100%;
    background-color: rgb(83, 127, 192, 0.82);
    border-top: 0.01rem solid #000;
    display: flex;
    justify-content: center;
    align-items: center;
    .dizhi {
      display: grid;
      grid-template-columns: 1fr 1fr;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      width: 90%;
      p {
        color: #fff;
        font-size: 0.12rem;
        padding-top: 0.08rem;
        padding-bottom: 0.08rem;
      }
    }
  }
  .it7 {
    padding-top: 0.1rem;
    padding-bottom: 0.1rem;
    width: 100%;
    height: 100%;
    background-color: rgb(83, 127, 192, 0.82);
    .guanyu {
      display: flex;
      justify-content: center;
      .ynr {
        .yynr {
          div {
            display: flex;

            h5 {
              font-size: 0.12rem;
              color: #fff;
            }
            p {
              font-size: 0.12rem;
              color: #e9e9e9;
              margin-left: 0.12rem;
            }
          }
        }
      }

      .erwm {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin-left: 0.2rem;
        img {
          width: 0.48rem;
          height: 0.48rem;
        }

        p {
          font-size: 0.12rem;
          color: #fff;
        }
      }
      .nr {
        display: none;
      }
    }
  }
}
.desktop {
  .it8 {
    height: 1.2rem;
    background-color: rgb(83, 127, 192, 0.82);
    border-top: 0.01rem solid #000;
    display: flex;

    justify-content: center;
    align-items: center;
    .dizhi {
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      justify-content: center;
    }
    p {
      color: rgb(255, 255, 255);
      font-size: 0.16rem;
    }
    .dizhi p:first-child {
      margin-right: 0.12rem;
    }
    .dizhi p:last-child {
      margin-left: 0.12rem;
    }

    .dizhi p:nth-child(2) {
      margin-left: 0.12rem;
      margin-right: 0.12rem;
    }
  }
  .it7 {
    width: 100%;
    height: 4rem;
    background-color: rgb(83, 127, 192, 0.82);
    display: flex;
    justify-content: center;
    align-items: center;
    .guanyu {
      display: flex;
      justify-content: center;
      .nr {
        h5 {
          font-size: 0.24rem;
          color: rgb(255, 255, 255);
        }
        p {
          font-size: 0.24rem;
          color: #e9e9e998;
          margin-top: 0.24rem;
        }
        p:hover {
          color: #fff;
        }
      }
      .nr:first-child {
        margin-right: 0.4rem;
      }
      .nr:last-child {
        margin-left: 0.4rem;
      }
      .nr:not(:first-child):not(:last-child) {
        margin-left: 0.4rem;
        margin-right: 0.4rem;
      }
      .erwm {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        img {
          width: 1.6rem;
          height: 1.6rem;
          margin-bottom: 0.14rem;
        }

        p {
          font-size: 0.24rem;
          color: #fff;
          margin-top: 0.14rem;
        }
      }
      .ynr {
        display: none;
      }
    }
  }
}
</style>