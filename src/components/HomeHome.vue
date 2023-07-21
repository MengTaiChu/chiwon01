<template>
  <div class="it">
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
          <div class="nr" v-for="(item, index) in it4" :key="index">
            <div class="dan" v-if="index % 2 === 0">
              <div class="left">
                <img :src="item.src" alt="" />
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

    <div class="it7">
      <div class="guanyu">
        <div class="nr" v-for="item in gy" :key="item">
          <div>
            <h5>{{ item.name }}</h5>
            <p v-for="fenzItem in item.fenz" :key="fenzItem">
              {{ fenzItem }}
            </p>
          </div>
        </div>
        <div class="ynr">
          <div class="yynr" v-for="item in gy" :key="item">
            <div>
              <h5>{{ item.name }}</h5>
              <p v-for="fenzItem in item.fenz" :key="fenzItem">
                {{ fenzItem }}
              </p>
            </div>
          </div>
        </div>
        <div class="erwm">
          <img
            src="https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/8.jpg?raw=true"
            alt="tuyi"
          />
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
import { ref } from "vue";

const it1 = ref([
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/logo/zh-logo.png?raw=true",
    alt: "image1",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/5.jpg?raw=true",
    alt: "image2",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/6.jpg?raw=true",
    alt: "image3",
  },
]);

const it2 = ref([
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/7.jpg?raw=true",
    h5: "公司团队",
    pf: ["人工智能", "智能制造", "工业机器人"],
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/7.jpg?raw=true",
    h5: "公司团队",
    pf: ["人工智能", "智能制造", "工业机器人"],
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/7.jpg?raw=true",
    h5: "公司团队",
    pf: ["人工智能", "智能制造", "工业机器人"],
  },
]);

const it3 = ref([
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/logo/dan.png?raw=true",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/logo/dan.png?raw=true",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/logo/dan.png?raw=true",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
]);

const it4 = ref([
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/logo/dan.png?raw=true",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/logo/dan.png?raw=true",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/logo/dan.png?raw=true",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
]);

const it6 = ref([
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i1",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i2",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i3",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i4",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i5",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i6",
  },
]);

const kh = ref([
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i1",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i2",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i3",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i4",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i5",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i6",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i7",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i8",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i9",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i1",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i2",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i3",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i4",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i5",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i6",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i7",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/2.jpg?raw=true",
    alt: "i8",
  },
  {
    src: "https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/1.jpg?raw=true",
    alt: "i9",
  },
]);

const gy = ref([
  {
    name: "首页",
    fenz: "",
  },
  {
    name: "技术支持",
    fenz: ["人工智能", "智能制造", "工业机器人"],
  },
  {
    name: "项目成果",
    fenz: ["人工智能", "智能制造", "工业机器人"],
  },
  {
    name: "联系我们",
    fenz: ["人工智能", "智能制造", "工业机器人"],
  },
]);
</script>




<style lang="less" scoped>
//移动
@media screen and (max-width: 1023px) {
  .it8 {
    height: 100%;
    background-color: rgb(83, 127, 192, 0.82);
    border-top: 0.01rem solid #000;
    display: flex;
    justify-content: center;
    align-items: center;
    .dizhi {
      // display: flex;
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
          // margin-bottom: 0.14rem;
        }

        p {
          font-size: 0.12rem;
          color: #fff;
          // margin-top: 0.14rem;
        }
      }
      .nr {
        display: none;
      }
    }
  }
  .it6 {
    width: 100%;
    height: 100%;
    .daiding {
      // height: 9rem;
      height: 100%;
      width: 100%;
      background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/bg2.png?raw=true);
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/4.jpg?raw=true);
        background-size: cover;
        h1 {
          font-size: 0.24rem;
          // margin-bottom: 0.8rem;
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
      // height: 9rem;
      height: 100%;
      width: 100%;
      background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/bg2.png?raw=true);
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/4.jpg?raw=true);
        background-size: cover;
        h1 {
          font-size: 0.24rem;
          // margin-bottom: 0.8rem;
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
          // margin-left: 1.8rem;
          // margin-right: 1.8rem;
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
      // background-color: aqua;
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/4.jpg?raw=true);
        background-size: cover;
        h1 {
          font-size: 0.24rem;
          // margin-bottom: 0.8rem;
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
    // height: 8.2rem;
    .jishu {
      display: flex;
      flex-direction: column;
      align-items: center;
      .up {
        width: 100%;
        height: 0.88rem;
        background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/4.jpg?raw=true);
        background-size: cover;
        margin-bottom: 0.08rem;
        .biaoti {
          width: 100%;
          height: 0.88rem;
          display: flex;
          justify-content: center;
          align-items: center;
          background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/4.jpg?raw=true);
          background-size: cover;
          h1 {
            font-size: 0.24rem;
          }
        }
      }
      .down {
        // background-color: aqua;
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
            background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/left.png?raw=true);
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
            background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/3.jpg?raw=true);
            background-size: cover;
            // border-top-left-radius: 0.12rem;
            // border-top-right-radius: 0.12rem;
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
        background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/bg.png?raw=true);
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
      height: 1.2rem;

      img {
        width: 100%;
        height: 100%;
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

//pc
@media screen and (min-width: 1024px) {
  .it8 {
    height: 1.2rem;
    background-color: rgb(83, 127, 192, 0.82);
    border-top: 0.01rem solid #000;
    display: flex;

    justify-content: center;
    align-items: center;
    .dizhi {
      // display: flex;
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      justify-content: center;
    }
    p {
      color: #fff;
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
          color: #fff;
        }
        p {
          font-size: 0.24rem;
          color: #e9e9e9;
          margin-top: 0.24rem;
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
  .it6 {
    width: 100%;
    height: 100%;
    .daiding {
      height: 9rem;
      // height: 100%;
      width: 100%;
      background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/bg2.png?raw=true);
      .biaoti {
        width: 100%;
        height: 2.8rem;
        // background-color: antiquewhite;
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
      // height: 9rem;
      height: 100%;
      width: 100%;
      background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/bg2.png?raw=true);
      .biaoti {
        width: 100%;
        height: 2.8rem;
        // background-color: antiquewhite;
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
      // height: 14.8rem;
      height: 100%;
      width: 100%;
      // background-color: aqua;
      .biaoti {
        width: 100%;
        height: 2.8rem;
        // background-color: antiquewhite;
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
        // height: 12rem;
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
          background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/right.png?raw=true);
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
          background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/left.png?raw=true);
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
              // text-align: right;
            }
            p {
              font-size: 0.24rem;
              line-height: 0.56rem;
              // text-align: right;
            }
            .chakan {
              width: 1.2rem;
            }
          }
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
      background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/linshi/4.jpg?raw=true);
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
    // height: 7.8rem;
    height: 100%;
    display: flex;
    justify-content: center;
    .jieshao {
      width: 12rem;
      height: 100%;
      // display: flex;
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      justify-content: center;
      .bg {
        width: 4rem;
        height: 7.8rem;
        background: url(https://github.com/MengTaiChu/chiwon01/blob/main/src/img/tubiao/bg.png?raw=true);
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