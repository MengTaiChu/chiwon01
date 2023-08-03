//整个项目api的管理
import request from "./request"
export default {
    //关于部分的数据获取
    getHomeFootData(params) {
        return request({
            url: '/homeFoot/getData',
            method: 'get',
            data: params,
            mock: true
        })
    },
    getHomeHaedData(params) {
        return request({
            url: '/homeHaed/getData',
            method: 'get',
            data: params,
            mock: true
        })
    },
    getItData(params) {
        return request({
            url: '/homeIt/getData',
            method: 'get',
            data: params,
            mock: true
        })
    },
    getXmitData(params) {
        return request({
            url: '/xmIt/getData',
            method: 'get',
            data: params,
            mock: true
        })
    },
    getAboutHomeData(params) {
        return request({
            url: '/aboutHome/getData',
            method: 'get',
            data: params,
            mock: true
        })
    }
}

