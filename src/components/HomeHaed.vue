<template>
  <div class="head">
    <div class="daohan">
      <img src="../img/logo/zh-logo.png" alt="" class="logo" />
      <div class="fenlei">
        <ul>
          <li v-for="item in fenlei" :key="item" @click="flItem(item)">
            <RouterLink :to="item.path">
              {{ item.label }}
            </RouterLink>
          </li>
        </ul>
      </div>
      <div class="ycaidan">
        <el-button
          type="text"
          style="margin-left: 16px"
          @click="drawer = true"
          class="menubtn"
        >
          <img
            src="https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=MDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0fFNQTw&docid=https%3A%2F%2Fmy%2Emicrosoftpersonalcontent%2Ecom%2F%5Fapi%2Fv2%2E0%2Fdrives%2Fb%21ivPsjX9Cw0WecegKstxWKaKH9O9%5FLNtPmyW2OsDLYDblVzw8rNhqQ7KGyBCL36UY%2Fitems%2F01A4UWVSN7XOUT7MJGKNGLSH2MJGBOMBGB%3Ftempauth%3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9%2EeyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvbXkubWljcm9zb2Z0cGVyc29uYWxjb250ZW50LmNvbUA5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJpc3MiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAiLCJuYmYiOiIxNjg5ODk3NjAwIiwiZXhwIjoiMTY4OTkxOTIwMCIsImVuZHBvaW50dXJsIjoibXBDNUpDOGk4ZTc2QlF6MC93OVIwOGsvVE1GTzgvVDREcFJGcTdQQk5yWT0iLCJlbmRwb2ludHVybExlbmd0aCI6IjE2NCIsImlzbG9vcGJhY2siOiJUcnVlIiwidmVyIjoiaGFzaGVkcHJvb2Z0b2tlbiIsInNpdGVpZCI6Ik9HUmxZMll6T0dFdE5ESTNaaTAwTldNekxUbGxOekV0WlRnd1lXSXlaR00xTmpJNSIsImFwcF9kaXNwbGF5bmFtZSI6IkNvbnN1bWVyIEFwcDogMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDQ4MTcxMGE0IiwiYXBwaWQiOiIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwNDgxNzEwYTQiLCJ0aWQiOiI5MTg4MDQwZC02YzY3LTRjNWItYjExMi0zNmEzMDRiNjZkYWQiLCJ1cG4iOiIyNTQzMDU3ODQxQHFxLmNvbSIsInB1aWQiOiIwMDAzMDAwMDMyRjg2QzUwIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MDAwMzAwMDAzMmY4NmM1MEBsaXZlLmNvbSIsInNjcCI6ImFsbHNpdGVzLmZ1bGxjb250cm9sIiwic2lkIjoiMTI2NDU2NDE4ODM5ODQ2OTc3OTYiLCJ0dCI6IjIiLCJpcGFkZHIiOiI3NC4yMDcuMjQwLjEyIn0%2EItCPYJ8aIfONvBnm%2DanFbHXIvuG8ZRFkYtuGTP7VD2s%26version%3DPublished&cb=63824740845&encodeFailures=1&width=64&height=40"
            alt=""
          />
        </el-button>

        <el-drawer v-model="drawer" :with-header="false">
          <ul class="menuUl">
            <li v-for="item in fenlei" :key="item" @click="flItem(item)">
              <RouterLink :to="item.path">
                {{ item.label }}
              </RouterLink>
            </li>
            <!-- <li style="color: aquamarine">首页</li>
            <li>产品</li>
            <li>项目</li>
            <li>联系我们</li> -->
          </ul>
        </el-drawer>
      </div>
    </div>
  </div>
</template>

<script setup >
import { ref, onMounted } from "vue";
import { useRouter, RouterLink } from "vue-router";
const router = useRouter();

const fenlei = ref([
  {
    path: "/home",
    name: "home",
    label: "首页",
  },
  {
    path: "/chanpin",
    name: "chanpin",
    label: "产品",
  },
  {
    path: "/xiangmu",
    name: "xiangmu",
    label: "项目",
  },
  {
    path: "/about",
    name: "about",
    label: "联系我们",
  },
  {
    path: "",
    name: "",
    label: "18888888888",
  },
]);

const drawer = ref(false);

const flItem = (item) => {
  router.push({
    name: item.name,
  });
};

onMounted(() => {});
</script>

<style lang="less" scoped>
//移动端
@media screen and (max-width: 1023px) {
  .head {
    height: 0.44rem;
    width: 100%;
    display: flex;
    align-items: flex-start;
    justify-content: center;
    position: fixed;
    z-index: 999;
    background-image: linear-gradient(
      rgba(51, 100, 174, 0.34) 45%,
      rgba(51, 100, 174, 0.06),
      rgba(51, 100, 174, 0)
    );
  }
  .daohan {
    width: 100%;
    height: 0.44rem;
    display: flex;
    img {
      height: 0.28rem;
    }
    .logo {
      margin-left: 0.24rem;
    }
    .ycaidan {
      display: flex;
      width: 100%;
      height: 100%;
      justify-content: flex-end;
      font-size: 0.16rem;
      .menubtn {
        width: 0.24rem;
        height: 0.24rem;
        margin-right: 0.12rem;

        img {
          width: 100%;
          height: 100%;
          background-size: cover;
        }
      }

      .menuUl {
        display: flex;
        flex-direction: column;
        align-items: center;
        li {
          margin-bottom: 0.12rem;
          font-size: 0.16rem;
        }
      }
    }
    .fenlei {
      display: none;
    }
  }
}

//PC
@media screen and (min-width: 1024px) {
  .head {
    height: 1.2rem;
    width: 100%;
    display: flex;
    align-items: flex-start;
    justify-content: center;
    position: fixed;
    z-index: 999;
    background-image: linear-gradient(
      rgba(51, 100, 174, 0.34) 45%,
      rgba(51, 100, 174, 0.06),
      rgba(51, 100, 174, 0)
    );
  }
  .daohan {
    display: flex;
    // background-color: rgba(255, 0, 0, 0.315);
    height: 0.88rem;
    // width: 100%;
    // margin-left: 0.8rem;
    .fenlei {
      margin-left: 0.8rem;
      width: 100%;
      // display: flex;
      // align-items: center;
      ul {
        display: flex;
        height: 100%;
        li {
          list-style: none;
          font-size: 0.24rem;
          color: #fff;
          height: 100%;
          display: flex;
          align-items: center;
          margin-left: 0.4rem;
          margin-right: 0.4rem;
        }
        li:first-child {
          color: aquamarine;
        }
      }
      // background-color: rgba(255, 0, 0, 0.321);
    }

    .ycaidan {
      display: none;
    }
  }
  .router-link {
    text-decoration: none;
    color: inherit;
  }
}
</style>

