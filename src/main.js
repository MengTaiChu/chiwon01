import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './api/mock.js'

import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'

import naive from 'naive-ui/es/preset'

import Vant from 'vant'
import 'vant/lib/index.css'

import Antd from 'ant-design-vue';
import 'ant-design-vue/dist/reset.css';

// import api from './api/api'
// app.config.globalProperties.$api = api


const app = createApp(App)

app.use(router)
app.use(ElementPlus)
app.use(naive)
app.use(Vant)
app.use(Antd)
app.mount('#app')
