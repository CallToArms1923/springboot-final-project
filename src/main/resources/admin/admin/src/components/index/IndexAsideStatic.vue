<template>
	<div class="menu-preview">
		<el-menu v-if="menuListLoaded" ref="menu" :default-active="menuDefaultActive" :style='{"border":0,"padding":"0","boxShadow":"none","margin":"0","borderColor":"#ddd","transition":"all 0s ease","listStyle":"none","background":"#f0f0f0","borderWidth":"0 0 0px","width":"100%","position":"inherit","borderStyle":"solid","display":"flex","flexWrap":"wrap"}' class="el-menu-horizontal-demo">
		    <!-- 系统首页 -->
		    <el-menu-item class="home" :style='{"border":"0","padding":"0","listStyle":"none","margin":"0","color":"#333","background":"#f0f0f0","width":"120px","height":"60px"}' @click.native="menuHandler('')" index="/">
				<div class="el-tooltip" :style='{"padding":"0 15px","display":"flex","alignItems":"center","justifyContent":"center","height":"60px","width":"120px"}'>
					<i :style='{"verticalAlign":"middle","margin":"0 5px 0 0","color":"inherit","textAlign":"center","display":"inline-block","fontSize":"18px"}' class="icon iconfont icon-shouye-zhihui"></i>
					<span :style='{"verticalAlign":"middle","fontSize":"14px","color":"inherit","textAlign":"center","display":"inline-block","whiteSpace":"nowrap"}'>系统首页</span>
				</div>
			</el-menu-item>
			<!-- 其他平级菜单（除了系统管理和用户信息） -->
			<template v-for="(menu,index) in menuList.backMenu">
				<!-- 系统管理：保留子菜单结构 -->
				<el-submenu v-if="menu.menu === '系统管理'" class="other menu-system" popper-class="other" :popper-append-to-body="false" :style='{"border":"0","padding":"0","listStyle":"none","margin":"0","color":"#333","background":"#f0f0f0","width":"120px","height":"60px"}' :index="'system-' + index">
					<template slot="title">
						<div :style='{"padding":"0 15px","display":"flex","alignItems":"center","justifyContent":"center","height":"60px","width":"120px"}'>
							<i :style='{"verticalAlign":"middle","margin":"0 5px 0 0","color":"inherit","textAlign":"center","display":"inline-block","fontSize":"18px"}' class="el-icon-menu" :class="icons[index]"></i>
							<span :style='{"verticalAlign":"middle","fontSize":"14px","color":"inherit","textAlign":"center","display":"inline-block","whiteSpace":"nowrap"}'>{{menu.menu}}</span>
						</div>
					</template>
					<el-menu-item v-for="(child,sort) in menu.child" :key="sort" :index="'/'+child.tableName" @click="menuHandler(child.tableName)">{{ child.menu }}</el-menu-item>
				</el-submenu>
				<!-- 其他菜单：平级一级菜单 -->
				<el-menu-item v-else-if="menu.menu !== '用户信息'" class="other" :style='{"border":"0","padding":"0","listStyle":"none","margin":"0","color":"#333","background":"#f0f0f0","width":"120px","height":"60px"}' @click="menuHandler(menu.child[0].tableName)" :index="'/'+menu.child[0].tableName">
				  <div class="el-tooltip" :style='{"padding":"0 15px","display":"flex","alignItems":"center","justifyContent":"center","height":"60px","width":"120px"}'>
				    <i :style='{"verticalAlign":"middle","margin":"0 5px 0 0","color":"inherit","textAlign":"center","display":"inline-block","fontSize":"18px"}' class="el-icon-menu" :class="icons[index]"></i>
				    <span :style='{"verticalAlign":"middle","fontSize":"14px","color":"inherit","textAlign":"center","display":"inline-block","whiteSpace":"nowrap"}'>{{menu.menu}}</span>
				  </div>
				</el-menu-item>
			</template>
		    <!-- 用户信息：保留子菜单结构 -->
		    <el-submenu class="user" popper-class="user" :popper-append-to-body="false" :style='{"border":"0","padding":"0","listStyle":"none","margin":"0","color":"#333","background":"#f0f0f0","width":"120px","height":"60px"}' index="user-menu">
				<template slot="title">
					<div :style='{"padding":"0 15px","display":"flex","alignItems":"center","justifyContent":"center","height":"60px","width":"120px"}'>
						<i :style='{"verticalAlign":"middle","margin":"0 5px 0 0","color":"inherit","textAlign":"center","display":"inline-block","fontSize":"18px"}' class="icon iconfont icon-kuaijiezhifu"></i>
						<span :style='{"verticalAlign":"middle","fontSize":"14px","color":"inherit","textAlign":"center","display":"inline-block","whiteSpace":"nowrap"}'>用户信息</span>
					</div>
				</template>
				<el-menu-item index="/updatePassword" @click="menuHandler('updatePassword')">修改密码</el-menu-item>
				<el-menu-item index="/center" @click="menuHandler('center')">个人信息</el-menu-item>
		    </el-submenu>
		</el-menu>
	</div>
</template>

<script>
import menu from '@/utils/menu'
export default {
	data() {
		return {
			menuList: [],
			menuListLoaded: false,
			dynamicMenuRoutes: [],
			role: '',
			user: null,
			avatar:'',
			icons: [
				'el-icon-s-cooperation',
				'el-icon-s-order',
				'el-icon-s-platform',
				'el-icon-s-fold',
				'el-icon-s-unfold',
				'el-icon-s-operation',
				'el-icon-s-promotion',
				'el-icon-s-release',
				'el-icon-s-ticket',
				'el-icon-s-management',
				'el-icon-s-open',
				'el-icon-s-shop',
				'el-icon-s-marketing',
				'el-icon-s-flag',
				'el-icon-s-comment',
				'el-icon-s-finance',
				'el-icon-s-claim',
				'el-icon-s-custom',
				'el-icon-s-opportunity',
				'el-icon-s-data',
				'el-icon-s-check',
				'el-icon-s-grid',
				'el-icon-menu',
				'el-icon-chat-dot-square',
				'el-icon-message',
				'el-icon-postcard',
				'el-icon-position',
				'el-icon-microphone',
				'el-icon-close-notification',
				'el-icon-bangzhu',
				'el-icon-time',
				'el-icon-odometer',
				'el-icon-crop',
				'el-icon-aim',
				'el-icon-switch-button',
				'el-icon-full-screen',
				'el-icon-copy-document',
				'el-icon-mic',
				'el-icon-stopwatch',
			],
			menulistBorderBottom: {},
			horizontalFlag: false,
			horizontalIsMultiple: false,
		}
	},
	computed: {
		activeMenu() {
			const route = this.$route
			const {
				meta,
				path
			} = route
			if (meta.activeMenu) {
				return meta.activeMenu
			}
			return path
		},
		// 系统管理、用户信息子页面不参与 default-active，避免路由匹配导致子菜单自动展开
		menuDefaultActive() {
			const path = this.activeMenu
			const systemMenu = this.menuList.backMenu && this.menuList.backMenu.find(m => m.menu === '系统管理')
			if (systemMenu && systemMenu.child.some(c => ('/' + c.tableName) === path)) {
				return ''
			}
			if (path === '/updatePassword' || path === '/center') {
				return ''
			}
			return path
		}
	},
	watch:{
		avatar(){
			this.$forceUpdate()
		},
		$route() {
			this.$nextTick(() => {
				this.forceCloseCollapseMenus()
			})
		},
	},
	mounted() {
		const menus = menu.list()
		if(menus) {
			this.menuList = menus
			this.role = this.$storage.get('role')
			for(let i=0;i<this.menuList.length;i++) {
				if(this.menuList[i].roleName == this.role) {
					this.menuList = this.menuList[i];
					break
				}
			}
			this.menuListLoaded = true
			this.$nextTick(() => {
				this.forceCloseCollapseMenus()
				setTimeout(() => { this.forceCloseCollapseMenus() }, 0)
				setTimeout(() => { this.forceCloseCollapseMenus() }, 200)
			})
		} else {
			let params = {
				page: 1,
				limit: 1,
				sort: 'id',
			}
			
			this.$http({
				url: "menu/list",
				method: "get",
				params: params
			}).then(({data}) => {
				if (data && data.code === 0) {
					this.menuList = JSON.parse(data.data.list[0].menujson);
					this.$storage.set("menus", this.menuList);
					this.role = this.$storage.get('role')
					for(let i=0;i<this.menuList.length;i++) {
						if(this.menuList[i].roleName == this.role) {
							this.menuList = this.menuList[i];
							break
						}
					}
					this.$nextTick(() => {
						this.menuListLoaded = true
						this.forceCloseCollapseMenus()
						setTimeout(() => { this.forceCloseCollapseMenus() }, 0)
						setTimeout(() => { this.forceCloseCollapseMenus() }, 200)
					})
				}
			})
		}
		this.styleChange()
		
		let sessionTable = this.$storage.get("sessionTable")
		this.$http({
			url: sessionTable + '/session',
			method: "get"
		}).then(({
			data
		}) => {
			if (data && data.code === 0) {
				if(sessionTable == 'xuesheng') {
					this.avatar = data.data.touxiang
				}
				if(sessionTable == 'zhaopingongsi') {
					this.avatar = data.data.yingyezhizhao
				}
				if(sessionTable=='users') {
					this.avatar = data.data.image
				}
				this.user = data.data;
			} else {
				let message = this.$message
				message.error(data.msg);
			}
		});
	},
	created(){
		this.icons.sort(()=>{
			return (0.5-Math.random())
		})
	},
	methods: {
		collapse() {
		  this.isCollapse = !this.isCollapse
		  this.$emit('oncollapsechange', this.isCollapse)
		},
		styleChange() {
			this.$nextTick(() => {
				document.querySelectorAll('.el-menu-horizontal-demo .el-submenu .el-menu').forEach(el => {
				  // 不处理系统管理、用户信息子菜单，避免 removeAttribute 破坏默认收起
				  if (el.closest('.menu-system') || el.closest('.user')) return
				  el.removeAttribute('style')
				  const icon = {"border":"none"}
				  Object.keys(icon).forEach((key) => {
				    el.style[key] = icon[key]
				  })
				})
				this.forceCloseCollapseMenus()
			})
		},
		menuHandler(name) {
			let router = this.$router
			name = '/'+name
			router.push(name)
		},
		forceCloseCollapseMenus() {
			if (this.$refs.menu && this.$refs.menu.close) {
				const systemMenu = this.menuList.backMenu && this.menuList.backMenu.find(m => m.menu === '系统管理')
				if (systemMenu) {
					this.$refs.menu.close('system-' + this.menuList.backMenu.indexOf(systemMenu))
				}
				this.$refs.menu.close('user-menu')
			}
			this.$nextTick(() => {
				['.menu-system', '.user'].forEach(selector => {
					document.querySelectorAll('.el-menu-horizontal-demo ' + selector + '.el-submenu').forEach(el => {
						el.classList.remove('is-opened')
					})
					document.querySelectorAll('.el-menu-horizontal-demo ' + selector + ' .el-menu').forEach(popup => {
						popup.style.removeProperty('display')
					})
				})
			})
		}
	}
}
</script>
<style lang="scss" scoped>
	.menu-preview {
	  display: block;
	  background: #f0f0f0;
	  width: 100%;
	  min-height: 60px;
	  position: relative;
	  z-index: 100;

	  .el-scrollbar {
	    height: 100%;

	    & /deep/ .scrollbar-wrapper {
	      overflow-x: hidden;
	    }

	  }

	  .el-menu-horizontal-demo {
	    border: none;
	    display: flex;
	    flex-wrap: wrap;
	    background: #f0f0f0;
	    min-height: 60px;
	  }

	  .el-menu-horizontal-demo>.el-menu-item {
	    border: 0;
	    cursor: pointer;
	    padding: 0;
	    margin: 0;
	    color: #333;
	    font-size: 14px;
	    line-height: 60px;
	    list-style: none;
	    height: 60px;
	    width: 120px;
	    background: #f0f0f0;
	  }

	  .el-menu-horizontal-demo>.el-menu-item:hover {
	    color: #fff;
	    background: #000;
	  }

	  .el-menu-horizontal-demo .el-submenu {
	    padding: 0;
	    margin: 0;
	    list-style: none;
	    width: 120px;
	    background: #f0f0f0;
	  }

	  .el-menu-horizontal-demo .el-submenu /deep/ .el-submenu__title {
	    border: 0;
	    cursor: pointer;
	    padding: 0;
	    margin: 0;
	    color: #333;
	    font-size: 14px;
	    line-height: 60px;
	    list-style: none;
	    height: 60px;
	    width: 120px;
	    background: #f0f0f0;
	  }

	  .el-menu-horizontal-demo .el-submenu /deep/ .el-submenu__title:hover {
	    color: #fff;
	    background: #000;
	  }

	  .el-menu-horizontal-demo .el-submenu /deep/ .el-submenu__title .el-submenu__icon-arrow {
	    margin-top: -3px;
	    color: inherit;
	    vertical-align: middle;
	    font-size: 12px;
	    position: static;
	  }

	  .el-menu-horizontal-demo .el-submenu /deep/ .el-menu {
	    border: none;
	    background: #fff;
	  }

	  .el-menu-horizontal-demo .el-submenu /deep/ .el-menu .el-menu-item {
	    padding: 0 40px;
	    color: #666;
	    background: #fff;
	    line-height: 50px;
	    height: 50px;
	  }

	  .el-menu-horizontal-demo .el-submenu /deep/ .el-menu .el-menu-item:hover {
	    color: #fff;
	    background: #999;
	  }

	  .el-menu-horizontal-demo .el-submenu /deep/ .el-menu .el-menu-item.is-active {
	    color: #fff;
	    background: #000;
	  }
	}

	.el-menu-horizontal-demo>.el-menu-item.home>.el-tooltip {
	  border: 0;
	  cursor: pointer;
	  padding: 0;
	  margin: 0;
	  color: #333;
	  display: flex;
	  font-size: 14px;
	  line-height: 1.5;
	  align-items: center;
	  justify-content: center;
	  background: none;
	  position: relative;
	  list-style: none;
	  height: 60px;
	  width: 120px;
	}

	.el-menu-horizontal-demo>.el-menu-item.home>.el-tooltip:hover {
	  color: #fff;
	  background: #000;
	}

	.el-menu-horizontal-demo>.el-menu-item.home.is-active>.el-tooltip {
	  color: #fff;
	  background: #000;
	}

	.el-menu-horizontal-demo .el-submenu.user /deep/ .el-submenu__title {
	  border: 0;
	  cursor: pointer;
	  padding: 0;
	  margin: 0;
	  color: #333;
	  display: flex;
	  font-size: 14px;
	  line-height: 1.5;
	  align-items: center;
	  justify-content: center;
	  background: none;
	  position: relative;
	  list-style: none;
	  height: 60px;
	  width: 120px;
	}

	.el-menu-horizontal-demo .el-submenu.user /deep/ .el-submenu__title:hover {
	  color: #fff;
	  background: #000;
	}

	.el-menu-horizontal-demo .el-submenu.user /deep/ .el-submenu__title .iconfont {
	  margin: 0 5px 0 0;
	  color: inherit;
	  display: inline-block;
	  vertical-align: middle;
	  font-size: 18px;
	  text-align: center;
	}

	.el-menu-horizontal-demo .el-submenu.user /deep/ .el-submenu__title .el-submenu__icon-arrow {
	  margin: 0;
	  color: inherit;
	  vertical-align: middle;
	  font-size: 12px;
	  position: static;
	}

	.el-menu-horizontal-demo .el-menu--vertical.user .el-menu {
	  border: 1px solid #ddd;
	  border-radius: 2px;
	  padding: 0;
	  box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);
	  margin: 0;
	  z-index: 999;
	  background: #fff;
	  position: relative;
	  list-style: none;
	}

	.el-menu-horizontal-demo .el-menu--vertical.user .el-menu .el-menu-item {
	  padding: 0 20px;
	  color: #666;
	  background: #fff;
	  border-color: #ddd;
	  border-width: 1px 0 0;
	  line-height: 40px;
	  border-style: solid;
	  height: 40px;
	}

	.el-menu-horizontal-demo .el-menu--vertical.user .el-menu .el-menu-item:hover {
	  color: #fff;
	  background: #999;
	  border-style: solid;
	}

	.el-menu-horizontal-demo .el-menu--vertical.user .el-menu .el-menu-item.is-active {
	  color: #fff;
	  background: #000;
	  border-style: solid;
	}

	.el-menu-horizontal-demo .el-submenu.other /deep/ .el-submenu__title {
	  border: 0;
	  cursor: pointer;
	  padding: 0;
	  margin: 0;
	  color: #333;
	  display: flex;
	  font-size: 14px;
	  line-height: 1.5;
	  align-items: center;
	  justify-content: center;
	  background: none;
	  position: relative;
	  list-style: none;
	  height: 60px;
	  width: 120px;
	}

	.el-menu-horizontal-demo .el-submenu.other /deep/ .el-submenu__title:hover {
	  color: #fff;
	  background: #000;
	}

	.el-menu-horizontal-demo .el-submenu.other /deep/ .el-submenu__title .iconfont,
	.el-menu-horizontal-demo .el-submenu.other /deep/ .el-submenu__title [class*="el-icon"] {
	  margin: 0 5px 0 0;
	  color: inherit;
	  display: inline-block;
	  vertical-align: middle;
	  font-size: 18px;
	  text-align: center;
	}

	.el-menu-horizontal-demo .el-submenu.other /deep/ .el-submenu__title .el-submenu__icon-arrow {
	  margin: 0;
	  color: inherit;
	  vertical-align: middle;
	  font-size: 12px;
	  position: static;
	}

	.el-menu-horizontal-demo .el-menu--vertical.other .el-menu {
	  border: 1px solid #ddd;
	  border-radius: 2px;
	  padding: 0;
	  box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);
	  margin: 0;
	  z-index: 999;
	  background: #fff;
	  position: relative;
	  list-style: none;
	}

	.el-menu-horizontal-demo .el-menu--vertical.other .el-menu .el-menu-item {
	  padding: 0 20px;
	  color: #666;
	  background: #fff;
	  border-color: #ddd;
	  border-width: 1px 0 0;
	  line-height: 40px;
	  border-style: solid;
	  height: 40px;
	}

	.el-menu-horizontal-demo .el-menu--vertical.other .el-menu .el-menu-item:hover {
	  color: #fff;
	  background: #999;
	  border-style: solid;
	}

	.el-menu-horizontal-demo .el-menu--vertical.other .el-menu .el-menu-item.is-active {
	  color: #fff;
	  background: #000;
	  border-style: solid;
	}

	.el-menu-horizontal-demo>.el-menu-item.other>.el-tooltip {
	  border: 0;
	  cursor: pointer;
	  padding: 0;
	  margin: 0;
	  color: #333;
	  display: flex;
	  font-size: 14px;
	  line-height: 1.5;
	  align-items: center;
	  justify-content: center;
	  background: none;
	  position: relative;
	  list-style: none;
	  height: 60px;
	  width: 120px;
	}

	.el-menu-horizontal-demo>.el-menu-item.other>.el-tooltip:hover {
	  color: #fff;
	  background: #000;
	}

	.el-menu-horizontal-demo>.el-menu-item.other.is-active>.el-tooltip {
	  color: #fff;
	  background: #000;
	}

	.el-menu-horizontal-demo>.el-menu-item.home>.el-tooltip .iconfont,
	.el-menu-horizontal-demo>.el-menu-item.home>.el-tooltip [class*="el-icon"],
	.el-menu-horizontal-demo>.el-menu-item.other>.el-tooltip .iconfont,
	.el-menu-horizontal-demo>.el-menu-item.other>.el-tooltip [class*="el-icon"] {
	  margin: 0 5px 0 0;
	  line-height: 1;
	  vertical-align: middle;
	  font-size: 18px;
	}

	.el-menu-horizontal-demo .el-submenu.other /deep/ .el-submenu__title span,
	.el-menu-horizontal-demo>.el-menu-item.home>.el-tooltip span,
	.el-menu-horizontal-demo>.el-menu-item.other>.el-tooltip span {
	  line-height: 1.2;
	  white-space: nowrap;
	}

	/* 系统管理、用户信息：未点击时强制隐藏子菜单 */
	.el-menu-horizontal-demo .el-submenu.menu-system:not(.is-opened) /deep/ .el-menu,
	.el-menu-horizontal-demo .el-submenu.user:not(.is-opened) /deep/ .el-menu {
	  display: none !important;
	}
</style>
