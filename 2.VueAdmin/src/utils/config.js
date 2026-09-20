const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/cl52299141/client/h5/index.html'
        }
    },
    getProjectName(){
        return {
            projectName: "基于微信小程序的食堂菜品查询平台"
        } 
    }
}
export default config
