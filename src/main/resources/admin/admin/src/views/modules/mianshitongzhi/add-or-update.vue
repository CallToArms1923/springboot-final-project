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
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="date" v-if="type!='info'" label="面试日期" prop="mianshiriqi">
					<el-date-picker
						format="yyyy 年 MM 月 dd 日"
						value-format="yyyy-MM-dd"
						v-model="ruleForm.mianshiriqi" 
						type="date"
						:readonly="ro.mianshiriqi"
						placeholder="面试日期"
					></el-date-picker> 
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-else-if="ruleForm.mianshiriqi" label="面试日期" prop="mianshiriqi">
					<el-input v-model="ruleForm.mianshiriqi" placeholder="面试日期" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="select" v-if="type!='info'"  label="类型" prop="leixing">
					<el-select :disabled="ro.leixing" v-model="ruleForm.leixing" placeholder="请选择类型" >
						<el-option
							v-for="(item,index) in leixingOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="类型" prop="leixing">
					<el-input v-model="ruleForm.leixing"
						placeholder="类型" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-if="type!='info'"  label="面试地点" prop="mianshididian">
					<el-input v-model="ruleForm.mianshididian" placeholder="面试地点" clearable  :readonly="ro.mianshididian"></el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else class="input" label="面试地点" prop="mianshididian">
					<el-input v-model="ruleForm.mianshididian" placeholder="面试地点" readonly></el-input>
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
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="date" v-if="type!='info'" label="操作日期" prop="caozuoriqi">
					<el-date-picker
						format="yyyy 年 MM 月 dd 日"
						value-format="yyyy-MM-dd"
						v-model="ruleForm.caozuoriqi" 
						type="date"
						:readonly="ro.caozuoriqi"
						placeholder="操作日期"
					></el-date-picker> 
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="input" v-else-if="ruleForm.caozuoriqi" label="操作日期" prop="caozuoriqi">
					<el-input v-model="ruleForm.caozuoriqi" placeholder="操作日期" readonly></el-input>
				</el-form-item>
			</template>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' class="textarea" v-if="type!='info'" label="面试备注" prop="mianshibeizhu">
					<el-input
					  style="min-width: 200px; max-width: 600px;"
					  type="textarea"
					  :rows="8"
					  placeholder="面试备注"
					  v-model="ruleForm.mianshibeizhu" >
					</el-input>
				</el-form-item>
				<el-form-item :style='{"border":"0px solid #eee","padding":"0","margin":"0 0 16px 0","color":"inherit","borderRadius":"0px","background":"none","width":"100%","fontSize":"inherit"}' v-else-if="ruleForm.mianshibeizhu" label="面试备注" prop="mianshibeizhu">
					<span :style='{"fontSize":"14px","lineHeight":"40px","minWidth":"900px","color":"inherit","fontWeight":"500","display":"inline-block"}'>{{ruleForm.mianshibeizhu}}</span>
				</el-form-item>
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
				mianshiriqi : false,
				leixing : false,
				mianshididian : false,
				xuehao : false,
				xingming : false,
				mobile : false,
				mianshibeizhu : false,
				caozuoriqi : false,
			},
			
			
			ruleForm: {
				jianzhimingcheng: '',
				jianzhifengmian: '',
				jianzhifenlei: '',
				qiyezhanghao: '',
				qiyemingcheng: '',
				fuzeren: '',
				mianshiriqi: '',
				leixing: '',
				mianshididian: '',
				xuehao: '',
				xingming: '',
				mobile: '',
				mianshibeizhu: '',
				caozuoriqi: '',
			},
		
			leixingOptions: [],

			
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
				mianshiriqi: [
					{ required: true, message: '面试日期不能为空', trigger: 'blur' },
				],
				leixing: [
					{ required: true, message: '类型不能为空', trigger: 'blur' },
				],
				mianshididian: [
					{ required: true, message: '面试地点不能为空', trigger: 'blur' },
				],
				xuehao: [
				],
				xingming: [
				],
				mobile: [
				],
				mianshibeizhu: [
				],
				caozuoriqi: [
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
    components: {
    },
	created() {
		this.ruleForm.caozuoriqi = this.getCurDate()
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
						if(o=='mianshiriqi'){
							this.ruleForm.mianshiriqi = obj[o];
							this.ro.mianshiriqi = true;
							continue;
						}
						if(o=='leixing'){
							this.ruleForm.leixing = obj[o];
							this.ro.leixing = true;
							continue;
						}
						if(o=='mianshididian'){
							this.ruleForm.mianshididian = obj[o];
							this.ro.mianshididian = true;
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
						if(o=='mianshibeizhu'){
							this.ruleForm.mianshibeizhu = obj[o];
							this.ro.mianshibeizhu = true;
							continue;
						}
						if(o=='caozuoriqi'){
							this.ruleForm.caozuoriqi = obj[o];
							this.ro.caozuoriqi = true;
							continue;
						}
				}
				















			}
			
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					
					var json = data.data;
				} else {
					this.$message.error(data.msg);
				}
			});
			
            this.leixingOptions = "周一,周二,周三,周四,周五,周六,周日".split(',')
			
		},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `mianshitongzhi/info/${id}`,
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


    // 提交
    onSubmit() {


	if(this.ruleForm.jianzhifengmian!=null) {
		this.ruleForm.jianzhifengmian = this.ruleForm.jianzhifengmian.replace(new RegExp(this.$base.url,"g"),"");
	}














var objcross = this.$storage.getObj('crossObj');
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
					url: "mianshitongzhi/page", 
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
								url: `mianshitongzhi/${!this.ruleForm.id ? "save" : "update"}`,
								method: "post",
								data: this.ruleForm
							}).then(({ data }) => {
								if (data && data.code === 0) {
									var crossTable = this.$storage.get('crossTable');
									var crossObj = this.$storage.getObj('crossObj');
									
									// 如果是从投递信息跨表操作,删除投递信息记录
									if(crossTable == 'toudixinxi' && crossObj && crossObj.id) {
										// 删除投递信息
										this.$http({
											url: `toudixinxi/delete`,
											method: "post",
											data: [crossObj.id]
										}).then(({ data }) => {
											if (data && data.code === 0) {
												this.$message({
													message: "面试通知已发送，投递信息已自动移除",
													type: "success",
													duration: 1500,
													onClose: () => {
														this.parent.showFlag = true;
														this.parent.addOrUpdateFlag = false;
														this.parent.mianshitongzhiCrossAddOrUpdateFlag = false;
														this.parent.search();
														this.parent.contentStyleChange();
													}
												});
											} else {
												this.$message.error("删除投递信息失败：" + (data.msg || "未知错误"));
											}
										}).catch((error) => {
											this.$message.error("删除投递信息失败，请重试");
										});
										return;
									}
															
									this.$message({
										message: "操作成功",
										type: "success",
										duration: 1500,
										onClose: () => {
											this.parent.showFlag = true;
											this.parent.addOrUpdateFlag = false;
											this.parent.mianshitongzhiCrossAddOrUpdateFlag = false;
											this.parent.search();
											this.parent.contentStyleChange();
										}
									});
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
				url: `mianshitongzhi/${!this.ruleForm.id ? "save" : "update"}`,
				method: "post",
			   data: this.ruleForm
			}).then(({ data }) => {
				if (data && data.code === 0) {
					var crossTable = this.$storage.get('crossTable');
					var crossObj = this.$storage.getObj('crossObj');
									
					// 如果是从投递信息跨表操作,删除投递信息记录
					if(crossTable == 'toudixinxi' && crossObj && crossObj.id) {
						// 删除投递信息
						this.$http({
							url: `toudixinxi/delete`,
							method: "post",
							data: [crossObj.id]
						}).then(({ data }) => {
							if (data && data.code === 0) {
								this.$message({
									message: "面试通知已发送，投递信息已自动移除",
									type: "success",
									duration: 1500,
									onClose: () => {
										this.parent.showFlag = true;
										this.parent.addOrUpdateFlag = false;
										this.parent.mianshitongzhiCrossAddOrUpdateFlag = false;
										this.parent.search();
										this.parent.contentStyleChange();
									}
								});
							} else {
								this.$message.error("删除投递信息失败：" + (data.msg || "未知错误"));
							}
						}).catch((error) => {
							this.$message.error("删除投递信息失败，请重试");
						});
						return;
					}
								
					this.$message({
						message: "操作成功",
						type: "success",
						duration: 1500,
						onClose: () => {
							this.parent.showFlag = true;
							this.parent.addOrUpdateFlag = false;
							this.parent.mianshitongzhiCrossAddOrUpdateFlag = false;
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
      this.parent.mianshitongzhiCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    jianzhifengmianUploadChange(fileUrls) {
	    this.ruleForm.jianzhifengmian = fileUrls;
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
