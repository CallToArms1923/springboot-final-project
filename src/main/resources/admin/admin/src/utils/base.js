const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootfinalproject/",
            name: "springbootfinalproject",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootfinalproject/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "智聘兼职发布平台"
        } 
    }
}
export default base
