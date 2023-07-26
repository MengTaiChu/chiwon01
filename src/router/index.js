import { createRouter, createWebHashHistory } from "vue-router";

const routes = [
  {
    path: '/',
    redirect: '/home' // 将根路径重定向到 '/home'
  },
  {
    path: '/home',
    component: () => import('../views/Home.vue'),
  }, {
    path: '/about',
    component: () => import('../views/About.vue'),
  }, {
    path: '/chanpin',
    component: () => import('../views/ChanPin.vue'),
  }, {
    path: '/xiangmu',
    component: () => import('../views/XiangMu.vue'),
  },
]
const router = createRouter({
  history: createWebHashHistory(),
  routes
})
export default router