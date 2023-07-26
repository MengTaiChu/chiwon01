import axios from "axios";
import config from "../config";
import { ElMessage } from "element-plus";

const NETWORK_ERROR = "异常请重试"

// 创建axios实例对象
const service = axios.create({
    baseURL: config.baseApi
})

service.interceptors.request.use((req) => {
    return req
})

service.interceptors.response.use((res) => {
    const { code, data, msg } = res.data
    if (code == 200) {
        return data

    } else {
        //报错
        ElMessage.error(msg || NETWORK_ERROR)
        return Promise.reject(msg || NETWORK_ERROR)
    }
})

//封装核心
function request(options) {
    //这里同
    // {
    //     method: 'get',
    //         data: {}
    // }
    options.method = options.method || 'get'
    if (options.method.toLowerCase() == 'get') {
        options.params = options.data
    }
    //对mock的处理
    let isMock = config.mock
    if (typeof options.mock !== 'undefined') {
        isMock = options.mock
    }
    //对线上环境做处理
    if (config.env == 'prod') {
        //线上环境不给用mock
        service.defaults.baseURL = config.baseApi
    } else {
        service.defaults.baseURL = isMock ? config.mockApi : config.baseApi
    }
    return service(options)
}

export default request