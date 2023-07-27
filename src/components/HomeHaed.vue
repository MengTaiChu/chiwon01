<template>
  <div class="head">
    <div class="daohan">
      <img src="../img/logo/zh-logo.png" alt="" class="logo" />
      <div class="fenlei">
        <ul>
          <li>
            <el-menu
              mode="horizontal"
              class="el-menu-demo"
              @select="handleSelect"
              style="border: 0"
            >
              <el-menu-item
                v-for="item in fenlei"
                :key="item"
                @click="ritem(item)"
              >
                {{ item.label }}
              </el-menu-item>
            </el-menu>
          </li>
          <li>1888888888</li>
        </ul>
      </div>
      <div class="ycaidan">
        <el-button
          type="text"
          style="margin-left: 16px"
          @click="drawer = true"
          class="menubtn"
        >
          <img src="../img/tubiao/caidan.png" alt="" />
        </el-button>

        <el-drawer v-model="drawer" :with-header="false">
          <ul class="menuUl">
            <li
              v-for="item in fenlei"
              :key="item"
              :style="{ color: item.path === $route.path ? '#08d9d6' : '' }"
            >
              <router-link :to="item.path">
                {{ item.label }}
              </router-link>
            </li>
          </ul>
        </el-drawer>
      </div>
    </div>
  </div>
</template>

<script setup >
import { getCurrentInstance, ref, onMounted } from "vue";
import { useRouter } from "vue-router";

// const fenlei = ref([
//   {
//     path: "/home",
//     name: "home",
//     label: "首页",
//   },
//   {
//     path: "/chanpin",
//     name: "chanpin",
//     label: "产品",
//   },
//   {
//     path: "/xiangmu",
//     name: "xiangmu",
//     label: "项目",
//   },
//   {
//     path: "/about",
//     name: "about",
//     label: "联系我们",
//   },
// ]);

const { proxy } = getCurrentInstance();
const fenlei = ref([]);
const getFenlei = async () => {
  const res = await proxy.$api.getHomeHaedData();
  // console.log(res);
  fenlei.value = res.fenlei;
};

onMounted(getFenlei);
const drawer = ref(false);

const ritem = (item) => {
  console.log(item);
  if (item.path) {
    const currentRoute = router.currentRoute.value.path;
    if (currentRoute === item.path) {
      // 路由为当前时刷新页面
      router.go(0);
    } else {
      router.push({ path: item.path }).catch((err) => {});
    }
  }
};
const router = useRouter();
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
        .el-drawer__body {
          padding: 0;
        }
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
    height: 0.94rem;
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
    height: 0.88rem;
    img {
      width: 100%;
      height: 100%;
      margin: 0;
      padding: 0;
    }
    .fenlei {
      margin-left: 0.8rem;
      width: 100%;
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
          .el-menu-demo {
            background-color: rgba(255, 255, 255, 0);
          }
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

