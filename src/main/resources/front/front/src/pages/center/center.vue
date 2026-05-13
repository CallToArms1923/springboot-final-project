<template>
<div class="center-preview" :style='{"padding":"0 20px 20px","margin":"0 auto","borderColor":"#d3d3d3","flexWrap":"wrap","background":"#fff","borderWidth":"0 1px","display":"flex","width":"980px","position":"relative","borderStyle":"solid","justifyContent":"space-between"}'>
	<div class="title" :style='{"padding":"0","margin":"20px auto 0","borderColor":"#ffc652","color":"#222","textAlign":"center","background":"none","borderWidth":"0px 0 0 ","width":"100%","fontSize":"24px","borderStyle":"solid","fontWeight":"500","height":"60px"}'>{{ title }}</div>
	
	<div class="info" :style='{"padding":"80px 0 0 200px","boxShadow":"0 0px 0px rgba(0, 0, 0, 0.3)","margin":"0 auto","borderColor":"#28890b20","alignItems":"center","display":"flex","minHeight":"250px","borderRadius":"0px","flexWrap":"wrap","background":"#fff","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"1"}'>
		<div :style='{"padding":" 0 0 0 34px","borderColor":"#eee","margin":"0 20px 0 0","color":"#333","textAlign":"left","letterSpacing":"0px","top":"0","borderRadius":"0px","left":"0","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20240124/c18108dd98c34cdbab5fc0b1ed2dd781.png) no-repeat 10px center","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","borderStyle":"solid","fontWeight":"500","height":"auto"}'>个人信息</div>
		<div :style='{"padding":"20px 0","borderColor":"#f8524630","top":"46px","left":"0","borderWidth":"0px","width":"140px","fontSize":0,"position":"absolute","borderStyle":"solid","height":"auto"}' v-if="userTableName=='xuesheng'">
			<el-image :style='{"padding":"4px","margin":"0 auto","borderColor":"#eee","objectFit":"cover","borderRadius":"0","borderWidth":"1px","display":"block","width":"180px","borderStyle":"solid","height":"180px"}' :src="sessionForm.touxiang?baseUrl + sessionForm.touxiang:require('@/assets/avator.png')" fit="cover"></el-image>
		</div>
		<div :style='{"padding":"20px 0","borderColor":"#f8524630","top":"46px","left":"0","borderWidth":"0px","width":"140px","fontSize":0,"position":"absolute","borderStyle":"solid","height":"auto"}' v-if="userTableName=='zhaopingongsi'">
			<el-image :style='{"padding":"4px","margin":"0 auto","borderColor":"#eee","objectFit":"cover","borderRadius":"0","borderWidth":"1px","display":"block","width":"180px","borderStyle":"solid","height":"180px"}' :src="sessionForm.yingyezhizhao?baseUrl + sessionForm.yingyezhizhao:require('@/assets/avator.png')" fit="cover"></el-image>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='xuesheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#333","display":"inline-block"}'>账号</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.xuehao}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='xuesheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>姓名</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.xingming}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='xuesheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>性别</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.xingbie}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='xuesheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>年龄</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.nianling}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='xuesheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>学历</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.xueli}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='xuesheng'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>学校</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.xuexiao}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='zhaopingongsi'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#333","display":"inline-block"}'>企业账号</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.qiyezhanghao}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='zhaopingongsi'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>企业名称</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.qiyemingcheng}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='zhaopingongsi'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>企业地址</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.qiyedizhi}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='zhaopingongsi'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>负责人</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.fuzeren}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='zhaopingongsi'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>企业邮箱</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.qiyeyouxiang}}</div>
		</div>
		<div :style='{"padding":"0 20px","borderColor":"#f9eacc","margin":"0 2% 10px 0","borderWidth":"0px","background":"none","display":"flex","width":"48%","lineHeight":"40px","borderStyle":"solid","height":"auto"}' v-if="userTableName=='zhaopingongsi'">
			<span class="icon iconfont icon-shouye-zhihui" :style='{"padding":"0 5px","fontSize":"14px","color":"#333","display":"none"}'></span>
			<div :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}'>联系手机</div>
			<div :style='{"color":"#999","textAlign":"left","fontSize":"14px"}'>{{sessionForm.lianxishouji}}</div>
		</div>
		
	</div>
	
    <el-tabs tab-position="left" :style='{"width":"100%","margin":"20px 0 0","flexWrap":"wrap","background":"#fff","display":"flex","order":"1"}' @tab-click="handleClick">
      <el-tab-pane label="个人中心">
        <el-form class="center-preview-pv" ref="sessionForm" :model="sessionForm" :rules="rules" label-width="110px">
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="账号" prop="xuehao">
            <el-input v-model="sessionForm.xuehao" placeholder="账号" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="姓名" prop="xingming">
            <el-input v-model="sessionForm.xingming" placeholder="姓名" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="性别" prop="xingbie">
            <el-select v-model="sessionForm.xingbie" placeholder="请选择性别" >
              <el-option v-for="(item, index) in dynamicProp.xingbie" :key="index" :label="item" :value="item"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="年龄" prop="nianling">
            <el-input v-model="sessionForm.nianling" placeholder="年龄" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="学历" prop="xueli">
            <el-select v-model="sessionForm.xueli" placeholder="请选择学历" >
              <el-option v-for="(item, index) in dynamicProp.xueli" :key="index" :label="item" :value="item"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="学校" prop="xuexiao">
            <el-input v-model="sessionForm.xuexiao" placeholder="学校" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="头像" prop="touxiang">
			<file-upload
			tip="点击上传头像"
			action="file/upload"
			:limit="1"
			:multiple="true"
			:fileUrls="sessionForm.touxiang?sessionForm.touxiang:''"
			@change="xueshengtouxiangHandleAvatarSuccess"
			></file-upload>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='xuesheng'" label="手机号" prop="mobile">
            <el-input v-model="sessionForm.mobile" placeholder="手机号" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='zhaopingongsi'" label="企业账号" prop="qiyezhanghao">
            <el-input v-model="sessionForm.qiyezhanghao" placeholder="企业账号" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='zhaopingongsi'" label="企业名称" prop="qiyemingcheng">
            <el-input v-model="sessionForm.qiyemingcheng" placeholder="企业名称" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='zhaopingongsi'" label="企业地址" prop="qiyedizhi">
            <el-input v-model="sessionForm.qiyedizhi" placeholder="企业地址" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='zhaopingongsi'" label="负责人" prop="fuzeren">
            <el-input v-model="sessionForm.fuzeren" placeholder="负责人" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='zhaopingongsi'" label="企业邮箱" prop="qiyeyouxiang">
            <el-input v-model="sessionForm.qiyeyouxiang" placeholder="企业邮箱" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='zhaopingongsi'" label="联系手机" prop="lianxishouji">
            <el-input v-model="sessionForm.lianxishouji" placeholder="联系手机" ></el-input>
          </el-form-item>
          <el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' v-if="userTableName=='zhaopingongsi'" label="营业执照" prop="yingyezhizhao">
			<file-upload
			tip="点击上传营业执照"
			action="file/upload"
			:limit="1"
			:multiple="true"
			:fileUrls="sessionForm.yingyezhizhao?sessionForm.yingyezhizhao:''"
			@change="zhaopingongsiyingyezhizhaoHandleAvatarSuccess"
			></file-upload>
          </el-form-item>
          <el-form-item :style='{"padding":"0","margin":"0"}'>
            <el-button :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"0","margin":"0 20px 0 0","color":"#fff","borderRadius":"4px","background":"#C98777","width":"100px","lineHeight":"34px","fontSize":"14px","height":"34px"}' type="primary" @click="onSubmit('sessionForm')">更新信息</el-button>
            <el-button :style='{"border":"1px solid #ccc","cursor":"pointer","padding":"0","margin":"0","color":"#666","borderRadius":"4px","background":"none","width":"100px","lineHeight":"34px","fontSize":"14px","height":"34px"}' type="danger" @click="logout">退出登录</el-button>
          </el-form-item>
        </el-form>
      </el-tab-pane>
	  <el-tab-pane label="修改密码">
		<el-form class="center-preview-pv" ref="passwordForm" :model="passwordForm" :rules="passwordRules" label-width="110px">
			<el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' label="原密码" prop="password">
			  <el-input type="password" v-model="passwordForm.password" placeholder="原密码"></el-input>
			</el-form-item>
			<el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' label="新密码" prop="newpassword">
			  <el-input type="password" v-model="passwordForm.newpassword" placeholder="新密码"></el-input>
			</el-form-item>
			<el-form-item :style='{"width":"auto","padding":"0px","margin":"0 0 40px","background":"#fff","display":"inline-block"}' label="确认密码" prop="repassword">
			  <el-input type="password" v-model="passwordForm.repassword" placeholder="确认密码"></el-input>
			</el-form-item>
			<el-form-item :style='{"padding":"0","margin":"0"}'>
			  <el-button :style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"0","margin":"0 20px 0 0","color":"#fff","borderRadius":"4px","background":"#C98777","width":"100px","lineHeight":"34px","fontSize":"14px","height":"34px"}' type="primary" @click="updatePassword">修改密码</el-button>
			</el-form-item>
		</el-form>
	  </el-tab-pane>
		<el-tab-pane v-for="(item,index) in menuList" :key="index" v-if="hasBack(item.menu)" :label="item.child[0].menu" :name="item.child[0].tableName"></el-tab-pane>
      <el-tab-pane label="我的发布"></el-tab-pane>
      <el-tab-pane label="我的收藏"></el-tab-pane>
    </el-tabs>

</div>
</template>

<script>
  import config from '@/config/config'
  import menu from '@/config/menu'
  import Vue from 'vue'
  export default {
    //数据集合
    data() {
      return {
        title: '个人中心',
        baseUrl: config.baseUrl,
        sessionForm: {},
		passwordForm: {},
		passwordRules: {
			password: [
				{
					required: true,
					message: "密码不能为空",
					trigger: "blur"
				}
			],
			newpassword: [
				{
					required: true,
					message: "新密码不能为空",
					trigger: "blur"
				}
			],
			repassword: [
				{
					required: true,
					message: "确认密码不能为空",
					trigger: "blur"
				}
			]
		},
        rules: {},
		menuList: [],
        disabled: false,
        uploadUrl: config.baseUrl + 'file/upload',
        imageUrl: '',
        headers: {Token: localStorage.getItem('frontToken')},
        userTableName: localStorage.getItem('UserTableName'),
        dynamicProp: {},
      }
    },
    created() {
		let menus = menu.list()
		for(let x in menus){
			if(menus[x].tableName == this.userTableName){
				this.menuList = menus[x].backMenu
			}
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'xuehao', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'mima', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'xingming', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'xingbie', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'nianling', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'xueli', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'xuexiao', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'touxiang', null);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.sessionForm, 'mobile', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'qiyezhanghao', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'mima', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'qiyemingcheng', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'qiyedizhi', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'fuzeren', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'qiyeyouxiang', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'lianxishouji', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'yingyezhizhao', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'sfsh', null);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.sessionForm, 'shhf', null);
		}

		if ('xuesheng' == this.userTableName&&this.rules['xuehao']){
			this.rules['xuehao'].push({ required: true, message: '请输入账号', trigger: 'blur' })
		}else if('xuesheng' == this.userTableName&&!this.rules['xuehao']) {
			this.$set(this.rules, 'xuehao', [{ required: true, message: '请输入账号', trigger: 'blur' }]);
		}
		if ('xuesheng' == this.userTableName&&this.rules['mima']){
			this.rules['mima'].push({ required: true, message: '请输入密码', trigger: 'blur' })
		}else if('xuesheng' == this.userTableName&&!this.rules['mima']) {
			this.$set(this.rules, 'mima', [{ required: true, message: '请输入密码', trigger: 'blur' }]);
		}
		if ('xuesheng' == this.userTableName&&this.rules['xingming']){
			this.rules['xingming'].push({ required: true, message: '请输入姓名', trigger: 'blur' })
		}else if('xuesheng' == this.userTableName&&!this.rules['xingming']) {
			this.$set(this.rules, 'xingming', [{ required: true, message: '请输入姓名', trigger: 'blur' }]);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.rules, 'nianling', [{ required: false, validator: this.$validate.isIntNumer, trigger: 'blur' }]);
		}
		if ('xuesheng' == this.userTableName&&this.rules['xueli']){
			this.rules['xueli'].push({ required: true, message: '请输入学历', trigger: 'blur' })
		}else if('xuesheng' == this.userTableName&&!this.rules['xueli']) {
			this.$set(this.rules, 'xueli', [{ required: true, message: '请输入学历', trigger: 'blur' }]);
		}
		if ('xuesheng' == this.userTableName&&this.rules['xuexiao']){
			this.rules['xuexiao'].push({ required: true, message: '请输入学校', trigger: 'blur' })
		}else if('xuesheng' == this.userTableName&&!this.rules['xuexiao']) {
			this.$set(this.rules, 'xuexiao', [{ required: true, message: '请输入学校', trigger: 'blur' }]);
		}
		if ('xuesheng' == this.userTableName) {
			this.$set(this.rules, 'mobile', [{ required: false, validator: this.$validate.isMobile, trigger: 'blur' }]);
		}
		if ('zhaopingongsi' == this.userTableName&&this.rules['qiyezhanghao']){
			this.rules['qiyezhanghao'].push({ required: true, message: '请输入企业账号', trigger: 'blur' })
		}else if('zhaopingongsi' == this.userTableName&&!this.rules['qiyezhanghao']) {
			this.$set(this.rules, 'qiyezhanghao', [{ required: true, message: '请输入企业账号', trigger: 'blur' }]);
		}
		if ('zhaopingongsi' == this.userTableName&&this.rules['mima']){
			this.rules['mima'].push({ required: true, message: '请输入密码', trigger: 'blur' })
		}else if('zhaopingongsi' == this.userTableName&&!this.rules['mima']) {
			this.$set(this.rules, 'mima', [{ required: true, message: '请输入密码', trigger: 'blur' }]);
		}
		if ('zhaopingongsi' == this.userTableName&&this.rules['qiyemingcheng']){
			this.rules['qiyemingcheng'].push({ required: true, message: '请输入企业名称', trigger: 'blur' })
		}else if('zhaopingongsi' == this.userTableName&&!this.rules['qiyemingcheng']) {
			this.$set(this.rules, 'qiyemingcheng', [{ required: true, message: '请输入企业名称', trigger: 'blur' }]);
		}
		if ('zhaopingongsi' == this.userTableName&&this.rules['fuzeren']){
			this.rules['fuzeren'].push({ required: true, message: '请输入负责人', trigger: 'blur' })
		}else if('zhaopingongsi' == this.userTableName&&!this.rules['fuzeren']) {
			this.$set(this.rules, 'fuzeren', [{ required: true, message: '请输入负责人', trigger: 'blur' }]);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.rules, 'qiyeyouxiang', [{ required: false, validator: this.$validate.isEmail, trigger: 'blur' }]);
		}
		if ('zhaopingongsi' == this.userTableName) {
			this.$set(this.rules, 'lianxishouji', [{ required: false, validator: this.$validate.isMobile, trigger: 'blur' }]);
		}

      this.init();
      this.sessionForm = JSON.parse(localStorage.getItem('sessionForm'))
    },
    //方法集合
    methods: {
      init() {
        if ('xuesheng' == this.userTableName) {
          this.dynamicProp.xingbie = '男,女'.split(',');
        }
        if ('xuesheng' == this.userTableName) {
          this.dynamicProp.xueli = '大专,本科,硕士研究生,博士研究生'.split(',');
        }
      },
	  setSession(){
		  localStorage.setItem('sessionForm',JSON.stringify(this.sessionForm))
	  },
      onSubmit(formName) {
		if(`xuesheng` == this.userTableName && this.sessionForm.touxiang!=null){
			this.sessionForm.touxiang = this.sessionForm.touxiang.replace(new RegExp(this.$config.baseUrl,"g"),"");
		}
		if(`zhaopingongsi` == this.userTableName && this.sessionForm.yingyezhizhao!=null){
			this.sessionForm.yingyezhizhao = this.sessionForm.yingyezhizhao.replace(new RegExp(this.$config.baseUrl,"g"),"");
		}
        this.$refs[formName].validate((valid) => {
			if (valid) {
				this.$http.post(this.userTableName + '/update', this.sessionForm).then(res => {
					if (res.data.code == 0) {
						this.setSession()
						this.$message({
							message: '更新成功',
							type: 'success',
							duration: 1500
						});
					}
				});
			} else {
				return false;
			}
        });
      },
      xueshengtouxiangHandleAvatarSuccess(fileUrls) {
        this.sessionForm.touxiang = fileUrls;
      },
      zhaopingongsiyingyezhizhaoHandleAvatarSuccess(fileUrls) {
        this.sessionForm.yingyezhizhao = fileUrls;
      },
      handleClick(tab, event) {
        switch(event.target.outerText) {
          case '个人中心':
            tab.$router.push('/index/center');
            break;
          case '修改密码':
            this.passwordForm = {
				password: '',
				newpassword: '',
				repassword: '',
			}
			this.$forceUpdate()
            break;
          case '我的发布':
            tab.$router.push('/index/myForumList');
            break;
          case '我的收藏':
            localStorage.setItem('storeupType', 1);
            tab.$router.push('/index/storeup');
            break;
		  default:
		  	tab.$router.push(`/index/${tab.name}?centerType=1`);
        }

        this.title = event.target.outerText;
      },
	  async updatePassword(){
			this.$refs["passwordForm"].validate(async valid => {
				if (valid) {
					var password = "";
					if (this.sessionForm.mima) {
						password = this.sessionForm.mima;
					} else if (this.sessionForm.password) {
						password = this.sessionForm.password;
					}
					var nowpassword = ''
					await this.$http.get('encrypt/md5?text=' + this.passwordForm.password,).then(res=>{
						if(res.data&&res.data.code==0){
							nowpassword = res.data.data
						}
					})
					if(nowpassword!=password){
						this.$message.error("原密码错误");
						return;
					}
					if (this.passwordForm.newpassword != this.passwordForm.repassword) {
						this.$message.error("两次密码输入不一致");
						return;
					}
					if (this.userTableName == 'xuesheng') {
					}
					this.sessionForm.password = this.passwordForm.newpassword;
					this.sessionForm.mima = this.passwordForm.newpassword;
					this.$http.post(`${this.userTableName}/update`,this.sessionForm).then(({data})=>{
						if (data && data.code === 0) {
							this.$message({
								message: "修改密码成功,下次登录系统生效",
								type: "success",
								duration: 1500,
								onClose: () => {
								}
							});
							this.setSession()
						} else {
							this.$message.error(data.msg);
						}
					});
				}
			})
	  },
      logout() {
        localStorage.clear();
        Vue.http.headers.common['Token'] = "";
        this.$router.push('/index/home');
        this.activeIndex = '0'
        localStorage.setItem('keyPath', this.activeIndex)
        this.$forceUpdate()
        this.$message({
            message: '登出成功',
            type: 'success',
            duration: 1500,
        });
      },
	  hasBack(name){
		  switch(name){
			case '我的收藏管理':
				return false
				break;
			default:
				return true
		  }
	  }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
  .center-preview {
  
    .el-tabs {
      & /deep/ .el-tabs__header {
		.el-tabs__nav{
			overflow: auto;
		}
		::-webkit-scrollbar {
		  -webkit-appearance: none;
		  width: 6px;
		  height: 6px;
		}
		::-webkit-scrollbar-track {
		  background: rgba(0, 0, 0, 0.1);
		  border-radius: 0;
		}
		::-webkit-scrollbar-thumb {
		  cursor: pointer;
		  border-radius: 5px;
		  background: rgba(0, 0, 0, 0.15);
		  transition: color 0.2s ease;
		}
		::-webkit-scrollbar-thumb:hover {
		  background: rgba(0, 0, 0, 0.3);
		}
        .el-tabs__nav-wrap {
          margin: 0;
  
          &::after {
            content: none;
          }
        }
  
        .el-tabs__active-bar {
          display: none !important;
        }
      }
  
      .center-preview-pv {
        .el-date-editor.el-input {
          width: auto;
        }
  
        .balance {
          .el-input {
            width: auto;
          }
        }
      }
    }
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header {
	padding: 0px;
	margin: 10px 0 0 40px;
	display: flex;
	border-color: #f8524630;
	float: right;
	flex-wrap: wrap;
	background: none;
	width: 200px;
	border-width: 0px;
	position: relative;
	border-style: solid;
	text-align: center;
	height: auto;
	order: 2;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header .el-tabs__item {
  	padding: 0 10px;
  	color: #666;
  	font-weight: 500;
  	font-size: 14px;
  	border-color: #eee;
  	line-height: auto;
  	transition: 0ms;
  	background: #fff;
  	width: 200px;
  	border-width: 0 0 1px;
  	border-style: solid;
  	text-align: center;
  	height: auto;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header .el-tabs__item:hover {
  	padding: 0 10px;
  	color: #fff;
  	background: #C98777;
  	font-weight: 600;
  	font-size: 14px;
  	line-height: auto;
  	text-align: center;
  	height: auto;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__header .el-tabs__item.is-active {
  	padding: 0 10px;
  	color: #fff;
  	background: #C98777;
  	font-weight: 600;
  	width: 100%;
  	font-size: 14px;
  	line-height: auto;
  	text-align: center;
  	height: auto;
  }
  
  .center-preview .el-tabs /deep/ .el-tabs__content {
  	padding: 30px 20px 40px;
  	margin: 10px 0 0;
  	background: #fff;
  	flex: 1;
  	width: calc(100% - 220px);
  	border-color: #eee;
  	border-width: 1px 1px 0 0;
  	float: left;
  	border-style: solid;
  }
  .center-preview .el-tabs /deep/ .el-tabs__content .el-tab-pane {
  	width: 100%;
  }
  
  .center-preview-pv .el-form-item /deep/ .el-form-item__label {
  	padding: 0 10px 0 0;
  	color: #666;
  	font-weight: 500;
  	width: 110px;
  	font-size: 14px;
  	line-height: 40px;
  	text-align: right;
  }
  
  .center-preview-pv .el-form-item .el-form-item__content {
    margin-left: 110px;
  }
  
  .center-preview-pv .el-input /deep/ .el-input__inner {
  	border-radius: 0px;
  	padding: 0 12px;
  	box-shadow: 0 0 0px rgba(64, 158, 255, .5);
  	outline: none;
  	color: #666;
  	width: auto;
  	font-size: 14px;
  	border-color: #eee;
  	border-width: 1px;
  	border-style: solid;
  	min-width: 150px;
  	height: 40px;
  }
  
  .center-preview-pv .el-select /deep/ .el-input__inner {
  	border-radius: 0px;
  	padding: 0 12px;
  	box-shadow: 0 0 0px rgba(64, 158, 255, .5);
  	outline: none;
  	color: #666;
  	width: auto;
  	font-size: 14px;
  	border-color: #eee;
  	border-width: 1px;
  	border-style: solid;
  	min-width: 150px;
  	height: 40px;
  }
  
  .center-preview-pv .el-date-editor /deep/ .el-input__inner {
  	border-radius: 0px;
  	padding: 0 10px 0 30px;
  	box-shadow: 0 0 0px rgba(64, 158, 255, .5);
  	outline: none;
  	color: #666;
  	width: 200px;
  	font-size: 14px;
  	border-color: #eee;
  	border-width: 1px;
  	border-style: solid;
  	height: 40px;
  }
  
  .center-preview-pv /deep/ .avatar-uploader-icon {
  	cursor: pointer;
  	border-radius: 2px;
  	color: #999;
  	width: 130px;
  	font-size: 24px;
  	border-color: #eee;
  	border-width: 1px;
  	line-height: 50px;
  	border-style: solid;
  	text-align: center;
  	height: 50px;
  }
  
  .center-preview-pv .el-form-item.balance /deep/ .el-input__inner {
  	border-radius: 0px;
  	padding: 0 12px;
  	color: #666;
  	display: inline-block;
  	width: 200px;
  	font-size: 14px;
  	border-color: #eee;
  	border-width: 1px;
  	border-style: solid;
  	height: 36px;
  }
</style>
