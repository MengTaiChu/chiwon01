<template>
  <div :class="it">
    <div class="it1">
      <el-carousel trigger="click" arrow="always" height="100%" class="plb">
        <el-carousel-item v-for="item in it1" :key="item">
          <img :src="item.src" :alt="item.alt" />
        </el-carousel-item>
      </el-carousel>

      <van-swipe class="ylb" :autoplay="3000" indicator-color="white">
        <van-swipe-item v-for="item in it1" :key="item">
          <img :src="item.src" :alt="item.alt" />
        </van-swipe-item>
      </van-swipe>
    </div>

    <div class="it2">
      <div class="jieshao">
        <div class="bg" v-for="item in it2" :key="item">
          <div class="nr">
            <div class="tu">
              <img :src="item.src" />
            </div>
            <div class="fenge"></div>
            <div class="zi">
              <h5>{{ item.h5 }}</h5>
              <p v-for="pfItem in item.pf" :key="pfItem">{{ pfItem }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="it3">
      <div class="jishu">
        <div class="up">
          <div class="biaoti">
            <h1>技术支持</h1>
          </div>
        </div>
        <div class="down">
          <div class="nr" v-for="item in it3" :key="item">
            <div class="tu">
              <img :src="item.src" />
            </div>
            <div class="zi">
              <h5>{{ item.h5 }}</h5>
              <p class="xp" v-for="pfItem in item.pf" :key="pfItem">
                {{ pfItem }}
              </p>
              <div class="pf">
                <p v-for="pfItem in item.pf" :key="pfItem">{{ pfItem }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="it4">
      <div class="daiding">
        <div class="biaoti">
          <h1>技术支持</h1>
        </div>

        <div class="bg">
          <div
            class="nr wow animate__fadeInUp"
            v-for="(item, index) in it4"
            :key="index"
          >
            <div class="dan" v-if="index % 2 === 0">
              <div class="left">
                <img :src="item.src" alt="加载失败" />
              </div>
              <div class="right">
                <h5>{{ item.h5 }}</h5>
                <p>
                  {{ item.zf }}
                </p>
                <el-button
                  class="chakan"
                  color="rgb(42,123,237,0.75)"
                  :dark="isDark"
                  :round="true"
                >
                  查看更多
                </el-button>
              </div>
            </div>
            <div class="shuang" v-else>
              <div class="left">
                <h5>{{ item.h5 }}</h5>
                <p>
                  {{ item.zf }}
                </p>
                <p style="display: flex; justify-content: flex-end">
                  <el-button
                    class="chakan"
                    color="rgb(42,123,237,0.75)"
                    :dark="isDark"
                    :round="true"
                  >
                    查看更多
                  </el-button>
                </p>
              </div>
              <div class="right">
                <img :src="item.src" alt="" />
              </div>
            </div>
          </div>
        </div>

        <div class="ybg">
          <div class="nr" v-for="item in it4" :key="item">
            <div class="up">
              <img :src="item.src" alt="" />
            </div>
            <div class="down">
              <div class="uh5">
                <h5>{{ item.h5 }}</h5>
              </div>
              <div class="dp">
                <p>{{ item.zf }}</p>
              </div>

              <el-button
                class="chakan"
                color="rgb(42,123,237,0.75)"
                size="small"
                :dark="isDark"
                :round="true"
                style="display: none"
              >
                查看更多
              </el-button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="it5">
      <div class="daiding">
        <div class="biaoti">
          <h1>技术支持</h1>
        </div>
        <div class="xianzhi">
          <el-scrollbar max-height="100%">
            <div class="nr">
              <div v-for="item in kh" :key="item" class="khG">
                <img :src="item.src" :alt="item.alt" />
              </div>
            </div>
          </el-scrollbar>
        </div>
      </div>
    </div>

    <div class="it6">
      <div class="daiding">
        <div class="biaoti">
          <h1>技术支持</h1>
        </div>

        <div class="nr">
          <div class="lunbo">
            <el-carousel :interval="4000" type="card" height="4.6rem">
              <el-carousel-item v-for="item in it6" :key="item">
                <img :src="item.src" :alt="item.alt" />
              </el-carousel-item>
            </el-carousel>
          </div>
          <div class="ylb">
            <van-swipe
              class="my-swipe"
              :autoplay="3000"
              indicator-color="white"
            >
              <van-swipe-item v-for="item in it6" :key="item">
                <img :src="item.src" alt="" />
              </van-swipe-item>
            </van-swipe>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { getCurrentInstance, ref, onMounted } from "vue";
import axios from "axios";
import WOW from "wow.js";
import Device from "current-device";

const { proxy } = getCurrentInstance();

const getIt1 = async () => {
  const res = await axios.get("/homeIt/getData");
  it1.value = res.data.data.it1;
  it2.value = res.data.data.it2;
  it3.value = res.data.data.it3;
  it4.value = res.data.data.it4;
  it6.value = res.data.data.it6;
  kh.value = res.data.data.kh;
};

const it = ref("");

const it1 = ref([]);

const it2 = ref([]);

const it3 = ref([]);

const it4 = ref([]);

const it6 = ref([]);

const kh = ref([]);

onMounted(() => {
  getIt1();
  const wow = new WOW({
    boxClass: "wow",
    animateClass: "animated",
    offset: 0,
    mobile: true,
    live: true,
    callback: function (box) {},
    scrollContainer: null,
    resetAnimation: true,
  });
  wow.init();
  if (Device.mobile()) {
    it.value = "mobile";
  } else if (Device.ipad()) {
    it.value = "desktop";
  } else if (Device.desktop()) {
    it.value = "desktop";
  }
});
</script>




<style lang="less" scoped>
.mobile {
  .it6 {
    width: 100%;
    height: 100%;
    .daiding {
      height: 100%;
      width: 100%;
      background: url(../img/tubiao/bg2.png);
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(../img/linshi/4.jpg);
        background-size: cover;
        h1 {
          font-size: 0.24rem;
        }
      }
      .nr {
        .ylb {
          .my-swipe {
            width: 100%;
            height: 2rem;
            img {
              width: 100%;
              height: 100%;
              background-size: cover;
            }
          }
        }
        .lunbo {
          display: none;
        }
      }
    }
  }
  .it5 {
    margin-top: 0.16rem;
    .daiding {
      height: 100%;
      width: 100%;
      background: url(../img/tubiao/bg2.png);
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(../img/linshi/4.jpg);
        background-size: cover;
        h1 {
          font-size: 0.24rem;
        }
      }

      .xianzhi {
        display: flex;
        justify-content: center;
        margin-top: 0.08rem;
        padding-bottom: 0.08rem;
        .nr {
          display: grid;
          grid-template-columns: 1fr 1fr 1fr 1fr;
          gap: 0.1rem;
          height: 2rem;

          .khG {
            width: 0.68rem;
            height: 0.68em;
            img {
              width: 100%;
              height: 100%;
              display: block;
              background-size: cover;
              border-radius: 50%;
            }
          }
        }
      }
    }
  }
  .it4 {
    margin-top: 0.16rem;
    .daiding {
      height: 100%;
      width: 100%;
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(../img/linshi/4.jpg);
        background-size: cover;
        h1 {
          font-size: 0.24rem;
        }
      }
      .ybg {
        .nr {
          display: flex;
          flex-direction: column;
          align-items: center;
          .up {
            width: 1.6rem;
            height: 1.6rem;
            margin-top: 0.36rem;
            margin-bottom: 0.36rem;
            img {
              width: 100%;
              height: 100%;
            }
          }
          .down {
            width: 80%;
            .uh5 {
              width: 1.6rem;
              h5 {
                padding-left: 0.12rem;
                padding-right: 0.12rem;
                font-size: 0.24rem;
                background-image: linear-gradient(
                  rgba(51, 100, 174, 0.34) 45%,
                  rgba(51, 100, 174, 0.06),
                  rgba(51, 100, 174, 0)
                );
              }
            }
            .dp {
              p {
                margin-left: 0.16rem;
                margin-right: 0.16rem;
                margin-top: 0.12rem;
                font-size: 0.16rem;
                text-align: center;
              }
            }
          }
        }
      }
      .bg {
        display: none;
      }
    }
  }
  .it3 {
    width: 100%;
    .jishu {
      display: flex;
      flex-direction: column;
      align-items: center;
      .up {
        width: 100%;
        height: 0.88rem;
        background: url(../img/linshi/4.jpg);
        background-size: cover;
        margin-bottom: 0.08rem;
        .biaoti {
          width: 100%;
          height: 0.88rem;
          display: flex;
          justify-content: center;
          align-items: center;
          background: url(../img/linshi/4.jpg);
          background-size: cover;
          h1 {
            font-size: 0.24rem;
          }
        }
      }
      .down {
        width: 80%;
        border-radius: 0.12rem;
        .nr:first-child {
          .tu {
            border-top-left-radius: 0.12rem;
            border-top-right-radius: 0.12rem;
          }
        }
        .nr:last-child {
          .zi {
            border-bottom-left-radius: 0.12rem;
            border-bottom-right-radius: 0.12rem;
          }
        }
        .nr {
          width: 100%;
          height: 100%;
          .zi {
            display: flex;
            align-items: center;
            background: url(../img/tubiao/left.png);
            background-size: cover;
            padding: 0.12rem 0 0.12rem 0.38rem;
            color: #fff;
            .xp {
              display: none;
            }
            h5 {
              font-size: 0.24rem;
              writing-mode: vertical-lr;
              margin-right: 0.44rem;
            }
            p {
              font-size: 0.16rem;
            }
          }
          .tu {
            width: 100%;
            height: 1.2rem;
            background: url(../img/linshi/3.jpg);
            background-size: cover;

            img {
              display: none;
              width: 100%;
              height: 100%;
            }
          }
        }
      }
    }
  }
  .it2 {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    .jieshao {
      height: 100%;
      width: 80%;
      .bg {
        height: 1.6rem;
        margin-bottom: 0.12rem;
        background: url(../img/tubiao/bg.png);
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        .nr {
          width: 100%;
          height: 100%;
          display: flex;
          align-items: center;
          justify-content: center;
          .zi {
            height: 1.2rem;
            display: flex;
            flex-direction: column;
            align-items: center;
          }
          .tu {
            width: 1.2rem;
            height: 1.2rem;
            margin-left: 0.24rem;
            img {
              width: 100%;
              height: 100%;
              display: block;
            }
          }
          h5 {
            font-size: 0.16rem;
            line-height: 0.24rem;
            margin-bottom: 0.08rem;
          }
          p {
            font-size: 0.12rem;
            line-height: 0.22rem;
          }
          .fenge {
            display: block;
            width: 0.01rem;
            height: 65%;
            background-color: #000;
            margin-left: 0.24rem;
            margin-right: 0.24rem;
          }
        }
      }
    }
  }

  .it1 {
    width: 100%;
    .ylb {
      height: 1.6rem;

      img {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
    }

    .plb {
      display: none;
    }
  }
  .el-carousel {
    height: 1.2rem;
  }
}
.desktop {
  .it6 {
    width: 100%;
    height: 100%;
    .daiding {
      height: 9rem;
      width: 100%;
      background: url(../img/tubiao/bg2.png);
      .biaoti {
        width: 100%;
        height: 2.8rem;
        display: flex;
        justify-content: center;
        align-items: flex-end;
        h1 {
          font-size: 0.48rem;
          margin-bottom: 0.8rem;
        }
      }
      .nr {
        width: 100%;
        height: 4.8rem;
        display: flex;
        justify-content: center;
        .lunbo {
          width: 12.06rem;
          height: 4.6rem;
        }
        .ylb {
          display: none;
        }
      }
    }
  }
  .it5 {
    .daiding {
      height: 100%;
      width: 100%;
      background: url(../img/tubiao/bg2.png);
      .biaoti {
        width: 100%;
        height: 2.8rem;
        display: flex;
        justify-content: center;
        align-items: flex-end;
        h1 {
          font-size: 0.48rem;
          margin-bottom: 0.8rem;
        }
      }

      .xianzhi {
        display: flex;
        justify-content: center;
        .nr {
          display: grid;
          grid-template-columns: 1fr 1fr 1fr;
          gap: 0.1rem;
          margin-left: 1.8rem;
          margin-right: 1.8rem;
          height: 5rem;
          .khG {
            width: 4rem;
            height: 2rem;
            img {
              width: 100%;
              height: 100%;
            }
          }
        }
      }
    }
  }
  .it4 {
    .daiding {
      height: 100%;
      width: 100%;
      .biaoti {
        width: 100%;
        height: 2.8rem;
        display: flex;
        justify-content: center;
        align-items: flex-end;
        h1 {
          font-size: 0.48rem;
          margin-bottom: 0.8rem;
        }
      }
      .bg {
        width: 100%;
        height: 100%;
        .dan {
          width: 100%;
          display: flex;
        }
        .shuang {
          width: 100%;
          display: flex;
        }
        .nr {
          display: flex;
          justify-content: center;
        }
        .nr:nth-child(odd) {
          height: 4rem;
          width: 100%;
          background: url(../img/tubiao/right.png);
          background-size: cover;

          .left {
            width: 6rem;
            height: 100%;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            img {
              width: 3.2rem;
              height: 3.2rem;
              margin-left: 2.8rem;
            }
          }
          .right {
            width: 10rem;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding-left: 2rem;
            padding-right: 2rem;
            h5 {
              font-size: 0.36rem;
              line-height: 0.42rem;
              text-align: right;
            }
            p {
              font-size: 0.24rem;
              line-height: 0.56rem;
              text-align: right;
            }
            .chakan {
              width: 1.2rem;
            }
          }
        }
        .nr:nth-child(even) {
          height: 4rem;
          width: 100%;
          background: url(../img/tubiao/left.png);
          background-size: cover;

          .right {
            width: 6rem;
            height: 100%;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            img {
              width: 3.2rem;
              height: 3.2rem;
              margin-right: 2.8rem;
            }
          }
          .left {
            width: 10rem;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding-left: 2rem;
            padding-right: 2rem;
            h5 {
              font-size: 0.36rem;
              line-height: 0.42rem;
            }
            p {
              font-size: 0.24rem;
              line-height: 0.56rem;
            }
            .chakan {
              width: 1.2rem;
            }
          }
        }
        p {
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
          -webkit-line-clamp: 3;
        }
      }
      .ybg {
        display: none;
      }
    }
  }
  .it3 {
    width: 100%;
    height: 8.2rem;
    .up {
      width: 100%;
      height: 4.8rem;
      background: url(../img/linshi/4.jpg);
      background-size: cover;
      .biaoti {
        width: 100%;
        height: 2.8rem;
        display: flex;
        justify-content: center;
        align-items: flex-end;
        h1 {
          font-size: 0.48rem;
          margin-bottom: 0.8rem;
        }
      }
    }
    .down {
      display: flex;
      justify-content: center;
      position: relative;
      top: -1.6rem;
      .nr {
        width: 3rem;
        height: 4rem;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        .zi {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          margin-top: 0.12rem;
          .pf {
            display: none;
          }
        }
        .tu {
          width: 2rem;
          height: 2rem;
          margin-bottom: 0.12rem;
          img {
            width: 100%;
            height: 100%;
          }
        }
        h5 {
          font-size: 0.36rem;
          margin-bottom: 0.12rem;
        }
        p {
          font-size: 0.24rem;
        }
      }
    }
  }
  .it2 {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    .jieshao {
      width: 12rem;
      height: 100%;
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      justify-content: center;
      .bg {
        width: 4rem;
        height: 7.8rem;
        background: url(../img/tubiao/bg.png);
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        .nr {
          width: 3rem;
          height: 4rem;
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          .zi {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-top: 0.12rem;
          }
          .tu {
            width: 2rem;
            height: 2rem;
            margin-bottom: 0.12rem;
            img {
              width: 100%;
              height: 100%;
            }
          }
          h5 {
            font-size: 0.36rem;
            margin-bottom: 0.12rem;
          }
          p {
            font-size: 0.24rem;
          }
          .fenge {
            display: none;
          }
        }
      }
    }
  }
  .it1 {
    width: 100%;
    height: 7.8rem;
    img {
      width: 100%;
      height: 100%;
    }
    .ylb {
      display: none;
    }
    .el-carousel {
      height: 7.8rem;
    }
  }
}
</style>