export default {
    getHomeFootData: () => {
        return {
            code: 200,
            data: {
                gy: [
                    {
                        name: "首页",
                        fenz: "",
                        path: "/",
                    },
                    {
                        name: "技术支持",
                        fenz: [
                            {
                                pf: "人工智能",
                                path: "/",
                            },
                            {
                                pf: "智能制造",
                                path: "/",
                            },
                            {
                                pf: "工业机器人",
                                path: "/",
                            },
                        ],
                        path: "/chanpin",
                    },
                    {
                        name: "项目成果",
                        fenz: [
                            {
                                pf: "人工智能",
                                path: "/",
                            },
                            {
                                pf: "智能制造",
                                path: "/",
                            },
                            {
                                pf: "工业机器人",
                                path: "/",
                            },
                        ],
                        path: "/xiangmu",
                    },
                    {
                        name: "联系我们",
                        fenz: [
                            {
                                pf: "人工智能",
                                path: "/about",
                            },
                            {
                                pf: "智能制造",
                                path: "/about",
                            },
                            {
                                pf: "工业机器人",
                                path: "/about",
                            },
                        ],
                        path: "/about",
                    },
                ]
            }
        }
    }
}