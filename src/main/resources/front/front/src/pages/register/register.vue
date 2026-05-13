<template>
	<div>

	<div class="container" :style='{"minHeight":"100vh","alignItems":"center","background":"url(http://localhost:8080/springbootfinalproject/upload/20260427181713_223_2.jpg)","display":"flex","width":"100%","backgroundSize":"cover","backgroundPosition":"center center","backgroundRepeat":"no-repeat","justifyContent":"center"}'>
		<el-form class='rgs-form' v-if="pageFlag=='register'" :style='{"border":"4px groove #333","padding":"30px 8% 30px 8%","boxShadow":"0px 26px 26px -30px #333","margin":"0 auto","alignItems":"center","textAlign":"center","flexDirection":"column","display":"flex","justifyContent":"center","minHeight":"500px","borderRadius":"20px","flexWrap":"wrap","background":"rgba(255,255,255,.5)","width":"45vw","position":"relative","height":"auto"}' ref="registerForm" :model="registerForm" :rules="rules">
			<div v-if="false" :style='{"width":"100%","margin":"0 0 10px 0","lineHeight":"44px","fontSize":"20px","color":"rgba(64, 158, 255, 1)","textAlign":"center"}'>USER / REGISTER</div>
			<div v-if="true" :style='{"margin":"0px auto 10px","-webkit-text-stroke":"6px transparent","color":"#fff","textAlign":"center","background":"#000","-webkitTextFillColor":"#ffffff","width":"100%","letterSpacing":"6px","lineHeight":"44px","fontSize":"24px","-webkitBackgroundClip":"text"}'>智聘兼职发布平台注册</p></div>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="xuehao">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('xuehao')?'required':''">账号：</div>
				<el-input v-model="registerForm.xuehao"  placeholder="请输入账号" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="mima">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('mima')?'required':''">密码：</div>
				<el-input v-model="registerForm.mima" type="password" placeholder="请输入密码" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="mima2">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('mima')?'required':''">确认密码：</div>
				<el-input v-model="registerForm.mima2" type="password" placeholder="请再次输入密码" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="xingming">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('xingming')?'required':''">姓名：</div>
				<el-input v-model="registerForm.xingming"  placeholder="请输入姓名" />
			</el-form-item>
      <el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="mobile">
        <div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('mobile')?'required':''">手机号：</div>
        <el-input v-model="registerForm.mobile" placeholder="请输入11位手机号" maxlength="11"></el-input>
      </el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="xingbie">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('xingbie')?'required':''">性别：</div>
                <el-select v-model="registerForm.xingbie" placeholder="请选择性别" >
                  <el-option
                      v-for="(item,index) in xueshengxingbieOptions"
                      :key="index"
                      :label="item"
                      :value="item">
                  </el-option>
                </el-select>
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="nianling">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('nianling')?'required':''">年龄：</div>
				<el-input v-model.number="registerForm.nianling"  placeholder="请输入年龄" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="xueli">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('xueli')?'required':''">学历：</div>
                <el-select v-model="registerForm.xueli" placeholder="请选择学历" >
                  <el-option
                      v-for="(item,index) in xueshengxueliOptions"
                      :key="index"
                      :label="item"
                      :value="item">
                  </el-option>
                </el-select>
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="xuexiao">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('xuexiao')?'required':''">学校：</div>
				<el-input v-model="registerForm.xuexiao"  placeholder="请输入学校" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='xuesheng'" prop="touxiang">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('touxiang')?'required':''">头像：</div>
                <file-upload
					tip="点击上传头像"
					action="file/upload"
					:limit="1"
					:multiple="true"
					:fileUrls="registerForm.touxiang?registerForm.touxiang:''"
					@change="xueshengtouxiangUploadChange"
				></file-upload>
			</el-form-item>


			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="qiyezhanghao">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('qiyezhanghao')?'required':''">企业账号：</div>
				<el-input v-model="registerForm.qiyezhanghao"  placeholder="请输入企业账号" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="mima">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('mima')?'required':''">密码：</div>
				<el-input v-model="registerForm.mima" type="password" placeholder="请输入密码" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="mima2">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('mima')?'required':''">确认密码：</div>
				<el-input v-model="registerForm.mima2" type="password" placeholder="请再次输入密码" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="qiyemingcheng">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('qiyemingcheng')?'required':''">企业名称：</div>
				<el-input v-model="registerForm.qiyemingcheng"  placeholder="请输入企业名称" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="qiyedizhi">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('qiyedizhi')?'required':''">企业地址：</div>
				<el-input v-model="registerForm.qiyedizhi"  placeholder="请输入企业地址" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="fuzeren">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('fuzeren')?'required':''">负责人：</div>
				<el-input v-model="registerForm.fuzeren"  placeholder="请输入负责人" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="qiyeyouxiang">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('qiyeyouxiang')?'required':''">企业邮箱：</div>
				<el-input v-model="registerForm.qiyeyouxiang"  placeholder="请输入企业邮箱" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="lianxishouji">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('lianxishouji')?'required':''">联系手机：</div>
				<el-input v-model="registerForm.lianxishouji"  placeholder="请输入联系手机" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0 auto 15px","textAlign":"left","height":"auto"}' v-if="tableName=='zhaopingongsi'" prop="yingyezhizhao">
				<div v-if="true" :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","display":"inline-block","width":"150px","lineHeight":"36px","fontSize":"14px"}' :class="changeRules('yingyezhizhao')?'required':''">营业执照：</div>
                <file-upload
					tip="点击上传营业执照"
					action="file/upload"
					:limit="1"
					:multiple="true"
					:fileUrls="registerForm.yingyezhizhao?registerForm.yingyezhizhao:''"
					@change="zhaopingongsiyingyezhizhaoUploadChange"
				></file-upload>
			</el-form-item>
			<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"20px 10px 10px 0","color":"#fff","borderRadius":"4px","background":"#D5BE88","display":"inline-block","width":"100px","letterSpacing":"4px","fontSize":"16px","height":"36px"}' type="primary" @click="submitForm('registerForm')">注册</el-button>
			<el-button :style='{"border":"1px solid #ffffff50","cursor":"pointer","padding":"0 24px","margin":"0","color":"#666","textAlign":"center","display":"inline-block","letterSpacing":"4px","textDecoration":"underline","borderRadius":"4px","background":"none","width":"100px","fontSize":"16px","height":"36px"}' @click="resetForm('registerForm')">重置</el-button>
			<router-link :style='{"cursor":"pointer","padding":"0px 8px","margin":"0px 0 0 0","color":"#666","borderRadius":"4px","textAlign":"right","background":"none","display":"inline-block","width":"100%","lineHeight":"20px","fontSize":"14px","textDecoration":"underline"}' to="/login">已有账户登录</router-link>
			<div class="idea1" :style='{"width":"100%","background":"red","display":"none","height":"40px"}'></div>
			<div class="idea2" :style='{"width":"100%","background":"blue","display":"none","height":"40px"}'></div>
		</el-form>
    </div>
  </div>
</div>
</template>

<script>

export default {
    //数据集合
    data() {
		return {
            pageFlag : '',
			tableName: '',
			registerForm: {},
			forgetForm: {},
			rules: {},
			requiredRules: {},
            xueshengxingbieOptions: [],
            xueshengxueliOptions: [],
            smscode:'',
			//倒计时60s
			count: 60,
			//倒计时定时器
			inter: null,
			//倒计结束标识
			isEndFlag: true,
		}
    },
	mounted() {
		if(this.$route.query.pageFlag=='register'){
			this.tableName = this.$route.query.role;
			if(this.tableName=='xuesheng'){
				this.registerForm = {
					xuehao: '',
					mima: '',
					mima2: '',
					xingming: '',
					xingbie: '',
					nianling: '',
					xueli: '',
					xuexiao: '',
					touxiang: '',
					mobile: '',
				}
			}
			if(this.tableName=='zhaopingongsi'){
				this.registerForm = {
					qiyezhanghao: '',
					mima: '',
					mima2: '',
					qiyemingcheng: '',
					qiyedizhi: '',
					fuzeren: '',
					qiyeyouxiang: '',
					lianxishouji: '',
					yingyezhizhao: '',
					sfsh: '',
					shhf: '',
				}
			}
			if ('xuesheng' == this.tableName) {
				this.requiredRules.xuehao = [{ required: true, message: '请输入账号', trigger: 'blur' }]
			}
			if ('xuesheng' == this.tableName) {
				this.requiredRules.mima = [{ required: true, message: '请输入密码', trigger: 'blur' }]
			}
			if ('xuesheng' == this.tableName) {
				this.requiredRules.xingming = [{ required: true, message: '请输入姓名', trigger: 'blur' }]
			}
			if ('xuesheng' == this.tableName) {
				this.requiredRules.xueli = [{ required: true, message: '请输入学历', trigger: 'blur' }]
			}
			if ('xuesheng' == this.tableName) {
				this.requiredRules.xuexiao = [{ required: true, message: '请输入学校', trigger: 'blur' }]
			}
      if ('xuesheng' == this.tableName) {
        this.requiredRules.mobile = [{ required: true, message: '请输入手机号', trigger: 'blur' }]
      }
			if ('zhaopingongsi' == this.tableName) {
				this.requiredRules.qiyezhanghao = [{ required: true, message: '请输入企业账号', trigger: 'blur' }]
			}
			if ('zhaopingongsi' == this.tableName) {
				this.requiredRules.mima = [{ required: true, message: '请输入密码', trigger: 'blur' }]
			}
			if ('zhaopingongsi' == this.tableName) {
				this.requiredRules.qiyemingcheng = [{ required: true, message: '请输入企业名称', trigger: 'blur' }]
			}
			if ('zhaopingongsi' == this.tableName) {
				this.requiredRules.fuzeren = [{ required: true, message: '请输入负责人', trigger: 'blur' }]
			}
		}
	},
    created() {
		this.pageFlag = this.$route.query.pageFlag;
		if(this.$route.query.pageFlag=='register'){
		  if ('xuesheng' == this.tableName) {
			this.rules.xuehao = [{ required: true, message: '请输入账号', trigger: 'blur' }];
		  }
		  if ('xuesheng' == this.tableName) {
			this.rules.mima = [{ required: true, message: '请输入密码', trigger: 'blur' }];
		  }
		  if ('xuesheng' == this.tableName) {
			this.rules.xingming = [{ required: true, message: '请输入姓名', trigger: 'blur' }];
		  }
			this.xueshengxingbieOptions = "男,女".split(',');
		  if ('xuesheng' == this.tableName) {
			this.rules.nianling = [{ required: true, validator: this.$validate.isIntNumer, trigger: 'blur' }];
		  }
			this.xueshengxueliOptions = "大专,本科,硕士研究生,博士研究生".split(',');
		  if ('xuesheng' == this.tableName) {
			this.rules.xueli = [{ required: true, message: '请输入学历', trigger: 'blur' }];
		  }
		  if ('xuesheng' == this.tableName) {
			this.rules.xuexiao = [{ required: true, message: '请输入学校', trigger: 'blur' }];
		  }
		  if ('xuesheng' == this.tableName) {
			this.rules.mobile = [{ required: true, validator: this.$validate.isMobile, trigger: 'blur' }];
		  }
		  if ('zhaopingongsi' == this.tableName) {
			this.rules.qiyezhanghao = [{ required: true, message: '请输入企业账号', trigger: 'blur' }];
		  }
		  if ('zhaopingongsi' == this.tableName) {
			this.rules.mima = [{ required: true, message: '请输入密码', trigger: 'blur' }];
		  }
		  if ('zhaopingongsi' == this.tableName) {
			this.rules.qiyemingcheng = [{ required: true, message: '请输入企业名称', trigger: 'blur' }];
		  }
		  if ('zhaopingongsi' == this.tableName) {
			this.rules.fuzeren = [{ required: true, message: '请输入负责人', trigger: 'blur' }];
		  }
		  if ('zhaopingongsi' == this.tableName) {
			this.rules.qiyeyouxiang = [{ required: true, validator: this.$validate.isEmail, trigger: 'blur' }];
		  }
		  if ('zhaopingongsi' == this.tableName) {
			this.rules.lianxishouji = [{ required: true, validator: this.$validate.isMobile, trigger: 'blur' }];
		  }
		}
    },
    //方法集合
    methods: {
		changeRules(name){
			if(this.requiredRules[name]){
				return true
			}
			return false
		},
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
        // 下二随
      xueshengtouxiangUploadChange(fileUrls) {
          this.registerForm.touxiang = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");
      },
      zhaopingongsiyingyezhizhaoUploadChange(fileUrls) {
          this.registerForm.yingyezhizhao = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");
      },

        // 多级联动参数

        sendsmscode() {

            let mobileF = this.$validate.isMobile2(this.registerForm.mobile);
            if(this.registerForm.mobile&&(!this.$validate.isMobile2(this.registerForm.mobile))){
              this.$message.error(`请输入正确的手机格式`);
              return
            }
            this.isEndFlag = false;
            var _this = this;
            this.inter = window.setInterval(function() {
                _this.count = _this.count - 1;
                if (_this.count <= 0) {
                  window.clearInterval(_this.inter);
                  _this.isEndFlag = true;
                  _this.count=60;
                }
            }, 1000);
            this.$http({
              url: `${this.tableName}/sendsms?mobile=`+this.registerForm.mobile,
              method: "get",
              params: {}
            }).then(({ data }) => {
              if (data && data.code === 0) {
                  this.$message.success(`发送成功`);
              } else {
                  this.$message.error(`服务器异常，请稍后重试`)
              }
            });
        },

      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            var url=this.tableName+"/register";
              if(`xuesheng` == this.tableName ){
                url=this.tableName+"/register?smscode="+this.smscode;
                if(this.registerForm.mobile&&(!this.$validate.isMobile2(this.registerForm.mobile))){
                        this.$message.error(`请输入正确的手机格式`);
                        return
                }
              }

				if((!this.registerForm.xuehao) && `xuesheng` == this.tableName){
					this.$message.error(`账号不能为空`);
					return
				}
               if(`xuesheng` == this.tableName && this.registerForm.mima!=this.registerForm.mima2) {
                this.$message.error(`两次密码输入不一致`);
                return
               }
				if((!this.registerForm.mima) && `xuesheng` == this.tableName){
					this.$message.error(`密码不能为空`);
					return
				}
				if((!this.registerForm.xingming) && `xuesheng` == this.tableName){
					this.$message.error(`姓名不能为空`);
					return
				}
				if(`xuesheng` == this.tableName && this.registerForm.nianling &&(!this.$validate.isIntNumer2(this.registerForm.nianling))){
					this.$message.error(`年龄应输入整数`);
					return
				}
				if((!this.registerForm.xueli) && `xuesheng` == this.tableName){
					this.$message.error(`学历不能为空`);
					return
				}
				if((!this.registerForm.xuexiao) && `xuesheng` == this.tableName){
					this.$message.error(`学校不能为空`);
					return
				}

			  if(this.tableName=='zhaopingongsi'){
				  this.registerForm.sfsh = '待审核'
			  }
				if((!this.registerForm.qiyezhanghao) && `zhaopingongsi` == this.tableName){
					this.$message.error(`企业账号不能为空`);
					return
				}
               if(`zhaopingongsi` == this.tableName && this.registerForm.mima!=this.registerForm.mima2) {
                this.$message.error(`两次密码输入不一致`);
                return
               }
				if((!this.registerForm.mima) && `zhaopingongsi` == this.tableName){
					this.$message.error(`密码不能为空`);
					return
				}
				if((!this.registerForm.qiyemingcheng) && `zhaopingongsi` == this.tableName){
					this.$message.error(`企业名称不能为空`);
					return
				}
				if((!this.registerForm.fuzeren) && `zhaopingongsi` == this.tableName){
					this.$message.error(`负责人不能为空`);
					return
				}
					if(`zhaopingongsi` == this.tableName && this.registerForm.qiyeyouxiang &&(!this.$validate.isEmail2(this.registerForm.qiyeyouxiang))){
						this.$message.error(`企业邮箱应输入邮件格式`);
						return
					}
					if(`zhaopingongsi` == this.tableName && this.registerForm.lianxishouji &&(!this.$validate.isMobile2(this.registerForm.lianxishouji))){
						this.$message.error(`联系手机应输入手机格式`);
						return
					}
            this.$http.post(url, this.registerForm).then(res => {
              if (res.data.code === 0) {
                this.$message({
                  message: '注册成功',
                  type: 'success',
                  duration: 1500,
                  onClose: () => {
                    this.$router.push('/login');
                  }
                });
              } else {
                this.$message.error(res.data.msg);
              }
            });
          } else {
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.container {
		position: relative;
		background: url(http://localhost:8080/springbootfinalproject/upload/20260427181713_223_2.jpg);
		
		.el-input {
		  width: auto;
		}
		
		.el-date-editor.el-input {
			width: auto;
		}
		
		.el-form-item /deep/ .el-form-item__content {
						display: flex;
						flex-wrap: wrap;
					}
		
		.rgs-form .el-input /deep/ .el-input__inner {
						border-radius: 0px;
						padding: 0 10px;
						color: #666;
						background: rgba(255,255,255,.9);
						width: 100%;
						font-size: 14px;
						border-color: #ddd;
						border-width: 0 0 1px;
						border-style: solid;
						min-width: 300px;
						height: 40px;
					}
		
		.rgs-form .el-select /deep/ .el-input__inner {
						border-radius: 0px;
						padding: 0 10px;
						color: #666;
						background: rgba(255,255,255,.9);
						width: auto;
						font-size: 14px;
						border-color: #ddd;
						border-width: 0 0 1px;
						border-style: solid;
						min-width: 300px;
						height: 40px;
					}
		
		.rgs-form .el-date-editor /deep/ .el-input__inner {
						border-radius: 0px;
						padding: 0 10px 0 30px;
						color: #666;
						background: rgba(255,255,255,.9);
						width: auto;
						font-size: 14px;
						border-color: #ddd;
						border-width: 0 0 1px;
						border-style: solid;
						min-width: 300px;
						height: 40px;
					}
		
		.rgs-form .el-date-editor /deep/ .el-input__inner {
						border-radius: 0px;
						padding: 0 10px 0 30px;
						color: #666;
						background: rgba(255,255,255,.9);
						width: auto;
						font-size: 14px;
						border-color: #ddd;
						border-width: 0 0 1px;
						border-style: solid;
						min-width: 300px;
						height: 40px;
					}
		
		.rgs-form /deep/ .el-upload--picture-card {
			background: transparent;
			border: 0;
			border-radius: 0;
			width: auto;
			height: auto;
			line-height: initial;
			vertical-align: middle;
		}
		
		.rgs-form /deep/ .upload .upload-img {
		  		  cursor: pointer;
		  		  border-radius: 0px;
		  		  color: #999;
		  		  background: rgba(255,255,255,.9);
		  		  width: 100px;
		  		  font-size: 24px;
		  		  border-color: #ddd;
		  		  border-width: 1px;
		  		  line-height: 60px;
		  		  border-style: solid;
		  		  text-align: center;
		  		  height: 60px;
		  		}
		
		.rgs-form /deep/ .el-upload-list .el-upload-list__item {
		  		  cursor: pointer;
		  		  border-radius: 0px;
		  		  color: #999;
		  		  background: rgba(255,255,255,.9);
		  		  width: 100px;
		  		  font-size: 24px;
		  		  border-color: #ddd;
		  		  border-width: 1px;
		  		  line-height: 60px;
		  		  border-style: solid;
		  		  text-align: center;
		  		  height: 60px;
		  		}
		
		.rgs-form /deep/ .el-upload .el-icon-plus {
		  		  cursor: pointer;
		  		  border-radius: 0px;
		  		  color: #999;
		  		  background: rgba(255,255,255,.9);
		  		  width: 100px;
		  		  font-size: 24px;
		  		  border-color: #ddd;
		  		  border-width: 1px;
		  		  line-height: 60px;
		  		  border-style: solid;
		  		  text-align: center;
		  		  height: 60px;
		  		}
	}
	.required {
		position: relative;
	}
	.required::after{
				color: red;
				left: 138px;
				position: absolute;
				content: "*";
				order: 2;
			}
</style>
