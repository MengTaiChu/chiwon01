<template>
  <div class="it1">
    <el-carousel trigger="click" height="7.8rem" arrow="always">
      <el-carousel-item v-for="item in it1" :key="item" style="height: 7.8rem">
        <img :src="item.src" :alt="item.alt" />
      </el-carousel-item>
    </el-carousel>
  </div>

  <div class="it2">
    <div class="jieshao">
      <div class="bg" v-for="item in it2" :key="item">
        <div class="nr">
          <div class="tu">
            <img :src="item.src" />
          </div>
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
            <p v-for="pfItem in item.pf" :key="pfItem">{{ pfItem }}</p>
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
        <div class="nr">
          <div class="left">
            <img
              src="src/img/logo/dan.png"
              alt=""
            />
          </div>
          <div class="right">
            <h5>工业机器人</h5>
            <p>
              提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。
            </p>
            <el-button
              class="chakan"
              color="rgb(42,123,237,0.75)"
              :dark="isDark"
              :round="true"
              >查看更多</el-button
            >
          </div>
        </div>
        <div class="nr">
          <div class="left">
            <h5>工业机器人</h5>
            <p>
              提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。
            </p>
            <p style="display: flex; justify-content: flex-end">
              <el-button
                class="chakan"
                color="rgb(42,123,237,0.75)"
                :dark="isDark"
                :round="true"
                >查看更多</el-button
              >
            </p>
          </div>
          <div class="right">
            <img
              src="src/img/logo/dan.png"
              alt=""
            />
          </div>
        </div>
        <div class="nr">
          <div class="left">
            <img
              src="src/img/logo/dan.png"
              alt=""
            />
          </div>
          <div class="right">
            <h5>工业机器人</h5>
            <p>
              提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。
            </p>
            <el-button
              class="chakan"
              color="rgb(42,123,237,0.75)"
              :dark="isDark"
              :round="true"
              >查看更多</el-button
            >
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
      <div class="nr">
        <div v-for="item in kh" :key="item" class="khG">
          <img :src="item.src" :alt="item.alt" />
        </div>
      </div>
    </div>
  </div>

  <div class="it6">
    <div class="daiding">
      <div class="daiding">
        <div class="biaoti">
          <h1>技术支持</h1>
        </div>

        <div class="nr">
          <div class="lunbo">
            <el-carousel :interval="4000" type="card" height="4.6rem">
              <el-carousel-item v-for="item in kh" :key="item">
                <img :src="item.src" :alt="item.alt" />
              </el-carousel-item>
            </el-carousel>
          </div>
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
      <div class="erwm">
        <img
          src="https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSJFH2G76WHKLNHYTB3HCHQTV2BS%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NTczNjAwIiwiZXhwIjoiMTY4OTU5NTIwMCIsImVuZHBvaW50dXJsIjoid1lSY2l0RVdVTmo5NUtNKzNtcy80K29TUlBxc1BnT1kySU1WV0dXS3dGVT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNS45Mi40Mi4xODgifQ%2E7iLhSVMTQ7J289sVhcqkR02wNSgLNd%5FLesTuq63O2pc%26version%3DPublished&cb=63825175619&encodeFailures=1&width=1920&height=872"
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
</template>

<script setup>
import { ref, computed } from "vue";

const it1 = ref([
  {
    src: "src/img/logo/zh-logo.png",
    alt: "image1",
  },
  {
    src: "src/img/linshi/5.jpg",
    alt: "image2",
  },
  {
    src: "src/img/linshi/6.jpg",
    alt: "image3",
  },
]);

const it2 = ref([
  {
    src: "src/img/linshi/7.jpg",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "src/img/linshi/7.jpg",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "src/img/linshi/7.jpg",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
]);

const it3 = ref([
  {
    src: "src/img/logo/dan.png",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "src/img/logo/dan.png",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "src/img/logo/dan.png",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
]);

const it4 = ref([
  {
    src: "src/img/logo/dan.png",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
  {
    src: "src/img/logo/dan.png",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
  {
    src: "src/img/logo/dan.png",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
]);

const kh = ref([
  {
    src: "src/img/linshi/1.jpg",
    alt: "i1",
  },

  {
    src: "src/img/linshi/2.jpg",
    alt: "i2",
  },
  {
    src: "src/img/linshi/1.jpg",
    alt: "i3",
  },
  {
    src: "src/img/linshi/2.jpg",
    alt: "i4",
  },
  {
    src: "src/img/linshi/1.jpg",
    alt: "i5",
  },
  {
    src: "src/img/linshi/2.jpg",
    alt: "i6",
  },
  {
    src: "src/img/linshi/1.jpg",
    alt: "i7",
  },
  {
    src: "src/img/linshi/2.jpg",
    alt: "i8",
  },
  {
    src: "src/img/linshi/1.jpg",
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
.it8 {
  height: 1.2rem;
  background-color: rgb(83, 127, 192, 0.82);
  border-top: 0.01rem solid #000;
  display: flex;
  justify-content: center;
  align-items: center;
  .dizhi {
    display: flex;
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
  }
}
.it6 {
  .daiding {
    height: 9rem;
    width: 100%;
    background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSMR7TRXRDAZSNELQHO7A7GABING%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NTYyODAwIiwiZXhwIjoiMTY4OTU4NDQwMCIsImVuZHBvaW50dXJsIjoiMThSNDNlcWVXb20wSThHWkhpd0dXdktTYWtWVGhRZUdUR0JXTWZ2SEsyTT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNC4yMTcuNjYuNiJ9%2Eh75QxiBb0RjErEKkAKpy3dVBrc9meixdWD%5FAlKBymBg%26version%3DPublished&cb=63825159724&encodeFailures=1&width=1920&height=872);
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
    }
  }
}
.it5 {
  .daiding {
    height: 9rem;
    width: 100%;
    background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSLIXFFVBUNOQZB3R7O7Y6OS4I3I%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NTUyMDAwIiwiZXhwIjoiMTY4OTU3MzYwMCIsImVuZHBvaW50dXJsIjoiZWYzZENFL2R4YS9IZVZjbnFoeGFjTkt1c1pULzJ0cnBXZy9hZ0UyU3E4ND0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNC4yMTcuNjYuNiJ9%2E0HoEUgqZuXfvxeTdPY6k3IhWuRyWdr03lDQwvAntYNg%26version%3DPublished&cb=63825157035&encodeFailures=1&width=1920&height=872);
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
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      gap: 0.1rem;
      margin-left: 1.8rem;
      margin-right: 1.8rem;
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
.it4 {
  .daiding {
    height: 14.8rem;
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
      height: 12rem;
      .nr {
        display: flex;
      }
      .nr:nth-child(odd) {
        height: 4rem;
        width: 100%;
        background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSMBWGUXJPKIJFCILTBOL4MI4EXB%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5MzI1MjAwIiwiZXhwIjoiMTY4OTM0NjgwMCIsImVuZHBvaW50dXJsIjoiYWxTaFJURjNjRlNOMnU3cGxFYks0YVFEcWhJRHIwczdVN3FzUmw4V05uRT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNS44OC4xMzYuMTc0In0%2Eq0ElY6eFXRo1JL2awyC3%5F35jJRtV47UMOQmbPLMnd%5F0%26version%3DPublished&cb=63824923366&encodeFailures=1&width=1920&height=872);
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
        background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSPDEZNI7FXWDNEKI7XGQJJVQPUU%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5MzI1MjAwIiwiZXhwIjoiMTY4OTM0NjgwMCIsImVuZHBvaW50dXJsIjoiUVBVdlhQVDJtWCtRUUpORlN5T3poS1dlNFRWVW9nOWEvMkVudmdVNDBiND0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNS44OC4xMzYuMTc0In0%2EYRplfq5oVbDdzV7mZjRHk%5FoAsY4IGAByifki9uzpv3g%26version%3DPublished&cb=63824923366&encodeFailures=1&width=1920&height=872);
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
  }
}
.it3 {
  width: 100%;
  height: 8.2rem;
  .up {
    width: 100%;
    height: 4.8rem;
    background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIOCKT37ESN7FEIMGY4LS7S5OUY%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5MzE0NDAwIiwiZXhwIjoiMTY4OTMzNjAwMCIsImVuZHBvaW50dXJsIjoiOVIyalZOak5FVk9BdTIrYS9iOEhjV3FvSmEreHVVRG1McG9VUlhZbW5Ldz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI0My4yMDEuNTUuMTQ0In0%2E01Ndu47reETky5QcKEKkc2A7Y%2Dno5SlYYOPl8W3FHuc%26version%3DPublished&cb=63824920778&encodeFailures=1&width=1920&height=872);
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
  height: 7.8rem;
  display: flex;
  justify-content: center;
  .jieshao {
    width: 12rem;
    height: 100%;
    display: flex;
    justify-content: center;
    .bg {
      width: 4rem;
      height: 7.8rem;
      background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSLURGNTM4LK5BGJNT7YDSAAORSC%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NTczNjAwIiwiZXhwIjoiMTY4OTU5NTIwMCIsImVuZHBvaW50dXJsIjoicFk5K3lwVWFvRloxcUNYS1pqWmdycStkdzlGRXNQK25jVEFFMnhHOFZvST0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E5EPF1tBY1eFdmPgtupl3s2Pxm9MXd9IymdRAxuPGuGU%26version%3DPublished&cb=63824914131&encodeFailures=1&width=447&height=872);
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
      }
    }
  }
}
.ti1 {
  width: 100%;
  height: 7.8rem;
  img {
    width: 100%;
    height: 100%;
  }
}
</style>