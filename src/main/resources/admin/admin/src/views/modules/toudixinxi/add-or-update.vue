<template>
	<div class="addEdit-block" :style='{"padding":"30px","fontSize":"14px","color":"#666","background":"none"}'>
		<el-form
			:style='{"border":"0px solid #e3e3e3","padding":"30px 30px 20px","borderRadius":"8px","alignItems":"flex-start","flexWrap":"wrap","background":"rgba(255,255,255,1)","display":"flex","fontSize":"inherit"}'
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="180px"
		>
			<template >
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="兼职名称" prop="jianzhimingcheng">
					<el-input v-model="ruleForm.jianzhimingcheng" placeholder="兼职名称" clearable  :readonly="ro.jianzhimingcheng"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="兼职名称" prop="jianzhimingcheng">
					<el-input v-model="ruleForm.jianzhimingcheng" placeholder="兼职名称" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="upload" v-if="type!='info' && !ro.jianzhifengmian" label="兼职封面" prop="jianzhifengmian">
					<file-upload
						tip="点击上传兼职封面"
						action="file/upload"
						:limit="3"
						:multiple="true"
						:fileUrls="ruleForm.jianzhifengmian?ruleForm.jianzhifengmian:''"
						@change="jianzhifengmianUploadChange"
					></file-upload>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="upload" v-else-if="ruleForm.jianzhifengmian" label="兼职封面" prop="jianzhifengmian">
					<img v-if="ruleForm.jianzhifengmian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.jianzhifengmian.split(',')[0]" width="100" height="100">
					<img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.jianzhifengmian.split(',')" :src="$base.url+item" width="100" height="100">
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="兼职分类" prop="jianzhifenlei">
					<el-input v-model="ruleForm.jianzhifenlei" placeholder="兼职分类" clearable  :readonly="ro.jianzhifenlei"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="兼职分类" prop="jianzhifenlei">
					<el-input v-model="ruleForm.jianzhifenlei" placeholder="兼职分类" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="企业账号" prop="qiyezhanghao">
					<el-input v-model="ruleForm.qiyezhanghao" placeholder="企业账号" clearable  :readonly="ro.qiyezhanghao"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="企业账号" prop="qiyezhanghao">
					<el-input v-model="ruleForm.qiyezhanghao" placeholder="企业账号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="企业名称" prop="qiyemingcheng">
					<el-input v-model="ruleForm.qiyemingcheng" placeholder="企业名称" clearable  :readonly="ro.qiyemingcheng"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="企业名称" prop="qiyemingcheng">
					<el-input v-model="ruleForm.qiyemingcheng" placeholder="企业名称" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="负责人" prop="fuzeren">
					<el-input v-model="ruleForm.fuzeren" placeholder="负责人" clearable  :readonly="ro.fuzeren"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="负责人" prop="fuzeren">
					<el-input v-model="ruleForm.fuzeren" placeholder="负责人" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="select" v-if="type!='info'"  label="应聘人数" prop="zhaopinrenshu">
					<el-select :disabled="ro.zhaopinrenshu" v-model="ruleForm.zhaopinrenshu" placeholder="请选择应聘人数" >
						<el-option
							v-for="(item,index) in zhaopinrenshuOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="应聘人数" prop="zhaopinrenshu">
					<el-input v-model="ruleForm.zhaopinrenshu"
						placeholder="应聘人数" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="账号" prop="xuehao">
					<el-input v-model="ruleForm.xuehao" placeholder="账号" clearable  :readonly="ro.xuehao"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="账号" prop="xuehao">
					<el-input v-model="ruleForm.xuehao" placeholder="账号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" clearable  :readonly="ro.xingming"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="手机号" prop="mobile">
					<el-input v-model="ruleForm.mobile" placeholder="手机号" clearable  :readonly="ro.mobile"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="手机号" prop="mobile">
					<el-input v-model="ruleForm.mobile" placeholder="手机号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="学历" prop="xueli">
					<el-input v-model="ruleForm.xueli" placeholder="学历" clearable  :readonly="ro.xueli"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="学历" prop="xueli">
					<el-input v-model="ruleForm.xueli" placeholder="学历" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="学校" prop="xuexiao">
					<el-input v-model="ruleForm.xuexiao" placeholder="学校" clearable  :readonly="ro.xuexiao"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="学校" prop="xuexiao">
					<el-input v-model="ruleForm.xuexiao" placeholder="学校" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="upload" v-if="type!='info'&& !ro.jianlifujian" label="简历附件" prop="jianlifujian">
					<file-upload
						tip="点击上传简历附件"
						action="file/upload"
						:limit="1"
						:type="3"
						:multiple="true"
						:fileUrls="ruleForm.jianlifujian?ruleForm.jianlifujian:''"
						@change="jianlifujianUploadChange"
					></file-upload>
				</el-form-item>  
				<!-- 在线简历：显示查看按钮 -->
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else-if="ruleForm.jianlileixing === 1" label="简历附件" prop="jianlifujian">
					<el-button :style='{"cursor":"pointer","padding":"0 30px","margin":"0 20px 0 0","borderColor":"#e3e3e3","color":"#fff","borderRadius":"3px","background":"#67C23A","borderWidth":"0px","width":"auto","lineHeight":"36px","fontSize":"14px","borderStyle":"solid","height":"36px"}' type="success" size="small" @click="viewOnlineResume">查看在线简历</el-button>
				</el-form-item>
				<!-- 附件简历且有文件：显示下载按钮 -->
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else-if="ruleForm.jianlifujian" label="简历附件" prop="jianlifujian">
					<el-button :style='{"cursor":"pointer","padding":"0 30px","margin":"0 20px 0 0","borderColor":"#e3e3e3","color":"#333","borderRadius":"3px","background":"#eee","borderWidth":"0px","width":"auto","lineHeight":"36px","fontSize":"14px","borderStyle":"solid","height":"36px"}' type="text" size="small" @click="download($base.url+ruleForm.jianlifujian)">下载附件简历</el-button>
				</el-form-item>
				<!-- 无简历 -->
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else label="简历附件" prop="jianlifujian">
					<el-button :style='{"cursor":"pointer","padding":"0 30px","margin":"0 20px 0 0","borderColor":"#e3e3e3","color":"#333","borderRadius":"3px","background":"#eee","borderWidth":"0px","width":"auto","lineHeight":"36px","fontSize":"14px","borderStyle":"solid","height":"36px"}' type="text" size="small">无</el-button>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="投递备注" prop="toudibeizhu">
					<el-input v-model="ruleForm.toudibeizhu" placeholder="投递备注" clearable  :readonly="ro.toudibeizhu"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="投递备注" prop="toudibeizhu">
					<el-input v-model="ruleForm.toudibeizhu" placeholder="投递备注" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="date" v-if="type!='info'" label="投递日期" prop="toudiriqi">
					<el-date-picker
						format="yyyy 年 MM 月 dd 日"
						value-format="yyyy-MM-dd"
						v-model="ruleForm.toudiriqi" 
						type="date"
						:readonly="ro.toudiriqi"
						placeholder="投递日期"
					></el-date-picker> 
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-else-if="ruleForm.toudiriqi" label="投递日期" prop="toudiriqi">
					<el-input v-model="ruleForm.toudiriqi" placeholder="投递日期" readonly></el-input>
				</el-form-item>
			</template>
			<el-form-item :style='{"padding":"10px 0 20px","margin":"30px 0","alignItems":"center","textAlign":"center","background":"none","display":"flex","width":"calc(100% - 150px)","perspective":"320px","-webkitPerspective":"320px","fontSize":"48px","justifyContent":"center"}' class="btn">
				<el-button class="btn3"  v-if="type!='info'" type="success" @click="onSubmit">
					<span class="icon iconfont icon-tijiao16" :style='{"margin":"0 2px","fontSize":"18px","color":"inherit","display":"inline-block"}'></span>
					确定
				</el-button>
				<el-button class="btn4" v-if="type!='info'" type="success" @click="back()">
					<span class="icon iconfont icon-quxiao09" :style='{"margin":"0 2px","fontSize":"18px","color":"inherit","display":"inline-block"}'></span>
					取消
				</el-button>
				<el-button class="btn5" v-if="type=='info'" type="success" @click="back()">
					<span class="icon iconfont icon-fanhui01" :style='{"margin":"0 2px","fontSize":"18px","color":"inherit","display":"inline-block"}'></span>
					返回
				</el-button>
			</el-form-item>
		</el-form>
    
		<!-- 查看在线简历弹窗 -->
		<el-dialog 
		  title="在线简历详情" 
		  :visible.sync="onlineResumeDialogVisible" 
		  width="800px"
		>
		  <div v-if="onlineResumeData" style="padding: 20px;">
			<!-- 基础信息 -->
			<div style="margin-bottom: 20px; padding: 15px; background: #f5f5f5; border-radius: 4px;">
			  <h3 style="margin: 0 0 15px 0; color: #333; font-size: 16px;">基础信息</h3>
			  <el-row :gutter="20">
				<el-col :span="12" style="margin-bottom: 10px;">
				  <strong>姓名:</strong> {{onlineResumeData.xingming || '-'}}
				</el-col>
				<el-col :span="12" style="margin-bottom: 10px;">
				  <strong>年龄:</strong> {{onlineResumeData.nianling || '-'}}
				</el-col>
				<el-col :span="12" style="margin-bottom: 10px;">
				  <strong>性别:</strong> {{onlineResumeData.xingbie || '-'}}
				</el-col>
				<el-col :span="12" style="margin-bottom: 10px;">
				  <strong>学历:</strong> {{onlineResumeData.xueli || '-'}}
				</el-col>
				<el-col :span="12" style="margin-bottom: 10px;">
				  <strong>学校:</strong> {{onlineResumeData.xuexiao || '-'}}
				</el-col>
			  </el-row>
			</div>
			
			<!-- 简历内容 -->
			<div style="line-height: 2;">
			  <div style="margin-bottom: 15px;">
				<strong style="color: #333;">个人优势:</strong>
				<p style="white-space: pre-wrap; margin: 5px 0 0 20px; color: #666;">
				  {{onlineResumeData.gerenyoushi || '未填写'}}
				</p>
			  </div>
			  
			  <div style="margin-bottom: 15px;">
				<strong style="color: #333;">外语水平:</strong>
				<p style="margin: 5px 0 0 20px; color: #666;">
				  {{onlineResumeData.waiyushuiping || '未填写'}}
				</p>
			  </div>
			  
			  <div style="margin-bottom: 15px;">
				<strong style="color: #333;">求职状态:</strong>
				<p style="margin: 5px 0 0 20px; color: #666;">
				  {{onlineResumeData.qiuzhizhuangtai || '未填写'}}
				</p>
			  </div>
			  
			  <div style="margin-bottom: 15px;">
				<strong style="color: #333;">实习/工作经历:</strong>
				<p style="white-space: pre-wrap; margin: 5px 0 0 20px; color: #666;">
				  {{onlineResumeData.shixijingli || '未填写'}}
				</p>
			  </div>
			  
			  <div style="margin-bottom: 15px;">
				<strong style="color: #333;">教育经历:</strong>
				<p style="white-space: pre-wrap; margin: 5px 0 0 20px; color: #666;">
				  {{onlineResumeData.jiaoyujingli || '未填写'}}
				</p>
			  </div>
			</div>
		  </div>
		  <span slot="footer" class="dialog-footer">
			<el-button @click="onlineResumeDialogVisible = false">关闭</el-button>
		  </span>
		</el-dialog>

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
	data() {
		let self = this
		var validateIdCard = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!checkIdCard(value)) {
				callback(new Error("请输入正确的身份证号码"));
			} else {
				callback();
			}
		};
		var validateUrl = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isURL(value)) {
				callback(new Error("请输入正确的URL地址"));
			} else {
				callback();
			}
		};
		var validateMobile = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isMobile(value)) {
				callback(new Error("请输入正确的手机号码"));
			} else {
				callback();
			}
		};
		var validatePhone = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isPhone(value)) {
				callback(new Error("请输入正确的电话号码"));
			} else {
				callback();
			}
		};
		var validateEmail = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isEmail(value)) {
				callback(new Error("请输入正确的邮箱地址"));
			} else {
				callback();
			}
		};
		var validateNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isNumber(value)) {
				callback(new Error("请输入数字"));
			} else {
				callback();
			}
		};
		var validateIntNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isIntNumer(value)) {
				callback(new Error("请输入整数"));
			} else {
				callback();
			}
		};
		return {
			id: '',
			type: '',
			
			
			ro:{
				jianzhimingcheng : false,
				jianzhifengmian : false,
				jianzhifenlei : false,
				qiyezhanghao : false,
				qiyemingcheng : false,
				fuzeren : false,
				zhaopinrenshu : false,
				xuehao : false,
				xingming : false,
				mobile : false,
				xueli : false,
				xuexiao : false,
				jianlifujian : false,
				toudibeizhu : false,
				toudiriqi : false,
				sfsh : false,
				shhf : false,
			},
			
			
			ruleForm: {
				jianzhimingcheng: '',
				jianzhifengmian: '',
				jianzhifenlei: '',
				qiyezhanghao: '',
				qiyemingcheng: '',
				fuzeren: '',
				zhaopinrenshu: '',
				xuehao: '',
				xingming: '',
				mobile: '',
				xueli: '',
				xuexiao: '',
				jianlifujian: '',
				toudibeizhu: '',
				toudiriqi: '',
				shhf: '',
			},
		
			zhaopinrenshuOptions: [],

			
			rules: {
				jianzhimingcheng: [
				],
				jianzhifengmian: [
				],
				jianzhifenlei: [
				],
				qiyezhanghao: [
				],
				qiyemingcheng: [
				],
				fuzeren: [
				],
				zhaopinrenshu: [
					{ required: true, message: '应聘人数不能为空', trigger: 'blur' },
					{ validator: validateIntNumber, trigger: 'blur' },
				],
				xuehao: [
				],
				xingming: [
				],
				mobile: [
				],
				xueli: [
				],
				xuexiao: [
				],
				jianlifujian: [
				],
				toudibeizhu: [
				],
				toudiriqi: [
				],
				sfsh: [
				],
				shhf: [
				],
			},
			onlineResumeDialogVisible: false,
			onlineResumeData: null
		};
	},
	props: ["parent"],
	computed: {



	},
    components: {
    },
	created() {
		this.ruleForm.toudiriqi = this.getCurDate()
	},
	methods: {
		
		// 下载
		download(file){
			window.open(`${file}`)
		},
		// 初始化
		init(id,type) {
			if (id) {
				this.id = id;
				this.type = type;
			}
			if(this.type=='info'||this.type=='else'){
				this.info(id);
			}else if(this.type=='logistics'){
				this.logistics=false;
				this.info(id);
			}else if(this.type=='cross'){
				var obj = this.$storage.getObj('crossObj');
				for (var o in obj){
						if(o=='jianzhimingcheng'){
							this.ruleForm.jianzhimingcheng = obj[o];
							this.ro.jianzhimingcheng = true;
							continue;
						}
						if(o=='jianzhifengmian'){
							this.ruleForm.jianzhifengmian = obj[o];
							this.ro.jianzhifengmian = true;
							continue;
						}
						if(o=='jianzhifenlei'){
							this.ruleForm.jianzhifenlei = obj[o];
							this.ro.jianzhifenlei = true;
							continue;
						}
						if(o=='qiyezhanghao'){
							this.ruleForm.qiyezhanghao = obj[o];
							this.ro.qiyezhanghao = true;
							continue;
						}
						if(o=='qiyemingcheng'){
							this.ruleForm.qiyemingcheng = obj[o];
							this.ro.qiyemingcheng = true;
							continue;
						}
						if(o=='fuzeren'){
							this.ruleForm.fuzeren = obj[o];
							this.ro.fuzeren = true;
							continue;
						}
						if(o=='zhaopinrenshu'){
							this.ruleForm.zhaopinrenshu = obj[o];
							this.ro.zhaopinrenshu = true;
							continue;
						}
						if(o=='xuehao'){
							this.ruleForm.xuehao = obj[o];
							this.ro.xuehao = true;
							continue;
						}
						if(o=='xingming'){
							this.ruleForm.xingming = obj[o];
							this.ro.xingming = true;
							continue;
						}
						if(o=='mobile'){
							this.ruleForm.mobile = obj[o];
							this.ro.mobile = true;
							continue;
						}
						if(o=='xueli'){
							this.ruleForm.xueli = obj[o];
							this.ro.xueli = true;
							continue;
						}
						if(o=='xuexiao'){
							this.ruleForm.xuexiao = obj[o];
							this.ro.xuexiao = true;
							continue;
						}
						if(o=='jianlifujian'){
							this.ruleForm.jianlifujian = obj[o];
							this.ro.jianlifujian = true;
							continue;
						}
						if(o=='toudibeizhu'){
							this.ruleForm.toudibeizhu = obj[o];
							this.ro.toudibeizhu = true;
							continue;
						}
						if(o=='toudiriqi'){
							this.ruleForm.toudiriqi = obj[o];
							this.ro.toudiriqi = true;
							continue;
						}
				}
				






				this.ruleForm.zhaopinrenshu = 0
				this.ro.zhaopinrenshu = false;











			}
			
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					
					var json = data.data;
					if(((json.xuehao!=''&&json.xuehao) || json.xuehao==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.xuehao = json.xuehao
						this.ro.xuehao = true;
					}
					if(((json.xingming!=''&&json.xingming) || json.xingming==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.xingming = json.xingming
						this.ro.xingming = true;
					}
					if(((json.mobile!=''&&json.mobile) || json.mobile==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.mobile = json.mobile
						this.ro.mobile = true;
					}
					if(((json.xueli!=''&&json.xueli) || json.xueli==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.xueli = json.xueli
						this.ro.xueli = true;
					}
					if(((json.xuexiao!=''&&json.xuexiao) || json.xuexiao==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.xuexiao = json.xuexiao
						this.ro.xuexiao = true;
					}
				} else {
					this.$message.error(data.msg);
				}
			});
			
            this.zhaopinrenshuOptions = "1".split(',')
			
		},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `toudixinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
        //解决前台上传图片后台不显示的问题
        let reg=new RegExp('../../../upload','g')//g代表全部
        } else {
          this.$message.error(data.msg);
        }
      });
    },

	// 查看在线简历
	viewOnlineResume() {
	  if (!this.ruleForm.xuehao) {
		this.$message.error('未找到学生账号');
		return;
	  }
	  
	  // 先查询在线简历
	  this.$http.get('xueshengjianli/queryByXuehao', {
		params: { xuehao: this.ruleForm.xuehao }
	  }).then(res => {
		if (res.data.code === 0 && res.data.data) {
		  // 再查询学生完整信息(包含年龄、性别等)
		  this.$http.get('xuesheng/page', {
			params: { xuehao: this.ruleForm.xuehao, page: 1, limit: 1 }
		  }).then(studentRes => {
			if (studentRes.data.code === 0 && studentRes.data.data.list.length > 0) {
			  const student = studentRes.data.data.list[0];
			  this.onlineResumeData = {
				...res.data.data,
				xingming: student.xingming || this.ruleForm.xingming,
				nianling: student.nianling || '-',
				xingbie: student.xingbie || '-',
				xueli: student.xueli || this.ruleForm.xueli,
				xuexiao: student.xuexiao || this.ruleForm.xuexiao
			  };
			  this.onlineResumeDialogVisible = true;
			} else {
			  this.$message.error('获取学生信息失败');
			}
		  });
		} else {
		  this.$message.error('该学生未填写在线简历');
		}
	  }).catch(err => {
		this.$message.error('查询失败');
	  });
	},


    // 提交
    onSubmit() {


	if(this.ruleForm.jianzhifengmian!=null) {
		this.ruleForm.jianzhifengmian = this.ruleForm.jianzhifengmian.replace(new RegExp(this.$base.url,"g"),"");
	}











	if(this.ruleForm.jianlifujian!=null) {
		this.ruleForm.jianlifujian = this.ruleForm.jianlifujian.replace(new RegExp(this.$base.url,"g"),"");
	}





var objcross = this.$storage.getObj('crossObj');
      var table = this.$storage.getObj('crossTable');
      if(objcross!=null) {
		  if(!this.ruleForm.zhaopinrenshu){
			  this.$message.error("应聘人数不能为空");
			  return
		  }
		  // objcross.zhaopinrenshu = objcross.zhaopinrenshu - this.ruleForm.zhaopinrenshu  // 已移除:录取时才扣减
		  // if(objcross.zhaopinrenshu<0){  // 已移除
			// 	this.$message.error("应聘人数不足");  // 已移除
			// 	return  // 已移除
		  // }  // 已移除
                }
      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(statusColumnName && !statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                              this.$http({
                                  url: `${table}/update`,
                                  method: "post",
                                  data: objcross
                                }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
		this.$refs["ruleForm"].validate(valid => {
			if (valid) {
				if(crossrefid && crossuserid) {
					this.ruleForm.crossuserid = crossuserid;
					this.ruleForm.crossrefid = crossrefid;
					let params = { 
						page: 1, 
						limit: 10, 
						crossuserid:this.ruleForm.crossuserid,
						crossrefid:this.ruleForm.crossrefid,
					} 
				this.$http({ 
					url: "toudixinxi/page", 
					method: "get", 
					params: params 
				}).then(({ 
					data 
				}) => { 
					if (data && data.code === 0) { 
						if(data.data.total>=crossoptnum) {
							this.$message.error(this.$storage.get('tips'));
							return false;
						} else {
							this.$http({
								url: `toudixinxi/${!this.ruleForm.id ? "save" : "update"}`,
								method: "post",
								data: this.ruleForm
							}).then(({ data }) => {
								if (data && data.code === 0) {
									this.$message({
										message: "操作成功",
										type: "success",
										duration: 1500,
										onClose: () => {
											this.parent.showFlag = true;
											this.parent.addOrUpdateFlag = false;
											this.parent.toudixinxiCrossAddOrUpdateFlag = false;
											this.parent.search();
											this.parent.contentStyleChange();
										}
									});
									this.$http({
										url: `${table}/update`,
										method: "post",
										data: objcross
									}).then(({ data }) => {});
								} else {
									this.$message.error(data.msg);
								}
							});

						}
					} else { 
				} 
			});
		} else {
			this.$http({
				url: `toudixinxi/${!this.ruleForm.id ? "save" : "update"}`,
				method: "post",
			   data: this.ruleForm
			}).then(({ data }) => {
				if (data && data.code === 0) {
					this.$http({
						url: `${table}/update`,
						method: "post",
						data: objcross
					}).then(({ data }) => {});
					this.$message({
						message: "操作成功",
						type: "success",
						duration: 1500,
						onClose: () => {
							this.parent.showFlag = true;
							this.parent.addOrUpdateFlag = false;
							this.parent.toudixinxiCrossAddOrUpdateFlag = false;
							this.parent.search();
							this.parent.contentStyleChange();
						}
					});
				} else {
					this.$message.error(data.msg);
			   }
			});
		 }
         }
       });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.toudixinxiCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    jianzhifengmianUploadChange(fileUrls) {
	    this.ruleForm.jianzhifengmian = fileUrls;
    },
    jianlifujianUploadChange(fileUrls) {
	    this.ruleForm.jianlifujian = fileUrls;
    },
  }
};
</script>
<style lang="scss" scoped>
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
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
	.add-update-preview .el-input-number /deep/ .el-input__inner {
		text-align: left;
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
	.add-update-preview .el-input-number /deep/ .el-input-number__decrease {
		display: none;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__increase {
		display: none;
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
	
	.add-update-preview /deep/ .upload .upload-img {
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
	
	.add-update-preview .btn .btn1 {
				border: 1px solid #f09a2b;
				cursor: pointer;
				padding: 0 10px 0 6px;
				margin: 0px 10px;
				color: #fff;
				display: inline-block;
				font-size: 14px;
				line-height: 24px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: linear-gradient(to bottom, #FE962B 0%,#FEAE46 100%);
				width: auto;
				height: 44px;
			}
	
	.add-update-preview .btn .btn1:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.add-update-preview .btn .btn2 {
				border: 1px solid #B7B894;
				cursor: pointer;
				padding: 0 10px 0 6px;
				margin: 0px 10px;
				color: #fff;
				font-size: 14px;
				line-height: 24px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9CAA8 0%,#B7B894 100%);
				width: auto;
				height: 44px;
			}
	
	.add-update-preview .btn .btn2:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.add-update-preview .btn .btn3 {
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
	
	.add-update-preview .btn .btn3:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.add-update-preview .btn .btn4 {
				border: 1px solid #AAA9A7;
				cursor: pointer;
				padding: 0 20px;
				margin: 0px 10px;
				color: #fff;
				font-size: 14px;
				line-height: 24px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: linear-gradient(to bottom, #B8B7B5 0%,#AAA9A7 100%);
				width: auto;
				min-width: 78px;
				height: 44px;
			}
	
	.add-update-preview .btn .btn4:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.add-update-preview .btn .btn5 {
				border: 1px solid #AAA9A7;
				cursor: pointer;
				padding: 0 20px;
				margin: 0 10px;
				color: #fff;
				font-size: 14px;
				line-height: 24px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: linear-gradient(to bottom, #B8B7B5 0%,#AAA9A7 100%);
				width: auto;
				min-width: 78px;
				height: 44px;
			}
	
	.add-update-preview .btn .btn5:hover {
				transform: scale(1.09) rotate(3deg);
			}
</style>
