<template>
  <div :style='{"color":"#3B3E40","padding":"30px 30px 30px","fontSize":"14px"}'>
    <el-form
	  :style='{"border":"0px solid #e3e3e3","padding":"30px 30px 20px","borderRadius":"8px","alignItems":"flex-start","flexWrap":"wrap","background":"rgba(255,255,255,1)","display":"flex","fontSize":"inherit"}'
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      label-width="180px"
    >  
     <el-row>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='xuesheng'"  label="账号" prop="xuehao">
          <el-input v-model="ruleForm.xuehao" readonly              placeholder="账号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='xuesheng'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming"               placeholder="姓名" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-if="flag=='xuesheng'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie"  placeholder="请选择性别">
            <el-option
                v-for="(item,index) in xueshengxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='xuesheng'"  label="年龄" prop="nianling">
          <el-input v-model="ruleForm.nianling"               placeholder="年龄" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-if="flag=='xuesheng'"  label="学历" prop="xueli">
          <el-select v-model="ruleForm.xueli"  placeholder="请选择学历">
            <el-option
                v-for="(item,index) in xueshengxueliOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='xuesheng'"  label="学校" prop="xuexiao">
          <el-input v-model="ruleForm.xuexiao"               placeholder="学校" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-if="flag=='xuesheng'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="xueshengtouxiangUploadChange"
          ></file-upload>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='xuesheng'"  label="手机号" prop="mobile">
          <el-input v-model="ruleForm.mobile"               placeholder="手机号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='zhaopingongsi'"  label="企业账号" prop="qiyezhanghao">
          <el-input v-model="ruleForm.qiyezhanghao" readonly              placeholder="企业账号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='zhaopingongsi'"  label="企业名称" prop="qiyemingcheng">
          <el-input v-model="ruleForm.qiyemingcheng"               placeholder="企业名称" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='zhaopingongsi'"  label="企业地址" prop="qiyedizhi">
          <el-input v-model="ruleForm.qiyedizhi"               placeholder="企业地址" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='zhaopingongsi'"  label="负责人" prop="fuzeren">
          <el-input v-model="ruleForm.fuzeren"               placeholder="负责人" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='zhaopingongsi'"  label="企业邮箱" prop="qiyeyouxiang">
          <el-input v-model="ruleForm.qiyeyouxiang"               placeholder="企业邮箱" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}'   v-if="flag=='zhaopingongsi'"  label="联系手机" prop="lianxishouji">
          <el-input v-model="ruleForm.lianxishouji"               placeholder="联系手机" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-if="flag=='zhaopingongsi'" label="营业执照" prop="yingyezhizhao">
          <file-upload
          tip="点击上传营业执照"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.yingyezhizhao?ruleForm.yingyezhizhao:''"
          @change="zhaopingongsiyingyezhizhaoUploadChange"
          ></file-upload>
        </el-form-item>
		<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-if="flag=='users'" label="用户名" prop="username">
			<el-input v-model="ruleForm.username" placeholder="用户名"></el-input>
		</el-form-item>
		<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-if="flag=='users'" label="头像" prop="image">
		  <file-upload
		  tip="点击上传头像"
		  action="file/upload"
		  :limit="1"
		  :multiple="false"
		  :fileUrls="ruleForm.image?ruleForm.image:''"
		  @change="usersimageUploadChange"
		  ></file-upload>
		</el-form-item>
		<el-form-item :style='{"padding":"10px 0 20px","margin":"30px 0","alignItems":"center","textAlign":"center","background":"none","display":"flex","width":"calc(100% - 150px)","perspective":"320px","-webkitPerspective":"320px","fontSize":"48px","justifyContent":"center"}'>
			<el-button class="btn3" :style='{"border":"1px solid #0f70ad","cursor":"pointer","padding":"0 20px","boxShadow":"inset 0 1px 0 rgba(255, 255, 255, 0.2)","margin":"0px 10px","color":"#fff","minWidth":"78px","transition":"all 0.3s","borderRadius":"3px","background":"linear-gradient(to bottom, #208ed3 0%,#0272bd 100%)","width":"auto","fontSize":"14px","lineHeight":"24px","textShadow":"1px 1px 0 rgba(0, 0, 0, 0.2)","height":"44px"}' type="primary" @click="onUpdateHandler">
				<span class="icon iconfont icon-tijiao16" :style='{"margin":"0 2px","fontSize":"18px","color":"inherit","display":"inline-block"}'></span>
				确定
			</el-button>
		</el-form-item>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
      xueshengxingbieOptions: [],
      xueshengxueliOptions: [],
    };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.xueshengxingbieOptions = "男,女".split(',')
    this.xueshengxueliOptions = "大专,本科,硕士研究生,博士研究生".split(',')
  },
  methods: {
    xueshengtouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
    zhaopingongsiyingyezhizhaoUploadChange(fileUrls) {
        this.ruleForm.yingyezhizhao = fileUrls;
    },
	usersimageUploadChange(fileUrls) {
		this.ruleForm.image = fileUrls;
	},
    onUpdateHandler() {
      if((!this.ruleForm.xuehao)&& 'xuesheng'==this.flag){
        this.$message.error('账号不能为空');
        return
      }


      if((!this.ruleForm.mima)&& 'xuesheng'==this.flag){
        this.$message.error('密码不能为空');
        return
      }


      if((!this.ruleForm.xingming)&& 'xuesheng'==this.flag){
        this.$message.error('姓名不能为空');
        return
      }






      if( 'xuesheng' ==this.flag && this.ruleForm.nianling&&(!isIntNumer(this.ruleForm.nianling))){
       this.$message.error(`年龄应输入整数`);
        return
      }
      if((!this.ruleForm.xueli)&& 'xuesheng'==this.flag){
        this.$message.error('学历不能为空');
        return
      }


      if((!this.ruleForm.xuexiao)&& 'xuesheng'==this.flag){
        this.$message.error('学校不能为空');
        return
      }




        if(this.ruleForm.touxiang!=null) {
                this.ruleForm.touxiang = this.ruleForm.touxiang.replace(new RegExp(this.$base.url,"g"),"");
        }


      if( 'xuesheng' ==this.flag && this.ruleForm.mobile&&(!isMobile(this.ruleForm.mobile))){
        this.$message.error(`手机号应输入手机格式`);
        return
      }
      if((!this.ruleForm.qiyezhanghao)&& 'zhaopingongsi'==this.flag){
        this.$message.error('企业账号不能为空');
        return
      }


      if((!this.ruleForm.mima)&& 'zhaopingongsi'==this.flag){
        this.$message.error('密码不能为空');
        return
      }


      if((!this.ruleForm.qiyemingcheng)&& 'zhaopingongsi'==this.flag){
        this.$message.error('企业名称不能为空');
        return
      }




      if((!this.ruleForm.fuzeren)&& 'zhaopingongsi'==this.flag){
        this.$message.error('负责人不能为空');
        return
      }




      if( 'zhaopingongsi' ==this.flag && this.ruleForm.qiyeyouxiang&&(!isEmail(this.ruleForm.qiyeyouxiang))){
        this.$message.error(`企业邮箱应输入邮箱格式`);
        return
      }


      if( 'zhaopingongsi' ==this.flag && this.ruleForm.lianxishouji&&(!isMobile(this.ruleForm.lianxishouji))){
        this.$message.error(`联系手机应输入手机格式`);
        return
      }


        if(this.ruleForm.yingyezhizhao!=null) {
                this.ruleForm.yingyezhizhao = this.ruleForm.yingyezhizhao.replace(new RegExp(this.$base.url,"g"),"");
        }




      if('users'==this.flag && this.ruleForm.username.trim().length<1) {
	this.$message.error(`用户名不能为空`);
        return	
      }
	  if(this.flag=='users'){
	  	this.ruleForm.image = this.ruleForm.image.replace(new RegExp(this.$base.url,"g"),"")
	  }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
				if(this.flag=='users'){
					this.$storage.set('headportrait',this.ruleForm.image)
				}
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 10px 0 0;
	  	  color: #333;
	  	  font-weight: 500;
	  	  display: inline-block;
	  	  width: 180px;
	  	  font-size: inherit;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 180px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  padding: 0 12px;
	  	  color: inherit;
	  	  font-size: 14px;
	  	  border-color: #e3e3e3;
	  	  border-radius: 3px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  background: none;
	  	  width: auto;
	  	  border-width: 1px;
	  	  border-style: solid;
	  	  min-width: 400px;
	  	  height: 44px;
	  	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  border-radius: 3px;
	  	  padding: 0 10px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  color: inherit;
	  	  background: none;
	  	  width: auto;
	  	  font-size: 14px;
	  	  border-color: #e3e3e3;
	  	  border-width: 1px;
	  	  border-style: solid;
	  	  min-width: 250px;
	  	  height: 44px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border-radius: 3px;
	  	  padding: 0 10px 0 30px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  color: inherit;
	  	  background: none;
	  	  width: auto;
	  	  font-size: 14px;
	  	  border-color: #e3e3e3;
	  	  border-width: 1px;
	  	  border-style: solid;
	  	  min-width: 250px;
	  	  height: 44px;
	  	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  cursor: pointer;
	  	  color: #bbb;
	  	  object-fit: cover;
	  	  font-size: 24px;
	  	  border-color: #e3e3e3;
	  	  line-height: 100px;
	  	  border-radius: 3px;
	  	  background: none;
	  	  width: auto;
	  	  border-width: 1px;
	  	  border-style: solid;
	  	  text-align: center;
	  	  min-width: 200px;
	  	  height: 100px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  cursor: pointer;
	  	  color: #bbb;
	  	  object-fit: cover;
	  	  font-size: 24px;
	  	  border-color: #e3e3e3;
	  	  line-height: 100px;
	  	  border-radius: 3px;
	  	  background: none;
	  	  width: auto;
	  	  border-width: 1px;
	  	  border-style: solid;
	  	  text-align: center;
	  	  min-width: 200px;
	  	  height: 100px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  padding: 12px;
	  	  color: inherit;
	  	  font-size: 14px;
	  	  border-color: #e3e3e3;
	  	  min-height: 250px;
	  	  border-radius: 3px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  background: none;
	  	  width: auto;
	  	  border-width: 1px;
	  	  border-style: solid;
	  	  min-width: 900px;
	  	  height: auto;
	  	}
	
	.add-update-preview .btn3 {
				border: 1px solid #0f70ad;
				cursor: pointer;
				padding: 0 20px;
				margin: 0px 10px;
				color: #fff;
				font-size: 14px;
				line-height: 24px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #208ed3 0%,#0272bd 100%);
				width: auto;
				min-width: 78px;
				height: 44px;
			}
	
	.add-update-preview .btn3:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.editor>.avatar-uploader {
		line-height: 0;
		height: 0;
	}
</style>
