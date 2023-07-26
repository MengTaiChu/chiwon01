/* 
开发环境
测试环境
线上环境

当前环境
*/
const env = import.meta.env.MODE || 'prod'

const EnvConfig = {
    development: {
        baseApi: '/api',
        mockApi: 'https://www.fastmock.site/mock/fd691808c444d01767b795d758775d37/api/'

    },
    test: {
        baseApi: '//test.future.com/api',
        mockApi: 'https://www.fastmock.site/mock/fd691808c444d01767b795d758775d37/api/'

    },
    pro: {
        baseApi: '//future.com/api',
        mockApi: 'https://www.fastmock.site/mock/fd691808c444d01767b795d758775d37/api/'

    },
}


export default {
    env,
    //mock总开关
    mock: true,
    ...EnvConfig[env]
}