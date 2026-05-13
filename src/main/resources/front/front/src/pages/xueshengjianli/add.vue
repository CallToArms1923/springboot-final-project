<template>
<div class="xueshengjianli-preview" :style='{"padding":"0 20px 20px","margin":"0 auto","borderColor":"#d3d3d3","flexWrap":"wrap","background":"#fff","borderWidth":"0 1px","display":"flex","width":"980px","position":"relative","borderStyle":"solid","justifyContent":"space-between"}'>
	<div class="title" :style='{"padding":"0","margin":"20px auto 0","borderColor":"#ffc652","color":"#222","textAlign":"center","background":"none","borderWidth":"0px 0 0 ","width":"100%","fontSize":"24px","borderStyle":"solid","fontWeight":"500","height":"60px"}'>我的简历</div>
	
	<!-- 基础信息(不可编辑) -->
	<div class="info-section" :style='{"flex":"0 0 320px","padding":"30px 20px","margin":"20px 0","borderColor":"#eee","borderWidth":"1px","background":"#f9f9f9","borderStyle":"solid","boxSizing":"border-box"}'>
		<div :style='{"padding":"0 0 10px","color":"#333","fontSize":"18px","fontWeight":"500","borderColor":"#C98777","borderWidth":"0 0 2px","borderStyle":"solid","margin":"0 0 20px"}'>基础信息</div>
		<div :style='{"display":"flex","flexDirection":"column","gap":"10px"}'>
			<div :style='{"padding":"8px 0","boxSizing":"border-box"}'>
				<span :style='{"color":"#666","fontSize":"14px"}'>姓名：</span>
				<span :style='{"color":"#333","fontSize":"14px"}'>{{sessionForm.xingming || '-'}}</span>
			</div>
			<div :style='{"padding":"8px 0","boxSizing":"border-box"}'>
				<span :style='{"color":"#666","fontSize":"14px"}'>年龄：</span>
				<span :style='{"color":"#333","fontSize":"14px"}'>{{sessionForm.nianling || '-'}}</span>
			</div>
			<div :style='{"padding":"8px 0","boxSizing":"border-box"}'>
				<span :style='{"color":"#666","fontSize":"14px"}'>性别：</span>
				<span :style='{"color":"#333","fontSize":"14px"}'>{{sessionForm.xingbie || '-'}}</span>
			</div>
			<div :style='{"padding":"8px 0","boxSizing":"border-box"}'>
				<span :style='{"color":"#666","fontSize":"14px"}'>学历：</span>
				<span :style='{"color":"#333","fontSize":"14px"}'>{{sessionForm.xueli || '-'}}</span>
			</div>
			<div :style='{"padding":"8px 0","boxSizing":"border-box"}'>
				<span :style='{"color":"#666","fontSize":"14px"}'>学校：</span>
				<span :style='{"color":"#333","fontSize":"14px"}'>{{sessionForm.xuexiao || '-'}}</span>
			</div>
		</div>
	</div>
	
	<!-- 简历表单 -->
	<el-form class="jianli-form" :style='{"flex":"1","padding":"20px","boxSizing":"border-box","margin-left":"20px"}' ref="jianliForm" :model="jianliForm" :rules="rules" label-width="120px">
		<el-form-item label="个人优势" prop="gerenyoushi">
			<el-input 
				type="textarea" 
				v-model="jianliForm.gerenyoushi" 
				:rows="6"
				placeholder="请输入个人优势，如专业技能、工作经验等"
			></el-input>
		</el-form-item>
		
		<el-form-item label="外语水平" prop="waiyushuiping">
			<el-input 
				v-model="jianliForm.waiyushuiping" 
				placeholder="如：英语六级、日语N1等"
			></el-input>
		</el-form-item>
		
		<el-form-item label="求职状态" prop="qiuzhizhuangtai">
			<el-select v-model="jianliForm.qiuzhizhuangtai" placeholder="请选择求职状态" style="width: 100%">
				<el-option label="离校-随时到岗" value="离校-随时到岗"></el-option>
				<el-option label="在校-月内到岗" value="在校-月内到岗"></el-option>
				<el-option label="在校-考虑机会" value="在校-考虑机会"></el-option>
				<el-option label="在校-暂不考虑" value="在校-暂不考虑"></el-option>
			</el-select>
		</el-form-item>
		
		<el-form-item label="实习/工作经历" prop="shixijingli">
			<el-input 
				type="textarea" 
				v-model="jianliForm.shixijingli" 
				:rows="6"
				placeholder="请输入实习或工作经历，包括公司名称、职位、工作时间等"
			></el-input>
		</el-form-item>
		
		<el-form-item label="教育经历" prop="jiaoyujingli">
			<el-input 
				type="textarea" 
				v-model="jianliForm.jiaoyujingli" 
				:rows="6"
				placeholder="请输入教育经历，包括学校、专业、时间等"
			></el-input>
		</el-form-item>
		
		<el-form-item>
			<el-button 
				:style='{"border":"0px solid #eccc19","cursor":"pointer","padding":"0","margin":"0 20px 0 0","color":"#fff","borderRadius":"4px","background":"#C98777","width":"150px","lineHeight":"40px","fontSize":"16px","height":"40px"}' 
				type="primary" 
				@click="onSubmit"
			>保存简历</el-button>
		</el-form-item>
	</el-form>
</div>
</template>

<script>
import config from '@/config/config'
export default {
	data() {
		return {
			baseUrl: config.baseUrl,
			sessionForm: {},
			jianliForm: {
				xuehao: '',
				gerenyoushi: '',
				waiyushuiping: '',
				qiuzhizhuangtai: '',
				shixijingli: '',
				jiaoyujingli: ''
			},
			rules: {
			}
		}
	},
	created() {
		this.sessionForm = JSON.parse(localStorage.getItem('sessionForm'))
		this.jianliForm.xuehao = this.sessionForm.xuehao
		this.loadJianli()
	},
	methods: {
		// 加载简历
		async loadJianli() {
			if (!this.jianliForm.xuehao) {
				return
			}
			const res = await this.$http.get('xueshengjianli/queryByXuehao', {
				params: { xuehao: this.jianliForm.xuehao }
			})
			if (res.data && res.data.code === 0 && res.data.data) {
				this.jianliForm = {
					...this.jianliForm,
					...res.data.data
				}
			}
		},
		
		// 保存简历
		onSubmit() {
			if (!this.jianliForm.xuehao) {
				this.$message.error('请先登录')
				return
			}
			
			this.$http.post('xueshengjianli/save', this.jianliForm).then(res => {
				if (res.data && res.data.code === 0) {
					this.$message({
						message: '简历保存成功',
						type: 'success',
						duration: 1500
					})
				} else {
					this.$message.error(res.data.msg || '保存失败')
				}
			}).catch(err => {
				this.$message.error('保存失败')
			})
		}
	}
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
.xueshengjianli-preview {
	.jianli-form {
		padding: 20px;
		
		/deep/ .el-form-item__label {
			color: #666;
			font-weight: 500;
			font-size: 14px;
		}
		
		/deep/ .el-textarea__inner {
			border-radius: 4px;
			padding: 12px;
			font-size: 14px;
			border-color: #eee;
		}
		
		/deep/ .el-input__inner {
			border-radius: 4px;
			padding: 0 12px;
			font-size: 14px;
			border-color: #eee;
			height: 40px;
		}
	}
}
</style>
