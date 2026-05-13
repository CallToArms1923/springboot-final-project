<template>
<div class="home-preview" :style='{"padding":"0 0 20px","margin":"0 auto","borderColor":"#d3d3d3","flexWrap":"wrap","flexDirection":"row","background":"#fff","borderWidth":"0 1px","display":"flex","width":"980px","borderStyle":"solid","justifyContent":"center"}'>



		<!-- 关于我们 -->
		<div id="about" class="animate__animated" :style='{"padding":"0 20px 20px","margin":"0","borderColor":"#f1635f","background":"#fff","borderWidth":"0px 0 0","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"2"}'>
		  <div :style='{"padding":" 0 0 0 34px","margin":"0 0 20px","borderColor":"#C98777","color":"#222","textAlign":"left","background":"url(http://codegen.caihongy.cn/20240124/c18108dd98c34cdbab5fc0b1ed2dd781.png) no-repeat 10px center","borderWidth":"0 0 2px","width":"100%","fontSize":"20px","lineHeight":"33px","borderStyle":"solid","fontWeight":"500","height":"36px"}'>{{aboutUsDetail.title}}</div>
		  <div :style='{"margin":"0 0 30px","color":"#888","textAlign":"left","display":"none","width":"100%","lineHeight":"1.5","fontSize":"16px"}'>{{aboutUsDetail.subtitle}}</div>
		  <div :style='{"padding":"0 0px","margin":"0 0 0 10px","flexWrap":"wrap","display":"none","width":"150px","float":"left","height":"150px"}'>
		    <img :style='{"width":"100%","margin":"0 0px","objectFit":"cover","display":"none","height":"100%"}' :src="baseUrl + aboutUsDetail.picture1">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + aboutUsDetail.picture2">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + aboutUsDetail.picture3">
		  </div>
		  <div :style='{"padding":"0px 12px 0","margin":"0","overflow":"hidden","color":"rgb(102, 102, 102)","background":"none","width":"calc(100% - 0px)","fontSize":"14px","lineHeight":"24px","height":"auto"}' v-html="aboutUsDetail.content"></div>
		  <div :style='{"top":"0","left":"52%","background":"url(http://codegen.caihongy.cn/20230920/8a35b5134ee644b8a9a87ea99a0f1490.png) no-repeat","display":"none","width":"200px","position":"absolute","height":"100%"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"0 10px","margin":"0","textAlign":"center","display":"block","right":"30px","float":"left","top":"0px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20240124/5738ee6610444eddbc1846b1e9cf38ef.png) no-repeat right center","width":"auto","lineHeight":"32px","position":"absolute"}' @click="toDetail('aboutusDetail',aboutUsDetail)">
		    <span :style='{"color":"#666","fontSize":"13px"}'>更多</span>
		    <span class="icon iconfont " :style='{"color":"#fff","fontSize":"16px","display":"inline-block"}'></span>
		  </div>
		</div>
		<!-- 关于我们 -->

		<!-- 系统简介 -->
		<div id="system" class="animate__animated" :style='{"padding":"0 20px 20px","margin":"0","borderColor":"#ffc652","background":"none","borderWidth":"0px 0 0","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"5"}'>
		  <div :style='{"padding":" 0 0 0 34px","margin":"0 0 20px","borderColor":"#C98777","color":"#222","textAlign":"left","background":"url(http://codegen.caihongy.cn/20240124/c18108dd98c34cdbab5fc0b1ed2dd781.png) no-repeat 10px center","borderWidth":"0 0 2px","width":"100%","fontSize":"20px","lineHeight":"33px","borderStyle":"solid","fontWeight":"500","height":"36px"}'>{{systemIntroductionDetail.title}}</div>
		  <div :style='{"margin":"0 0 30px","color":"#888","textAlign":"right","display":"none","width":"100%","lineHeight":"1.5","fontSize":"16px"}'>{{systemIntroductionDetail.subtitle}}</div>
		  <div :style='{"padding":"0 0px","margin":"0 0 0 10px","flexWrap":"wrap","display":"none","width":"150px","float":"left","height":"150px","order":"2"}'>
		    <img :style='{"width":"100%","margin":"0 0px","objectFit":"cover","display":"block","height":"100%"}' :src="baseUrl + systemIntroductionDetail.picture1">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + systemIntroductionDetail.picture2">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + systemIntroductionDetail.picture3">
		  </div>
		  <div :style='{"padding":"0px 12px 0","margin":"0px 0 10px 0","overflow":"hidden","color":"rgb(102, 102, 102)","background":"none","width":"calc(100% - 0px)","lineHeight":"24px","fontSize":"14px","height":"auto","order":"2"}' v-html="systemIntroductionDetail.content"></div>
		  <div :style='{"transform":"rotate(180deg)","top":"0","background":"url(http://codegen.caihongy.cn/20230920/8a35b5134ee644b8a9a87ea99a0f1490.png) no-repeat","display":"none","width":"200px","position":"absolute","right":"52%","height":"100%"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"0 10px","margin":"0","textAlign":"left","display":"block","right":"30px","justifyContent":"center","top":"0px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20240124/5738ee6610444eddbc1846b1e9cf38ef.png) no-repeat right center","width":"auto","lineHeight":"32px","position":"absolute","order":"8"}' @click="toDetail('systemintroDetail',systemIntroductionDetail)">
		    <span :style='{"color":"#666","fontSize":"13px"}'>更多</span>
		    <span class="icon iconfont " :style='{"fontSize":"16px","color":"#fff","background":"none","display":"inline-block"}'></span>
		  </div>
		</div>
		<!-- 系统简介 -->
		
	<!-- 新闻资讯 -->
	<div id="animate_newsnews" class="news animate__animated" :style='{"padding":"0 20px","margin":"20px auto","backgroundAttachment":"fixed","background":"none","width":"100%","position":"relative","order":"4"}'>
		<div v-if="false" class="idea newsIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
			<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		</div>
		
		<div class="title" :style='{"padding":" 0 0 0 34px","margin":"0 auto","borderColor":"#C98777","textAlign":"left","background":"url(http://codegen.caihongy.cn/20240124/c18108dd98c34cdbab5fc0b1ed2dd781.png) no-repeat 10px center","borderWidth":"0 0 2px","width":"100%","borderStyle":"solid","height":"36px"}'>
			<span :style='{"fontSize":"20px","lineHeight":"33px","color":"#222","fontWeight":"500"}'>招聘资讯</span>
		</div>
		
			
			
			
			
			
			
			
			
			
			
		









		<div v-if="newsList.length" class="list list20 index-pv1" :style='{"padding":"0 10px","margin":"20px 0 0","color":"#999","flexWrap":"wrap","background":"none","display":"flex","width":"100%","fontSize":"14px","height":"auto"}'>
		  <div v-for="(item,index) in newsList" :key="index"  @click="toDetail('newsDetail', item)" class="list-item animation-box">
		    <div :style='{"border":"1px solid red","width":"280px","padding":"10px","overflow":"hidden","display":"none","height":"200px"}' class="img-box">
				<img :style='{"width":"100%","objectFit":"cover","display":"block","height":"100%"}' :src="baseUrl + item.picture" class="image">
			</div>
		    <div :style='{"width":"100%","padding":"0 0 0 0px","overflow":"hidden","position":"relative","display":"block","height":"auto"}' class="item-info">
		      <div :style='{"width":"100%","padding":"0 0px 0 0"}'>
				<div class="title">{{item.title}}</div>
		        <div :style='{"padding":"0 0px","borderColor":"red","top":"0","color":"#999","borderWidth":"0 0 0px 0","position":"absolute","right":"0","borderStyle":"solid"}' class="time">
		          <span class="icon iconfont icon-shijian21"></span>
		          <span class="text">{{item.addtime}}</span>
		        </div>
		        <div :style='{"padding":"0 0px","borderColor":"red","margin":"0 10px 0 0","borderStyle":"solid","borderWidth":"0 0 0px 0","display":"inline-block"}' class="publisher">
		          <span class="icon iconfont icon-geren16"></span>
		          <span class="text">{{item.name}}</span>
		        </div>
		        <div :style='{"padding":"0 0px","borderColor":"red","margin":"0 10px 0 0","borderStyle":"solid","borderWidth":"0 0 0px 0","display":"inline-block"}' class="like">
		          <span class="icon iconfont icon-zan10"></span>
		          <span class="text">{{item.thumbsupnum}}</span>
		        </div>
		        <div :style='{"padding":"0 0px","borderColor":"red","margin":"0 10px 0 0","borderStyle":"solid","borderWidth":"0 0 0px 0","display":"inline-block"}' class="collect">
		          <span class="icon iconfont icon-shoucang10"></span>
		          <span class="text">{{item.storeupnum}}</span>
		        </div>
		        <div :style='{"padding":"0 0px","margin":"0 10px 0 0","display":"inline-block"}' class="view">
		          <span class="icon iconfont icon-chakan9"></span>
		          <span class="text">{{item.clicknum}}</span>
		        </div>
		      </div>
		      <div class="desc">{{item.introduction}}</div>
		    </div>
		  </div>
		</div>


		<div @click="moreBtn('news')" :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"0 10px","margin":"0","textAlign":"center","display":"block","right":"30px","top":"0px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20240124/5738ee6610444eddbc1846b1e9cf38ef.png) no-repeat right center","width":"auto","lineHeight":"32px","position":"absolute"}'>
			<span :style='{"color":"#666","fontSize":"13px"}'>更多</span>
			<i :style='{"color":"#fff","fontSize":"16px","display":"inline-block"}' class="icon iconfont "></i>
		</div>
		
		</div>
	<!-- 新闻资讯 -->


<!-- 商品推荐 -->
<div id="animate_recommendzhaopinxinxi" class="recommend animate__animated" :style='{"padding":"20px 20px 0","margin":"0 auto","borderColor":"#d3d3d3","background":"#fff","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid","order":"1"}'>
	<div v-if="false" class="idea recommendIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"padding":" 0 0 0 34px","margin":"0 auto","borderColor":"#C98777","textAlign":"left","background":"url(http://codegen.caihongy.cn/20240124/c18108dd98c34cdbab5fc0b1ed2dd781.png) no-repeat 10px center","borderWidth":"0 0 2px","width":"100%","borderStyle":"solid","height":"36px"}'>
		<span :style='{"padding":"0","fontSize":"20px","lineHeight":"33px","color":"#333","fontWeight":"500","display":"block"}'>招聘信息推荐</span>
	</div>
	
	
	
	
	
	
	
	
	
	







		<div v-if="zhaopinxinxiRecommend.length" :style='{"padding":"0 0px 0 10px","margin":"20px 0 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto"}' class="list list17 index-pv1">
		  <div v-for="item,index in zhaopinxinxiRecommend" :key="index"  @click="toDetail('zhaopinxinxiDetail', item)" :style='{"cursor":"pointer","width":"145px","margin":"0 40px 20px 0","position":"relative","background":"none","height":"auto"}' class="item">
				<img class="image" v-if="preHttp(item.jianzhifengmian)" :src="item.jianzhifengmian.split(',')[0]" alt="" />
				<img class="image" v-else :src="baseUrl + (item.jianzhifengmian?item.jianzhifengmian.split(',')[0]:'')" alt="" />
			<div class="content">
		      <div :style='{"lineHeight":"24px","fontSize":"14px","color":"#333","display":"none"}'>{{item.zhiweiyaoqiu}}</div>

		      <div class="info">
				<div :style='{"overflow":"hidden","whiteSpace":"hidden","color":"#000","textAlign":"left","width":"100%","lineHeight":"24px","fontSize":"14px","textOverflow":"ellipsis","fontWeight":"500"}' class="name ">{{item.jianzhimingcheng}}</div>
				<div :style='{"overflow":"hidden","whiteSpace":"hidden","color":"#000","textAlign":"left","width":"100%","lineHeight":"24px","fontSize":"14px","textOverflow":"ellipsis","fontWeight":"500"}' class="name ">{{item.jianzhifenlei}}</div>
				<div :style='{"overflow":"hidden","whiteSpace":"hidden","color":"#000","textAlign":"left","width":"100%","lineHeight":"24px","fontSize":"14px","textOverflow":"ellipsis","fontWeight":"500"}' class="name ">{{item.zhize}}</div>
				<div :style='{"padding":"0","display":"none"}'>
		          <span class="icon iconfont icon-shijian21" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#fff"}'></span>
		          <span :style='{"color":"#fff","lineHeight":"1.5","fontSize":"12px"}'>{{item.addtime}}</span>
		        </div>
		        <div :style='{"padding":"0","margin":"0 5px 0 0","display":"inline-block"}'>
		          <span class="icon iconfont icon-geren16" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#999"}'></span>
		          <span :style='{"color":"#999","lineHeight":"1.5","fontSize":"12px"}'>{{item.qiyezhanghao}}</span>
		        </div>
		        <div :style='{"padding":"0","margin":"0 5px 0 0","display":"inline-block"}'>
		          <span class="icon iconfont icon-shoucang10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#999"}'></span>
		          <span :style='{"color":"#999","lineHeight":"1.5","fontSize":"12px"}'>{{item.storeupnum}}</span>
		        </div>
		        <div :style='{"padding":"0 0px","display":"inline-block"}'>
		          <span class="icon iconfont icon-chakan9" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"12px","color":"#999"}'></span>
		          <span :style='{"color":"#999","lineHeight":"1.5","fontSize":"12px"}'>{{item.clicknum}}</span>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
	
	<div @click="moreBtn('zhaopinxinxi')" :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"0 10px","margin":"0","textAlign":"center","display":"block","right":"30px","top":"20px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20240124/5738ee6610444eddbc1846b1e9cf38ef.png) no-repeat right center","width":"auto","lineHeight":"32px","position":"absolute"}'>
		<span :style='{"color":"#666","fontSize":"13px"}'>更多</span>
		<i :style='{"color":"#fff","fontSize":"16px","display":"inline-block"}' class="icon iconfont "></i>
	</div>
	
</div>
<!-- 商品推荐 -->

	
</div>
</template>

<script>
import 'animate.css'
import Swiper from "swiper";

  export default {
    //数据集合
    data() {
      return {
        baseUrl: '',
        aboutUsDetail: {},
        systemIntroductionDetail: {},
        newsList: [],
        zhaopinxinxiRecommend: [],





      }
    },
    created() {
		this.baseUrl = this.$config.baseUrl;
		this.getNewsList();
		this.getAboutUs();
		this.getSystemIntroduction();
		this.getList();
    },
	mounted() {
		window.addEventListener('scroll', this.handleScroll)
		setTimeout(()=>{
			this.handleScroll()
		},100)
		
		this.swiperChanges()
	},
	beforeDestroy() {
	  window.removeEventListener('scroll', this.handleScroll)
	},
    //方法集合
    methods: {
		swiperChanges() {
			setTimeout(()=>{
			},750)
		},


		handleScroll() {
			let arr = [
				{id:'search',css:'animate__fadeInUp'},
				{id:'about',css:'animate__'},
				{id:'system',css:'animate__'},
				{id:'animate_recommendzhaopinxinxi',css:'animate__'},
				{id:'animate_newsnews',css:'animate__'},
				{id:'msgs',css:'animate__'},
				{id:'friendly',css:'animate__'}
			]
			
			for (let i in arr) {
				let doc = document.getElementById(arr[i].id)
				if (doc) {
					let top = doc.offsetTop
					let win_top = window.innerHeight + window.pageYOffset
					// console.log(top,win_top)
					if (win_top > top && doc.classList.value.indexOf(arr[i].css) < 0) {
						// console.log(doc)
						doc.classList.add(arr[i].css)
					}
				}
			}
		},
      preHttp(str) {
          return str && str.substr(0,4)=='http';
      },
      getAboutUs() {
          this.$http.get('aboutus/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.aboutUsDetail = res.data.data;
            }
          })
      },
      getSystemIntroduction() {
          this.$http.get('systemintro/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.systemIntroductionDetail = res.data.data;
            }
          })
      },
		getNewsList() {
			let data = {
				page: 1,
				limit: 4,
                sort: 'addtime',
				order: 'desc'
			}
			this.$http.get('news/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.newsList = res.data.data.list;
					
					
				}
			});
		},
		getList() {
			let autoSortUrl = "";
			let data = {}
          autoSortUrl = "zhaopinxinxi/autoSort";
          if(localStorage.getItem('frontToken')) {
              autoSortUrl = "zhaopinxinxi/autoSort2";
          }
			data = {
				page: 1,
				limit: 5,
			}
			this.$http.get(autoSortUrl, {params: data}).then(res => {
				if (res.data.code == 0) {
					this.zhaopinxinxiRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
			
		},
		toDetail(path, item) {
			this.$router.push({path: '/index/' + path, query: {id: item.id}});
		},
		moreBtn(path) {
			this.$router.push({path: '/index/' + path});
		}
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {
		// -------- search --------
		.search .select /deep/ .el-input__inner {
			border: 0px solid #ddd;
			border-radius: 2px;
			padding: 0 30px 0 10px;
			box-shadow: 0 0 0px rgba(64, 158, 255, .3);
			outline: none;
			color: rgba(64, 158, 255, 1);
			width: 180px;
			font-size: 14px;
			height: 32px;
		}
		
		.search .input /deep/ .el-input__inner {
			border-radius: 2px;
			padding: 0 10px;
			color: rgba(64, 158, 255, 1);
			width: 280px;
			font-size: 14px;
			border-color: #ddd;
			border-width: 0px;
			border-style: solid;
			height: 32px;
		}
		// -------- search --------
		.recommend {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
        }
        
        .list5 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				box-shadow: 0px 0px 0px 0px #e7e7e7;
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(0.98) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
		
		.news {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list6 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list6 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	
		.lists {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: #333;
				font-size: 16px;
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
        }
        
        .list3 .swiper-button-next::after {
				color: #333;
				font-size: 16px;
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-next {
            left: auto;
            right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	}
	





	.home-preview .news .list20 .list-item {
				cursor: pointer;
				padding: 0 0 10px;
				margin: 0 0 10px;
				background: none;
				display: flex;
				width: 100%;
				font-size: 0;
				border-color: #eee;
				border-width: 0 0 1px;
				position: relative;
				border-style: solid;
				height: auto;
			}
	
	.home-preview .news .list20 .list-item:hover {
				color: inherit;
				background: none;
			}
	
	.home-preview .news .list20 .list-item .title {
				padding: 0 0px;
				color: #333;
				background: none;
				font-weight: 600;
				width: calc(100% - 160px);
				font-size: 14px;
				border-color: #ddd;
				border-width: 0 0 0px 0;
				line-height: 24px;
				border-style: solid;
			}
	
	.home-preview .news .list20 .list-item:hover .title {
				color: #C98777;
			}
	
	.home-preview .news .list20 .list-item .time .icon {
				margin: 0 2px 0 0;
				color: inherit;
				display: none;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .time .icon {
				color: inherit;
			}
	.home-preview .news .list20 .list-item .time .text {
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .time .text {
				color: inherit;
			}
	
	.home-preview .news .list20 .list-item .publisher .icon {
				margin: 0 2px 0 0;
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .publisher .icon {
				color: inherit;
			}
	.home-preview .news .list20 .list-item .publisher .text {
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .publisher .text {
				color: inherit;
			}
	
	.home-preview .news .list20 .list-item .like .icon {
				margin: 0 2px 0 0;
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .like .icon {
				color: inherit;
			}
	.home-preview .news .list20 .list-item .like .text {
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .like .text {
				color: inherit;
			}
	
	.home-preview .news .list20 .list-item .collect .icon {
				margin: 0 2px 0 0;
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .collect .icon {
				color: inherit;
			}
	.home-preview .news .list20 .list-item .collect .text {
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .collect .text {
				color: inherit;
			}
	
	.home-preview .news .list20 .list-item .view .icon {
				margin: 0 2px 0 0;
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .view .icon {
				color: inherit;
			}
	.home-preview .news .list20 .list-item .view .text {
				color: inherit;
				font-size: 14px;
				line-height: 28px;
			}
	.home-preview .news .list20 .list-item:hover .view .text {
				color: inherit;
			}
	
	.home-preview .news .list20 .list-item .desc {
				overflow: hidden;
				color: #999;
				white-space: nowrap;
				width: 100%;
				font-size: 14px;
				line-height: 24px;
				text-overflow: ellipsis;
			}
	.home-preview .news .list20 .list-item:hover .desc {
				color: inherit;
			}



	.home-preview .recommend .list17 .item .image {
				border-radius: 0;
				object-fit: cover;
				display: block;
				width: 100%;
				transition: 0.3s;
				height: 145px;
			}

	.home-preview .recommend .list17 .item:hover .image {
				transform: scale(1);
			}
	
	.home-preview .recommend .list17 .item .content {
				border-radius: 0px;
				padding: 0px 0;
				background: #fff;
				display: flex;
				width: 100%;
				transition: 0.3s;
				height: auto;
			}
	
	.home-preview .recommend .list17 .item:hover .content {
				bottom: 0;
			}


</style>
