import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Messages from '../pages/messages/list'
import Forum from '../pages/forum/list'
import ForumAdd from '../pages/forum/add'
import ForumDetail from '../pages/forum/detail'
import MyForumList from '../pages/forum/myForumList'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import payList from '../pages/pay'

import xueshengList from '../pages/xuesheng/list'
import xueshengDetail from '../pages/xuesheng/detail'
import xueshengAdd from '../pages/xuesheng/add'
import zhaopingongsiList from '../pages/zhaopingongsi/list'
import zhaopingongsiDetail from '../pages/zhaopingongsi/detail'
import zhaopingongsiAdd from '../pages/zhaopingongsi/add'
import jianzhifenleiList from '../pages/jianzhifenlei/list'
import jianzhifenleiDetail from '../pages/jianzhifenlei/detail'
import jianzhifenleiAdd from '../pages/jianzhifenlei/add'
import zhaopinxinxiList from '../pages/zhaopinxinxi/list'
import zhaopinxinxiDetail from '../pages/zhaopinxinxi/detail'
import zhaopinxinxiAdd from '../pages/zhaopinxinxi/add'
import toudixinxiList from '../pages/toudixinxi/list'
import toudixinxiDetail from '../pages/toudixinxi/detail'
import toudixinxiAdd from '../pages/toudixinxi/add'
import mianshitongzhiList from '../pages/mianshitongzhi/list'
import mianshitongzhiDetail from '../pages/mianshitongzhi/detail'
import mianshitongzhiAdd from '../pages/mianshitongzhi/add'
import luquxinxiList from '../pages/luquxinxi/list'
import luquxinxiDetail from '../pages/luquxinxi/detail'
import luquxinxiAdd from '../pages/luquxinxi/add'
import newstypeList from '../pages/newstype/list'
import newstypeDetail from '../pages/newstype/detail'
import newstypeAdd from '../pages/newstype/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'
import systemintroList from '../pages/systemintro/list'
import systemintroDetail from '../pages/systemintro/detail'
import systemintroAdd from '../pages/systemintro/add'
import smsregistercodeList from '../pages/smsregistercode/list'
import smsregistercodeDetail from '../pages/smsregistercode/detail'
import smsregistercodeAdd from '../pages/smsregistercode/add'
import xueshengjianliAdd from '../pages/xueshengjianli/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'pay',
					component: payList,
				},
				{
					path: 'messages',
					component: Messages
				},
				{
					path: 'forum',
					component: Forum
				},
				{
					path: 'forumAdd',
					component: ForumAdd
				},
				{
					path: 'forumDetail',
					component: ForumDetail
				},
				{
					path: 'myForumList',
					component: MyForumList
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'xuesheng',
					component: xueshengList
				},
				{
					path: 'xueshengDetail',
					component: xueshengDetail
				},
				{
					path: 'xueshengAdd',
					component: xueshengAdd
				},
				{
					path: 'zhaopingongsi',
					component: zhaopingongsiList
				},
				{
					path: 'zhaopingongsiDetail',
					component: zhaopingongsiDetail
				},
				{
					path: 'zhaopingongsiAdd',
					component: zhaopingongsiAdd
				},
				{
					path: 'jianzhifenlei',
					component: jianzhifenleiList
				},
				{
					path: 'jianzhifenleiDetail',
					component: jianzhifenleiDetail
				},
				{
					path: 'jianzhifenleiAdd',
					component: jianzhifenleiAdd
				},
				{
					path: 'zhaopinxinxi',
					component: zhaopinxinxiList
				},
				{
					path: 'zhaopinxinxiDetail',
					component: zhaopinxinxiDetail
				},
				{
					path: 'zhaopinxinxiAdd',
					component: zhaopinxinxiAdd
				},
				{
					path: 'toudixinxi',
					component: toudixinxiList
				},
				{
					path: 'toudixinxiDetail',
					component: toudixinxiDetail
				},
				{
					path: 'toudixinxiAdd',
					component: toudixinxiAdd
				},
				{
					path: 'mianshitongzhi',
					component: mianshitongzhiList
				},
				{
					path: 'mianshitongzhiDetail',
					component: mianshitongzhiDetail
				},
				{
					path: 'mianshitongzhiAdd',
					component: mianshitongzhiAdd
				},
				{
					path: 'luquxinxi',
					component: luquxinxiList
				},
				{
					path: 'luquxinxiDetail',
					component: luquxinxiDetail
				},
				{
					path: 'luquxinxiAdd',
					component: luquxinxiAdd
				},
				{
					path: 'newstype',
					component: newstypeList
				},
				{
					path: 'newstypeDetail',
					component: newstypeDetail
				},
				{
					path: 'newstypeAdd',
					component: newstypeAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
				{
					path: 'systemintro',
					component: systemintroList
				},
				{
					path: 'systemintroDetail',
					component: systemintroDetail
				},
				{
					path: 'systemintroAdd',
					component: systemintroAdd
				},
				{
					path: 'smsregistercode',
					component: smsregistercodeList
				},
				{
					path: 'smsregistercodeDetail',
					component: smsregistercodeDetail
				},
				{
					path: 'smsregistercodeAdd',
					component: smsregistercodeAdd
				},
				{
					path: 'xueshengjianli',
					component: xueshengjianliAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
