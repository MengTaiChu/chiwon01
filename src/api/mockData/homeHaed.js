export default {
    getHomeHaedData: () => {
        return {
            code: 200,
            data: {
                fenlei: [
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
                ]
            }
        }
    }
}