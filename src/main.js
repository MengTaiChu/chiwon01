import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './api/mock.js'

import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'

import naive from 'naive-ui/es/preset'

import { Swipe, SwipeItem } from 'vant'
import 'vant/lib/index.css'
import { Popup } from 'vant'
import { Icon } from 'vant'
import api from './api/api'


const app = createApp(App)

app.config.globalProperties.$api = api
app.use(router)
app.use(ElementPlus)
app.use(naive)
app.use(Swipe)
app.use(SwipeItem)
app.use(Popup)
app.use(Icon)

app.mount('#app')
