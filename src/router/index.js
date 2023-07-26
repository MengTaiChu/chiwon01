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
    component: () => import('../views/about.vue'),
  }, {
    path: '/chanpin',
    component: () => import('../views/chanpin.vue'),
  }, {
    path: '/xiangmu',
    component: () => import('../views/xiangmu.vue'),
  },
]
const router = createRouter({
  history: createWebHashHistory(),
  routes
})
export default router