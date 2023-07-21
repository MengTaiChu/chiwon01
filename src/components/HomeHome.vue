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
            src="https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSJFH2G76WHKLNHYTB3HCHQTV2BS%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoid1lSY2l0RVdVTmo5NUtNKzNtcy80K29TUlBxc1BnT1kySU1WV0dXS3dGVT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2EdwBgfofNCHWYL4dbs89ujD1Sojrv7umo7jCUvMEQddI%26version%3DPublished&cb=63825175619&encodeFailures=1&width=468&height=470"
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
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSLIS2HLBNA7JBEJDD2NAJHDSSYM%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoidW1MdVN3dTBMRHMrNzhVYk5VUWE1c1pOeXNNNkd2akhlMlVnVkRzcVZBRT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E2Xui7WUUJ%5F7N5gOaJq12FRdZFb0Lp108IihPt60fvdU%26version%3DPublished&cb=63824657845&encodeFailures=1&width=1137&height=376",
    alt: "image1",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSI7DTFB6QSBFFEK54A56KOJETIZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiTnBBOFJSOW9qR3YyZllsWmdHSjQzSWhmLzU5SjZXQUFPZ0o0MkppcHAyaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2EpkAeyIXsePNqUqVE4dHJhCyk9g3dZ3iQX%2DpHbFf%5Fa1Y%26version%3DPublished&cb=63760246400&encodeFailures=1&width=617&height=872",
    alt: "image2",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSPW3MQIP7LXTZGKUWL3WXLIYUED%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiQ29rSlB6R2JIQVE0Y2d1MHpRdTJqRm5XTnhpdEt6Mm5Uc3dtK0o3dWRKWT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2EOGL1Zx4VM5%5F5lnnxj5%2DmtOcvyv3Pyo3doctrzSHs2DQ%26version%3DPublished&cb=63762486858&encodeFailures=1&width=1024&height=625",
    alt: "image3",
  },
]);

const it2 = ref([
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOMBYQCCH3BYRAKTZP5FTJ2JF7P%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiVmIxaFlmMHBGd2JoUHV4Ui9LU1YvOHBLK1JoaUtpVWZIc3pwTWZSS1o0RT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2EnVOix5qbYGrLW3ebDKhjsKSfIxs79KWTl09JBoqbTyk%26version%3DPublished&cb=63822476676&encodeFailures=1&width=190&height=171",
    h5: "公司团队",
    pf: ["人工智能", "智能制造", "工业机器人"],
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOMBYQCCH3BYRAKTZP5FTJ2JF7P%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiVmIxaFlmMHBGd2JoUHV4Ui9LU1YvOHBLK1JoaUtpVWZIc3pwTWZSS1o0RT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2EnVOix5qbYGrLW3ebDKhjsKSfIxs79KWTl09JBoqbTyk%26version%3DPublished&cb=63822476676&encodeFailures=1&width=190&height=171",
    h5: "公司团队",
    pf: ["人工智能", "智能制造", "工业机器人"],
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOMBYQCCH3BYRAKTZP5FTJ2JF7P%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiVmIxaFlmMHBGd2JoUHV4Ui9LU1YvOHBLK1JoaUtpVWZIc3pwTWZSS1o0RT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2EnVOix5qbYGrLW3ebDKhjsKSfIxs79KWTl09JBoqbTyk%26version%3DPublished&cb=63822476676&encodeFailures=1&width=190&height=171",
    h5: "公司团队",
    pf: ["人工智能", "智能制造", "工业机器人"],
  },
]);

const it3 = ref([
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIV2QSROD3YVZFYAQKHUKBMQKRM%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiN25oUVJ5SUh3QmRPUTFVL0J0dlhwTGVpYTF1NDRlRUs5TDBQM1VOYUxhaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Ex7CZ2H6T3HVD4yoEUTuDbLtC%5FJAZ1wcnUF1fz8VAzR0%26version%3DPublished&cb=63824918465&encodeFailures=1&width=197&height=196",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIV2QSROD3YVZFYAQKHUKBMQKRM%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiN25oUVJ5SUh3QmRPUTFVL0J0dlhwTGVpYTF1NDRlRUs5TDBQM1VOYUxhaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Ex7CZ2H6T3HVD4yoEUTuDbLtC%5FJAZ1wcnUF1fz8VAzR0%26version%3DPublished&cb=63824918465&encodeFailures=1&width=197&height=196",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIV2QSROD3YVZFYAQKHUKBMQKRM%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiN25oUVJ5SUh3QmRPUTFVL0J0dlhwTGVpYTF1NDRlRUs5TDBQM1VOYUxhaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Ex7CZ2H6T3HVD4yoEUTuDbLtC%5FJAZ1wcnUF1fz8VAzR0%26version%3DPublished&cb=63824918465&encodeFailures=1&width=197&height=196",
    h5: "公司团队",
    pf: ["人工智能", "智能制造、工业机器人", "工业机器人"],
  },
]);

const it4 = ref([
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIV2QSROD3YVZFYAQKHUKBMQKRM%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiN25oUVJ5SUh3QmRPUTFVL0J0dlhwTGVpYTF1NDRlRUs5TDBQM1VOYUxhaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Ex7CZ2H6T3HVD4yoEUTuDbLtC%5FJAZ1wcnUF1fz8VAzR0%26version%3DPublished&cb=63824918465&encodeFailures=1&width=197&height=196",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIV2QSROD3YVZFYAQKHUKBMQKRM%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiN25oUVJ5SUh3QmRPUTFVL0J0dlhwTGVpYTF1NDRlRUs5TDBQM1VOYUxhaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Ex7CZ2H6T3HVD4yoEUTuDbLtC%5FJAZ1wcnUF1fz8VAzR0%26version%3DPublished&cb=63824918465&encodeFailures=1&width=197&height=196",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIV2QSROD3YVZFYAQKHUKBMQKRM%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiN25oUVJ5SUh3QmRPUTFVL0J0dlhwTGVpYTF1NDRlRUs5TDBQM1VOYUxhaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Ex7CZ2H6T3HVD4yoEUTuDbLtC%5FJAZ1wcnUF1fz8VAzR0%26version%3DPublished&cb=63824918465&encodeFailures=1&width=197&height=196",
    h5: "工业机器人",
    zf: "提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。",
  },
]);

const it6 = ref([
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i1",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i2",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i3",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i4",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i5",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i6",
  },
]);

const kh = ref([
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i1",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i2",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i3",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i4",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i5",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i6",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i7",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i8",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i9",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i1",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i2",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i3",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i4",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i5",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i6",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
    alt: "i7",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSOGXTHLAYLXURB22TADBE2K4BLI%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoibXluTXIvc2RzYmZEbkNJUnpxcEJJTm0xN0JRUnpacTRmN2pXdWZKb3hZaz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2Eduy79V4guoNipAaQ%5FivxWku%2D0JuNrY9RCBGlwN9tda0%26version%3DPublished&cb=63825158020&encodeFailures=1&width=910&height=872",
    alt: "i8",
  },
  {
    src: "https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSNOZIX6HI3VH5DZK5IAROHAGJCZ%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjM4NDAwIiwiZXhwIjoiMTY4OTY2MDAwMCIsImVuZHBvaW50dXJsIjoiencwYzVEanVoQjRNZzRDRXpJRHZiUE0ybUE0TWlRbkhwUWNFQm1sTkFDbz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1Mi4xOTIuNzkuMjUyIn0%2E4DgdH44ntYWpZxHRL1j0hLu0mb3UWB4pezWhFR78%5FDs%26version%3DPublished&cb=63825158020&encodeFailures=1&width=1200&height=800",
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
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      width: 80%;
      p {
        color: #fff;
        font-size: 0.04rem;
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
      background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSMR7TRXRDAZSNELQHO7A7GABING%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NTYyODAwIiwiZXhwIjoiMTY4OTU4NDQwMCIsImVuZHBvaW50dXJsIjoiMThSNDNlcWVXb20wSThHWkhpd0dXdktTYWtWVGhRZUdUR0JXTWZ2SEsyTT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNC4yMTcuNjYuNiJ9%2Eh75QxiBb0RjErEKkAKpy3dVBrc9meixdWD%5FAlKBymBg%26version%3DPublished&cb=63825159724&encodeFailures=1&width=1920&height=872);
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(src/img/linshi/4.jpg);
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
      background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSLIXFFVBUNOQZB3R7O7Y6OS4I3I%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NTUyMDAwIiwiZXhwIjoiMTY4OTU3MzYwMCIsImVuZHBvaW50dXJsIjoiZWYzZENFL2R4YS9IZVZjbnFoeGFjTkt1c1pULzJ0cnBXZy9hZ0UyU3E4ND0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNC4yMTcuNjYuNiJ9%2E0HoEUgqZuXfvxeTdPY6k3IhWuRyWdr03lDQwvAntYNg%26version%3DPublished&cb=63825157035&encodeFailures=1&width=1920&height=872);
      .biaoti {
        width: 100%;
        height: 0.88rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url(src/img/linshi/4.jpg);
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
        background: url(src/img/linshi/4.jpg);
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
              width: 50%;
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
        background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIOCKT37ESN7FEIMGY4LS7S5OUY%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5MzE0NDAwIiwiZXhwIjoiMTY4OTMzNjAwMCIsImVuZHBvaW50dXJsIjoiOVIyalZOak5FVk9BdTIrYS9iOEhjV3FvSmEreHVVRG1McG9VUlhZbW5Ldz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI0My4yMDEuNTUuMTQ0In0%2E01Ndu47reETky5QcKEKkc2A7Y%2Dno5SlYYOPl8W3FHuc%26version%3DPublished&cb=63824920778&encodeFailures=1&width=1920&height=872);
        background-size: cover;
        margin-bottom: 0.08rem;
        .biaoti {
          width: 100%;
          height: 0.88rem;
          display: flex;
          justify-content: center;
          align-items: center;
          background: url(src/img/linshi/4.jpg);
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
            background: url(src/img/tubiao/left.png);
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
            background: url(src/img/linshi/3.jpg);
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
        background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSLURGNTM4LK5BGJNT7YDSAAORSC%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5NjcwODAwIiwiZXhwIjoiMTY4OTY5MjQwMCIsImVuZHBvaW50dXJsIjoicFk5K3lwVWFvRloxcUNYS1pqWmdycStkdzlGRXNQK25jVEFFMnhHOFZvST0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI1NC4yNDUuMjAyLjE0NCJ9%2EqeEVQFbRuKjn%5F9HLG2S6qs1QUS9MdKd0HeNfGVDmv0E%26version%3DPublished&cb=63824914131&encodeFailures=1&width=447&height=872);
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        .nr {
          width: 100%;
          height: 100%;
          display: flex;
          // justify-content: center;
          align-items: center;
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
          background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSMBWGUXJPKIJFCILTBOL4MI4EXB%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5MzI1MjAwIiwiZXhwIjoiMTY4OTM0NjgwMCIsImVuZHBvaW50dXJsIjoiYWxTaFJURjNjRlNOMnU3cGxFYks0YVFEcWhJRHIwczdVN3FzUmw4V05uRT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNS44OC4xMzYuMTc0In0%2Eq0ElY6eFXRo1JL2awyC3%5F35jJRtV47UMOQmbPLMnd%5F0%26version%3DPublished&cb=63824923366&encodeFailures=1&width=1920&height=872);
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
          background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSPDEZNI7FXWDNEKI7XGQJJVQPUU%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5MzI1MjAwIiwiZXhwIjoiMTY4OTM0NjgwMCIsImVuZHBvaW50dXJsIjoiUVBVdlhQVDJtWCtRUUpORlN5T3poS1dlNFRWVW9nOWEvMkVudmdVNDBiND0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiIzNS44OC4xMzYuMTc0In0%2EYRplfq5oVbDdzV7mZjRHk%5FoAsY4IGAByifki9uzpv3g%26version%3DPublished&cb=63824923366&encodeFailures=1&width=1920&height=872);
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
      background: url(https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=jpg&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSIOCKT37ESN7FEIMGY4LS7S5OUY%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5MzE0NDAwIiwiZXhwIjoiMTY4OTMzNjAwMCIsImVuZHBvaW50dXJsIjoiOVIyalZOak5FVk9BdTIrYS9iOEhjV3FvSmEreHVVRG1McG9VUlhZbW5Ldz0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI0My4yMDEuNTUuMTQ0In0%2E01Ndu47reETky5QcKEKkc2A7Y%2Dno5SlYYOPl8W3FHuc%26version%3DPublished&cb=63824920778&encodeFailures=1&width=1920&height=872);
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