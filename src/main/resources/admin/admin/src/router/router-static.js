import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import toudixinxi from '@/views/modules/toudixinxi/list'
    import forum from '@/views/modules/forum/list'
    import zhaopinxinxi from '@/views/modules/zhaopinxinxi/list'
    import qiyepingjia from '@/views/modules/qiyepingjia/list'
    import systemintro from '@/views/modules/systemintro/list'
    import zhaopingongsi from '@/views/modules/zhaopingongsi/list'
    import messages from '@/views/modules/messages/list'
    import jianzhifenlei from '@/views/modules/jianzhifenlei/list'
    import luquxinxi from '@/views/modules/luquxinxi/list'
    import config from '@/views/modules/config/list'
    import mianshitongzhi from '@/views/modules/mianshitongzhi/list'
    import newstype from '@/views/modules/newstype/list'


//2.配置路由   注意：名字
export const routes = [{
    path: '/',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '主页',
      component: Home,
      meta: {icon:'', title:'center', affix: true}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '招聘资讯',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/xuesheng',
        name: '用户',
        component: xuesheng
      }
      ,{
	path: '/toudixinxi',
        name: '投递信息',
        component: toudixinxi
      }
      ,{
	path: '/forum',
        name: '论坛交流',
        component: forum
      }
      ,{
	path: '/zhaopinxinxi',
        name: '招聘信息',
        component: zhaopinxinxi
      }
      ,{
	path: '/qiyepingjia',
        name: '评分评价管理',
        component: qiyepingjia
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/zhaopingongsi',
        name: '招聘公司',
        component: zhaopingongsi
      }
      ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
      ,{
	path: '/jianzhifenlei',
        name: '兼职分类',
        component: jianzhifenlei
      }
      ,{
	path: '/luquxinxi',
        name: '录取信息',
        component: luquxinxi
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/mianshitongzhi',
        name: '面试通知',
        component: mianshitongzhi
      }
      ,{
	path: '/newstype',
        name: '招聘资讯分类',
        component: newstype
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
