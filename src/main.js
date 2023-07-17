
import { createApp } from 'vue'
import App from './App.vue'
// import router from './router'

import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'

import naive from 'naive-ui/es/preset'

const app = createApp(App)

// app.use(router)
app.use(ElementPlus)
app.use(naive)
app.mount('#app')
