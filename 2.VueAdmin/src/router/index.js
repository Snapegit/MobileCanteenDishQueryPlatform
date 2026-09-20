	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import address from '@/views/address/list'
	import peisongjiedan from '@/views/peisongjiedan/list'
	import peisongdingdan from '@/views/peisongdingdan/list'
	import storeup from '@/views/storeup/list'
	import caipinxinxi from '@/views/caipinxinxi/list'
	import dingdanwancheng from '@/views/dingdanwancheng/list'
	import cart from '@/views/cart/list'
	import caipinfenlei from '@/views/caipinfenlei/list'
	import qucandian from '@/views/qucandian/list'
	import yonghu from '@/views/yonghu/list'
	import orders from '@/views/orders/list'
	import config from '@/views/config/list'
	import discusscaipinxinxi from '@/views/discusscaipinxinxi/list'
	import peisongyuanRegister from '@/views/peisongyuan/register'
	import peisongyuanCenter from '@/views/peisongyuan/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/peisongyuanCenter',
			name: '配送员个人中心',
			component: peisongyuanCenter
		}
		,{
			path: '/news',
			name: '公告信息',
			component: news
		}
		,{
			path: '/address',
			name: '地址',
			component: address
		}
		,{
			path: '/peisongjiedan',
			name: '配送接单',
			component: peisongjiedan
		}
		,{
			path: '/peisongdingdan',
			name: '配送订单',
			component: peisongdingdan
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/caipinxinxi',
			name: '菜品信息',
			component: caipinxinxi
		}
		,{
			path: '/dingdanwancheng',
			name: '订单完成',
			component: dingdanwancheng
		}
		,{
			path: '/cart',
			name: '购物车',
			component: cart
		}
		,{
			path: '/caipinfenlei',
			name: '菜品分类',
			component: caipinfenlei
		}
		,{
			path: '/qucandian',
			name: '取餐点',
			component: qucandian
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/orders',
			name: '订单管理',
			component: orders
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/discusscaipinxinxi',
			name: '菜品信息评论',
			component: discusscaipinxinxi
		}
		]
	},
	{
		path: '/peisongyuanRegister',
		name: '配送员注册',
		component: peisongyuanRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
