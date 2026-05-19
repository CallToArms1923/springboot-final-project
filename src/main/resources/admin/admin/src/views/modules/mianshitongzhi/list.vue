<template>
	<div class="main-content" :style='{"color":"#3B3E40","padding":"30px 30px 30px","fontSize":"14px"}'>
		<!-- 列表页 -->
		<template v-if="showFlag">
			<el-form class="center-form-pv" :style='{"border":"0px solid #bababa","padding":"0 10px","margin":"0 0 20px","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"none","display":"flex","fontSize":"inherit","justifyContent":"space-between"}' :inline="true" :model="searchForm">
				<el-row :style='{"border":"0px solid #e3e3e3","padding":"10px 0","borderRadius":"5px","textAlign":"center","flexWrap":"wrap","background":"#fff","flexDirection":"row","display":"flex","width":"auto","fontSize":"inherit","justifyContent":"flex-start","order":"2"}' >
					<div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"wrap","display":"flex"}'>
						<label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px"}' class="item-label">兼职名称</label>
						<el-input v-model="searchForm.jianzhimingcheng" placeholder="兼职名称" @keydown.enter.native="search()" clearable></el-input>
					</div>
					<div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"wrap","display":"flex"}'>
						<label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px"}' class="item-label">兼职分类</label>
						<el-input v-model="searchForm.jianzhifenlei" placeholder="兼职分类" @keydown.enter.native="search()" clearable></el-input>
					</div>
					<div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"wrap","display":"flex"}'>
						<label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px"}' class="item-label">企业名称</label>
						<el-input v-model="searchForm.qiyemingcheng" placeholder="企业名称" @keydown.enter.native="search()" clearable></el-input>
					</div>
					<div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"wrap","display":"flex"}' class="select" label="类型" prop="leixing">
						<label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px"}' class="item-label">类型</label>
						<el-select clearable v-model="searchForm.leixing" placeholder="请选择类型" >
							<el-option v-for="(item,index) in leixingOptions" v-bind:key="index" :label="item" :value="item"></el-option>
						</el-select>
					</div>
					<div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"wrap","display":"flex"}'>
						<label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px"}' class="item-label">姓名</label>
						<el-input v-model="searchForm.xingming" placeholder="姓名" @keydown.enter.native="search()" clearable></el-input>
					</div>
					<el-button class="search" type="success" @click="search()">
						<span class="icon iconfont icon-chakan14" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block","height":"40px"}'></span>
						查询
					</el-button>
				</el-row>

				<el-row class="actions" :style='{"border":"0px solid #e3e3e3","padding":"10px 0","margin":"0","color":"#fff","textAlign":"left","flexDirection":"row","display":"flex","justifyContent":"flex-start","borderRadius":"5px","flexWrap":"wrap","background":"#fff","width":"auto","fontSize":"inherit"}'>
					<el-button class="add" v-if="isAuth('mianshitongzhi','新增')" type="success" @click="addOrUpdateHandler()">
						<span class="icon iconfont icon-tianjia13" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block"}'></span>
						添加
					</el-button>
					<el-button class="del" v-if="isAuth('mianshitongzhi','删除')" :disabled="dataListSelections.length?false:true" type="danger" @click="deleteHandler()">
						<span class="icon iconfont icon-shanchu7" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block","height":"auto"}'></span>
						删除
					</el-button>



				</el-row>
			</el-form>
			<div :style='{"border":"0px solid #e9e9e9","width":"100%","padding":"0px","margin":"10px 0 0","borderRadius":"5px","background":"rgba(255,255,255,1)"}'>
				<el-table class="tables"
					:stripe='false'
					:style='{"padding":"0","borderColor":"#e6e6e6","color":"inherit","borderRadius":"0px","borderWidth":"1px 1px 0 1px","background":"none","width":"100%","fontSize":"inherit","borderStyle":"solid"}' 
					:border='true'
					v-if="isAuth('mianshitongzhi','查看')"
					:data="dataList"
					v-loading="dataListLoading"
				@selection-change="selectionChangeHandler">
					<el-table-column :resizable='true' type="selection" align="center" width="50"></el-table-column>
					<el-table-column :resizable='true' :sortable='true' label="序号" type="index" width="50" />
					<!-- jianzhimingcheng -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="jianzhimingcheng"
						label="兼职名称">
						<template slot-scope="scope">
							{{scope.row.jianzhimingcheng}}
						</template>
					</el-table-column>
					<!-- jianzhifengmian -->
					<!-- $column.hiden -->
					<!-- 无 -->
					<el-table-column :resizable='true' :sortable='true' prop="jianzhifengmian" width="200" label="兼职封面">
						<template slot-scope="scope">
							<div v-if="scope.row.jianzhifengmian">
								<img v-if="scope.row.jianzhifengmian.substring(0,4)=='http'" :src="scope.row.jianzhifengmian.split(',')[0]" width="100" height="100" style="object-fit: cover">
								<img v-else :src="$base.url+scope.row.jianzhifengmian.split(',')[0]" width="100" height="100" style="object-fit: cover">
							</div>
							<div v-else>无图片</div>
						</template>
					</el-table-column>
					<!-- jianzhifenlei -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="jianzhifenlei"
						label="兼职分类">
						<template slot-scope="scope">
							{{scope.row.jianzhifenlei}}
						</template>
					</el-table-column>
					<!-- qiyezhanghao -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="qiyezhanghao"
						label="企业账号">
						<template slot-scope="scope">
							{{scope.row.qiyezhanghao}}
						</template>
					</el-table-column>
					<!-- qiyemingcheng -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="qiyemingcheng"
						label="企业名称">
						<template slot-scope="scope">
							{{scope.row.qiyemingcheng}}
						</template>
					</el-table-column>
					<!-- fuzeren -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="fuzeren"
						label="负责人">
						<template slot-scope="scope">
							{{scope.row.fuzeren}}
						</template>
					</el-table-column>
					<!-- mianshiriqi -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="mianshiriqi"
						label="面试日期">
						<template slot-scope="scope">
							{{scope.row.mianshiriqi}}
						</template>
					</el-table-column>
					<!-- leixing -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="leixing"
						label="类型">
						<template slot-scope="scope">
							{{scope.row.leixing}}
						</template>
					</el-table-column>
					<!-- mianshididian -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="mianshididian"
						label="面试地点">
						<template slot-scope="scope">
							{{scope.row.mianshididian}}
						</template>
					</el-table-column>
					<!-- xuehao -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="xuehao"
						label="账号">
						<template slot-scope="scope">
							{{scope.row.xuehao}}
						</template>
					</el-table-column>
					<!-- xingming -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="xingming"
						label="姓名">
						<template slot-scope="scope">
							{{scope.row.xingming}}
						</template>
					</el-table-column>
					<!-- mobile -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="mobile"
						label="手机号">
						<template slot-scope="scope">
							{{scope.row.mobile}}
						</template>
					</el-table-column>
					<!-- mianshibeizhu -->
					<!-- $column.hiden -->
					<!-- caozuoriqi -->
					<!-- $column.hiden -->
					<el-table-column :resizable='true' :sortable='true'  
						prop="caozuoriqi"
						label="操作日期">
						<template slot-scope="scope">
							{{scope.row.caozuoriqi}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='true' v-if="isAuth('mianshitongzhi','审核')" prop="sfsh" label="回复">
						<template slot-scope="scope">
							<el-button  type="text" size="small" @click="shDialog(scope.row)">回复</el-button>
						</template>
					</el-table-column>
					<el-table-column width="300" label="操作">
						<template slot-scope="scope">
							<el-button class="view" v-if=" isAuth('mianshitongzhi','查看')" type="success" size="mini" @click="addOrUpdateHandler(scope.row.id,'info')">
								<span class="icon iconfont icon-chakan14" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block","height":"auto"}'></span>
								查看
							</el-button>
							<el-button class="view" v-if="isAuth('mianshitongzhi','录取')" type="success" size="mini" @click="openLuquDialog(scope.row)" style="background: linear-gradient(to bottom, #f0c040 0%,#d4a017 100%); border-color: #d4a017; color: #fff;">
								<span class="icon iconfont icon-xihuan" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block","height":"auto"}'></span>
								录取
							</el-button>
							<el-button class="edit" v-if=" isAuth('mianshitongzhi','修改') " type="success" size="mini" @click="addOrUpdateHandler(scope.row.id)">
								<span class="icon iconfont icon-xiugai10" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block","height":"auto"}'></span>
								修改
							</el-button>




							<el-button class="del" v-if="isAuth('mianshitongzhi','删除') " type="danger" size="mini" @click="deleteHandler(scope.row.id )">
								<span class="icon iconfont icon-guanbi1" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block","height":"auto"}'></span>
								删除
							</el-button>
						</template>
					</el-table-column>
				</el-table>
			</div>
			<el-pagination
				@size-change="sizeChangeHandle"
				@current-change="currentChangeHandle"
				:current-page="pageIndex"
				background
				:page-sizes="[10, 50, 100, 200]"
				:page-size="pageSize"
				:layout="layouts.join()"
				:total="totalPage"
				prev-text="上一页 "
				next-text="下一页 "
				:hide-on-single-page="false"
				:style='{"padding":"0","margin":"20px 0 0","whiteSpace":"nowrap","color":"inherit","textAlign":"center","width":"100%","fontSize":"inherit","fontWeight":"500"}'
			></el-pagination>
		</template>
		
		<!-- 添加/修改页面  将父组件的search方法传递给子组件-->
		<add-or-update v-if="addOrUpdateFlag" :parent="this" ref="addOrUpdate"></add-or-update>

		<luquxinxi-cross-add-or-update v-if="luquxinxiCrossAddOrUpdateFlag" :parent="this" ref="luquxinxiCrossaddOrUpdate"></luquxinxi-cross-add-or-update>

		<el-dialog title="回复" :visible.sync="sfshVisiable" width="50%">
			<el-form ref="form" :model="form" label-width="80px">
				<el-form-item label="内容">
					<el-input type="textarea" :rows="8" v-model="shForm.shhf"></el-input>
				</el-form-item>
			</el-form>
			<span slot="footer" class="dialog-footer">
				<el-button @click="sfshVisiable=false">取 消</el-button>
				<el-button type="primary" @click="shHandler">确 定</el-button>
			</span>
		</el-dialog>

		<el-dialog title="录取学生" :visible.sync="luquVisiable" width="50%">
			<el-form ref="luquForm" :model="luquFormData" :rules="luquRules" label-width="100px">
				<el-form-item label="薪资待遇" prop="xinzidaiyu">
					<el-input v-model="luquFormData.xinzidaiyu" placeholder="请输入薪资待遇"></el-input>
				</el-form-item>
				<el-form-item label="上班时间" prop="shangbanshijian">
					<el-date-picker
						v-model="luquFormData.shangbanshijian"
						type="date"
						format="yyyy-MM-dd"
						value-format="yyyy-MM-dd"
						placeholder="请选择上班时间"
						style="width: 100%;">
					</el-date-picker>
				</el-form-item>
				<el-form-item label="工作地点" prop="gongzuodidian">
					<el-input v-model="luquFormData.gongzuodidian" placeholder="请输入工作地点"></el-input>
				</el-form-item>
				<el-form-item label="录取备注" prop="luqubeizhu">
					<el-input type="textarea" :rows="4" v-model="luquFormData.luqubeizhu" placeholder="请输入录取备注"></el-input>
				</el-form-item>
			</el-form>
			<span slot="footer" class="dialog-footer">
				<el-button @click="luquVisiable=false">取 消</el-button>
				<el-button type="primary" @click="submitLuqu">确认录取</el-button>
			</span>
		</el-dialog>


	</div>
</template>

<script>
import axios from 'axios'
import AddOrUpdate from "./add-or-update";
import luquxinxiCrossAddOrUpdate from "../luquxinxi/add-or-update";
	export default {
		data() {
			return {
				leixingOptions: [],
				searchForm: {
					key: ""
				},
				form:{},
				dataList: [],
				pageIndex: 1,
				pageSize: 10,
				totalPage: 0,
				dataListLoading: false,
				dataListSelections: [],
				showFlag: true,
				sfshVisiable: false,
				shForm: {},
				luquVisiable: false,
				luquFormData: {
					xinzidaiyu: '',
					shangbanshijian: '',
					gongzuodidian: '',
					luqubeizhu: ''
				},
				luquRules: {
					xinzidaiyu: [
						{ required: true, message: '请输入薪资待遇', trigger: 'blur' }
					],
					shangbanshijian: [
						{ required: true, message: '请输入上班时间', trigger: 'blur' }
					],
					gongzuodidian: [
						{ required: true, message: '请输入工作地点', trigger: 'blur' }
					]
				},
				currentMianshiRow: null,
				chartVisiable: false,
				chartVisiable1: false,
				chartVisiable2: false,
				chartVisiable3: false,
				chartVisiable4: false,
				chartVisiable5: false,
				addOrUpdateFlag:false,
				luquxinxiCrossAddOrUpdateFlag: false,
				layouts: ["prev","pager","next"],
			};
		},
		created() {
			this.init();
			this.getDataList();
			this.contentStyleChange()
		},
		mounted() {
		},
		filters: {
			htmlfilter: function (val) {
				return val.replace(/<[^>]*>/g).replace(/undefined/g,'');
			}
		},
		computed: {
			tablename(){
				return this.$storage.get('sessionTable')
			},
		},
		components: {
			AddOrUpdate,
			luquxinxiCrossAddOrUpdate,
		},
		methods: {
			contentStyleChange() {
				this.contentPageStyleChange()
			},
			// 分页
			contentPageStyleChange(){
				let arr = []

				// if(this.contents.pageTotal) arr.push('total')
				// if(this.contents.pageSizes) arr.push('sizes')
				// if(this.contents.pagePrevNext){
				//   arr.push('prev')
				//   if(this.contents.pagePager) arr.push('pager')
				//   arr.push('next')
				// }
				// if(this.contents.pageJumper) arr.push('jumper')
				// this.layouts = arr.join()
				// this.contents.pageEachNum = 10
			},
			luquxinxiCrossAddOrUpdateHandler(row,type,crossOptAudit,crossOptPay,statusColumnName,tips,statusColumnValue){
				this.showFlag = false;
				this.addOrUpdateFlag = false;
				this.luquxinxiCrossAddOrUpdateFlag = true;
				this.$storage.set('crossObj',row);
				this.$storage.set('crossTable','mianshitongzhi');
				this.$storage.set('statusColumnName',statusColumnName);
				this.$storage.set('statusColumnValue',statusColumnValue);
				this.$storage.set('tips',tips);
				if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
					var obj = this.$storage.getObj('crossObj');
					for (var o in obj){
						if(o==statusColumnName && obj[o]==statusColumnValue){
							this.$message({
								message: tips,
								type: "success",
								duration: 1500,
								onClose: () => {
									this.getDataList();
								}
							});
							this.showFlag = true;
							this.luquxinxiCrossAddOrUpdateFlag = false;
							return;
						}
					}
				}
				this.$nextTick(() => {
					this.$refs.luquxinxiCrossaddOrUpdate.init(row.id,type);
				});
			},






    init () {
          this.leixingOptions = "周一,周二,周三,周四,周五,周六,周日".split(',')
    },
    search() {
      this.pageIndex = 1;
      this.getDataList();
    },

    // 获取数据列表
    getDataList() {
      this.dataListLoading = true;
      let params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
        order: 'desc',
      }
           if(this.searchForm.jianzhimingcheng!='' && this.searchForm.jianzhimingcheng!=undefined){
            params['jianzhimingcheng'] = '%' + this.searchForm.jianzhimingcheng + '%'
          }
           if(this.searchForm.jianzhifenlei!='' && this.searchForm.jianzhifenlei!=undefined){
            params['jianzhifenlei'] = '%' + this.searchForm.jianzhifenlei + '%'
          }
           if(this.searchForm.qiyemingcheng!='' && this.searchForm.qiyemingcheng!=undefined){
            params['qiyemingcheng'] = '%' + this.searchForm.qiyemingcheng + '%'
          }
           if(this.searchForm.leixing!='' && this.searchForm.leixing!=undefined){
            params['leixing'] = this.searchForm.leixing
          }
           if(this.searchForm.xingming!='' && this.searchForm.xingming!=undefined){
            params['xingming'] = '%' + this.searchForm.xingming + '%'
          }
			this.$http({
				url: "mianshitongzhi/page",
				method: "get",
				params: params
			}).then(({ data }) => {
				if (data && data.code === 0) {
					this.dataList = data.data.list;
					this.totalPage = data.data.total;
				} else {
					this.dataList = [];
					this.totalPage = 0;
				}
				this.dataListLoading = false;
			});
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 多选
    selectionChangeHandler(val) {
      this.dataListSelections = val;
    },
    // 添加/修改
    addOrUpdateHandler(id,type) {
      this.showFlag = false;
      this.addOrUpdateFlag = true;
      this.crossAddOrUpdateFlag = false;
      if(type!='info'){
        type = 'else';
      }
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(id,type);
      });
    },
    // 审核窗口
    shDialog(row){
      this.sfshVisiable = true
      if(row){
        this.shForm = {
          jianzhimingcheng: row.jianzhimingcheng,
          jianzhifengmian: row.jianzhifengmian,
          jianzhifenlei: row.jianzhifenlei,
          qiyezhanghao: row.qiyezhanghao,
          qiyemingcheng: row.qiyemingcheng,
          fuzeren: row.fuzeren,
          mianshiriqi: row.mianshiriqi,
          leixing: row.leixing,
          mianshididian: row.mianshididian,
          xuehao: row.xuehao,
          xingming: row.xingming,
          mobile: row.mobile,
          mianshibeizhu: row.mianshibeizhu,
          caozuoriqi: row.caozuoriqi,
          id: row.id
        }
      }
    },
    // 审核
    shHandler(){
      this.$confirm(`确定操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "mianshitongzhi/update",
          method: "post",
          data: this.shForm
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.getDataList();
                this.sfshVisiable = false
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    },
    // 下载
    download(file){
      let arr = file.replace(new RegExp('upload/', "g"), "")
      axios.get(this.$base.url + 'file/download?fileName=' + arr, {
      	headers: {
      		token: this.$storage.get('Token')
      	},
      	responseType: "blob"
      }).then(({
      	data
      }) => {
      	const binaryData = [];
      	binaryData.push(data);
      	const objectUrl = window.URL.createObjectURL(new Blob(binaryData, {
      		type: 'application/pdf;chartset=UTF-8'
      	}))
      	const a = document.createElement('a')
      	a.href = objectUrl
      	a.download = arr
      	// a.click()
      	// 下面这个写法兼容火狐
      	a.dispatchEvent(new MouseEvent('click', {
      		bubbles: true,
      		cancelable: true,
      		view: window
      	}))
      	window.URL.revokeObjectURL(data)
      },err=>{
		  axios.get((location.href.split(this.$base.name).length>1 ? location.href.split(this.$base.name)[0] :'') + this.$base.name + '/file/download?fileName=' + arr, {
		  	headers: {
		  		token: this.$storage.get('Token')
		  	},
		  	responseType: "blob"
		  }).then(({
		  	data
		  }) => {
		  	const binaryData = [];
		  	binaryData.push(data);
		  	const objectUrl = window.URL.createObjectURL(new Blob(binaryData, {
		  		type: 'application/pdf;chartset=UTF-8'
		  	}))
		  	const a = document.createElement('a')
		  	a.href = objectUrl
		  	a.download = arr
		  	// a.click()
		  	// 下面这个写法兼容火狐
		  	a.dispatchEvent(new MouseEvent('click', {
		  		bubbles: true,
		  		cancelable: true,
		  		view: window
		  	}))
		  	window.URL.revokeObjectURL(data)
		  })
	  })
    },
	// 预览
	preClick(file){
		if(!file){
			return false
		}
		window.open((location.href.split(this.$base.name).length>1 ? location.href.split(this.$base.name)[0] + this.$base.name + '/' + file :this.$base.url + file))
	},
	openLuquDialog(row) {
		this.currentMianshiRow = row;
		this.luquFormData = {
			xinzidaiyu: '',
			shangbanshijian: '',
			gongzuodidian: '',
			luqubeizhu: ''
		};
		this.luquVisiable = true;
		this.$nextTick(() => {
			this.$refs.luquForm && this.$refs.luquForm.clearValidate();
		});
	},
	async submitLuqu() {
		console.log('========== [录取操作] 开始录取流程 ==========');
		console.log('[录取操作] 当前面试通知数据:', this.currentMianshiRow);
		console.log('[录取操作] 录取表单数据:', this.luquFormData);
		
		// 表单验证
		try {
			const valid = await new Promise((resolve) => {
				this.$refs.luquForm.validate((v) => resolve(v));
			});
			
			if (!valid) {
				console.log('[录取操作] 表单验证失败');
				return false;
			}
			console.log('[录取操作] 表单验证通过');
		} catch (error) {
			console.error('[录取操作] 表单验证异常:', error);
			return false;
		}
		
		try {
			// 步骤1: 防重复检查
			console.log('[录取操作] 步骤1: 检查是否已存在录取记录');
			const checkResult = await this.$http({
				url: "luquxinxi/page",
				method: "get",
				params: {
					page: 1,
					limit: 1,
					xuehao: this.currentMianshiRow.xuehao,
					jianzhimingcheng: this.currentMianshiRow.jianzhimingcheng,
					qiyezhanghao: this.currentMianshiRow.qiyezhanghao
				}
			});
			
			console.log('[录取操作] 查询录取记录返回结果:', checkResult.data);
			
			if (checkResult.data && checkResult.data.code === 0 && checkResult.data.data.total > 0) {
				console.log('[录取操作] 警告: 该学生已经被录取，无法重复录取');
				this.$message.warning('该学生已经被录取，无法重复录取');
				this.luquVisiable = false;
				return;
			}

			// 步骤2: 构建并保存录取数据
			const luquData = {
				jianzhimingcheng: this.currentMianshiRow.jianzhimingcheng,
				jianzhifengmian: this.currentMianshiRow.jianzhifengmian,
				jianzhifenlei: this.currentMianshiRow.jianzhifenlei,
				qiyezhanghao: this.currentMianshiRow.qiyezhanghao,
				qiyemingcheng: this.currentMianshiRow.qiyemingcheng,
				fuzeren: this.currentMianshiRow.fuzeren,
				kaigongriqi: this.currentMianshiRow.mianshiriqi,
				shangbandidian: this.luquFormData.gongzuodidian,
				xuehao: this.currentMianshiRow.xuehao,
				xingming: this.currentMianshiRow.xingming,
				mobile: this.currentMianshiRow.mobile,
				faburiqi: this.currentMianshiRow.caozuoriqi,
				xinzidaiyu: this.luquFormData.xinzidaiyu,
				shangbanshijian: this.luquFormData.shangbanshijian,
				gongzuodidian: this.luquFormData.gongzuodidian,
				luqubeizhu: this.luquFormData.luqubeizhu
			};

			console.log('[录取操作] 步骤2: 准备保存录取信息, SQL: INSERT INTO luquxinxi', luquData);
			
			const saveResult = await this.$http({
				url: "luquxinxi/save",
				method: "post",
				data: luquData
			});
			
			console.log('[录取操作] 保存录取信息返回结果:', saveResult.data);
			
			if (!saveResult.data || saveResult.data.code !== 0) {
				console.error('[录取操作] 录取信息保存失败:', saveResult.data);
				this.$message.error(saveResult.data.msg || "录取失败");
				return;
			}
			
			console.log('[录取操作] 录取信息保存成功');

			// 步骤3: 查询招聘信息以扣减人数
			console.log('[录取操作] 步骤3: 查询招聘信息以扣减人数');
			const jobResult = await this.$http({
				url: "zhaopinxinxi/page",
				method: "get",
				params: { 
					page: 1,
					limit: 1,
					jianzhimingcheng: this.currentMianshiRow.jianzhimingcheng, 
					qiyezhanghao: this.currentMianshiRow.qiyezhanghao 
				}
			});
			
			console.log('[录取操作] 查询招聘信息返回结果:', jobResult.data);
			
			if (!jobResult.data || jobResult.data.code !== 0 || !jobResult.data.data.list || jobResult.data.data.list.length === 0) {
				console.error('[录取操作] 未找到对应的招聘信息');
				this.$message.error("未找到对应的招聘信息");
				return;
			}
			
			const jobInfo = jobResult.data.data.list[0];
			let newZhaopinrenshu = jobInfo.zhaopinrenshu - 1;
			if (newZhaopinrenshu < 0) newZhaopinrenshu = 0;
			
			console.log('[录取操作] 原招聘人数:', jobInfo.zhaopinrenshu, ', 新招聘人数:', newZhaopinrenshu);
			console.log('[录取操作] 步骤4: 更新招聘人数, SQL: UPDATE zhaopinxinxi SET zhaopinrenshu =', newZhaopinrenshu, 'WHERE id =', jobInfo.id);
			
			// 步骤4: 更新招聘人数
			await this.$http({
				url: "zhaopinxinxi/update",
				method: "post",
				data: { id: jobInfo.id, zhaopinrenshu: newZhaopinrenshu }
			});
			
			console.log('[录取操作] 招聘人数更新成功');

			// 步骤5: 删除面试通知记录
			console.log('[录取操作] 步骤5: 删除面试通知, SQL: DELETE FROM mianshitongzhi WHERE id =', this.currentMianshiRow.id);
			const deleteResult = await this.$http({
				url: "mianshitongzhi/delete",
				method: "post",
				data: [this.currentMianshiRow.id]
			});
			
			console.log('[录取操作] 删除面试通知返回结果:', deleteResult.data);
			
			if (deleteResult.data && deleteResult.data.code === 0) {
				console.log('[录取操作] 面试通知删除成功');
				console.log('[录取操作] ========== 录取流程完成 ==========');
				
				// 先关闭弹窗，再显示成功消息
				this.luquVisiable = false;
				
				this.$message({
					message: "录取成功！已同步至录取信息管理模块，岗位人数已扣减，面试通知已移除",
					type: "success",
					duration: 1500,
					onClose: () => {
						this.getDataList();
					}
				});
			} else {
				console.error('[录取操作] 删除面试通知失败:', deleteResult.data);
				this.$message.error("删除面试通知失败：" + (deleteResult.data.msg || "未知错误"));
			}
			
		} catch (error) {
			console.error('[录取操作] 异常:', error);
			this.$message.error("网络请求失败，请稍后重试");
		}
	},
	mianshitongzhistatusChange(e,row){
		if(row.status==0){
			row.passwordwrongnum = 0
		}
		this.$http({
			url:'mianshitongzhi/update',
			method:'post',
			data:row
		}).then(res=>{
			if(row.status==1){
				this.$message.error('该用户已锁定')
			}else{
				this.$message.success('该用户已解除锁定')
			}
		})
	},
    // 删除
    deleteHandler(id ) {
      var ids = id
        ? [Number(id)]
        : this.dataListSelections.map(item => {
            return Number(item.id);
          });
      this.$confirm(`确定进行[${id ? "删除" : "批量删除"}]操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "mianshitongzhi/delete",
          method: "post",
          data: ids
        }).then(({ data }) => {
          if (data && data.code === 0) {
			this.$message({
			  message: "操作成功",
			  type: "success",
			  duration: 1500,
			  onClose: () => {
			    this.search();
			  }
			});
            
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    },


  }

};
</script>
<style lang="scss" scoped>
	
	.center-form-pv {
	  .el-date-editor.el-input {
	    width: auto;
	  }
	}
	
	.el-input {
	  width: auto;
	}
	
	// form
	.center-form-pv .el-input /deep/ .el-input__inner {
				border: 1px solid #e3e3e3;
				border-radius: 3px;
				padding: 0 12px;
				color: inherit;
				background: #fff;
				width: 150px;
				font-size: inherit;
				height: 44px;
			}
	
	.center-form-pv .el-select /deep/ .el-input__inner {
				border: 1px solid #e3e3e3;
				border-radius: 3px;
				padding: 0 10px;
				color: inherit;
				background: #fff;
				width: 150px;
				font-size: inherit;
				height: 44px;
			}
	
	.center-form-pv .el-date-editor /deep/ .el-input__inner {
				border: 1px solid #e3e3e3;
				border-radius: 3px;
				padding: 0 10px 0 30px;
				color: inherit;
				background: #fff;
				width: 150px;
				font-size: inherit;
				height: 44px;
			}
	
	.center-form-pv .search {
				cursor: pointer;
				padding: 0px 15px;
				margin: 0 10px;
				color: #fff;
				font-size: 16px;
				border-color: #B7B894;
				line-height: 44px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 17px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9CAA8 0%,#B7B894 100%);
				width: auto;
				border-width: 1px;
				border-style: solid;
				min-width: 80px;
				height: 44px;
			}
	
	.center-form-pv .search:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.center-form-pv .actions .add {
				border: 1px solid #B9AFCB;
				cursor: pointer;
				padding: 16px 15px;
				margin: 4px 4px 5px 0;
				color: inherit;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9B9DB 0%,#B9AFCB 100%),#C9B9DB;
				width: auto;
				min-width: 70px;
				height: auto;
			}
	
	.center-form-pv .actions .add:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.center-form-pv .actions .del {
				border: 1px solid #DC9A80;
				cursor: pointer;
				padding: 16px 15px;
				margin: 4px 4px 5px;
				color: inherit;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: #DC9A80;
				width: auto;
				min-width: 70px;
				height: auto;
			}
	
	.center-form-pv .actions .del:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.center-form-pv .actions .statis {
				border: 1px solid #B7B894;
				cursor: pointer;
				padding: 16px 15px;
				margin: 4px 4px 5px;
				color: inherit;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9CAA8 0%,#B7B894 100%);
				width: auto;
				height: auto;
			}
	
	.center-form-pv .actions .statis:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.center-form-pv .actions .btn18 {
				border: 1px solid #484443;
				cursor: pointer;
				padding: 16px 15px;
				margin: 4px 4px 5px;
				color: #fff;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: linear-gradient(to bottom, #686463 0%,#484443 100%);
				width: auto;
				height: auto;
			}
	
	.center-form-pv .actions .btn18:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	// table
	.el-table /deep/ .el-table__header-wrapper thead {
				color: inherit;
				background: rgba(254,169,34,0);
				width: 100%;
			}
	
	.el-table /deep/ .el-table__header-wrapper thead tr {
				background: #fff;
			}
	
	.el-table /deep/ .el-table__header-wrapper thead tr th {
				padding: 6px 0;
				background: none;
				border-color: #eee;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: left;
			}

	.el-table /deep/ .el-table__header-wrapper thead tr th .cell {
				padding: 0 10px;
				word-wrap: normal;
				color: #333;
				word-break: break-all;
				white-space: normal;
				font-weight: 600;
				display: inline-block;
				vertical-align: middle;
				width: 100%;
				line-height: 24px;
				position: relative;
				text-overflow: ellipsis;
			}

	
	.el-table /deep/ .el-table__body-wrapper tbody {
				padding: 0;
				width: 100%;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr {
				background: none;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 2px 0;
				color: inherit;
				background: none;
				font-size: inherit;
				border-color: #eee;
				border-width: 0 1px 1px 0px;
				border-style: solid;
				text-align: left;
			}
	
		
	.el-table /deep/ .el-table__body-wrapper tbody tr:hover td {
				padding: 2px 0;
				color: #000;
				background: #f6f6f6;
				font-weight: 500;
				border-color: #e6e6e6;
				border-width: 0 1px 1px 0px;
				border-style: solid;
				text-align: left;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 2px 0;
				color: inherit;
				background: none;
				font-size: inherit;
				border-color: #eee;
				border-width: 0 1px 1px 0px;
				border-style: solid;
				text-align: left;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr td .cell {
				padding: 0 10px;
				overflow: hidden;
				color: inherit;
				word-break: break-all;
				white-space: normal;
				line-height: 24px;
				text-overflow: ellipsis;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .view {
				border: 1px solid #B9AFCB;
				cursor: pointer;
				padding: 0 10px;
				margin: 5px 5px 5px 0;
				color: #fff;
				font-size: 13px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9B9DB 0%,#B9AFCB 100%);
				width: auto;
				min-width: 40px;
				height: 40px;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .view:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .add {
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .add:hover {
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .edit {
				border: 1px solid #B7B894;
				cursor: pointer;
				padding: 0 10px;
				margin: 5px 5px 5px 0;
				color: #fff;
				font-size: 13px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9CAA8 0%,#B7B894 100%);
				width: auto;
				min-width: 40px;
				height: 40px;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .edit:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .del {
				border: 1px solid #DC9A80;
				cursor: pointer;
				padding: 0 10px;
				margin: 5px 5px 5px 0;
				color: #fff;
				font-size: 13px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: #DC9A80;
				width: auto;
				height: 40px;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .del:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .btn8 {
				border: 1px solid #AAA9A7;
				cursor: pointer;
				padding: 0 10px;
				margin: 5px 5px 5px 0;
				color: #fff;
				font-size: 13px;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: linear-gradient(to bottom, #B8B7B5 0%,#AAA9A7 100%);
				width: auto;
				height: 40px;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .btn8:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td .luqu {
				cursor: pointer;
				padding: 0 10px;
				margin: 5px 5px 5px 0;
				color: #fff;
				font-size: 13px;
				transition: all 0.3s;
				border-radius: 3px;
				width: auto;
				min-width: 40px;
				height: 28px;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr td .luqu:hover {
				opacity: 0.8;
				transform: scale(1.05);
			}

	// pagination
	.main-content .el-pagination /deep/ .el-pagination__total {
				margin: 0 10px 0 0;
				color: inherit;
				font-weight: 400;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-prev {
				border: none;
				border-radius: 2px;
				padding: 0 5px;
				margin: 0 5px;
				color: inherit;
				background: none;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 28px;
				min-width: 35px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-next {
				border: none;
				border-radius: 2px;
				padding: 0 5px;
				margin: 0 5px;
				color: inherit;
				background: none;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 28px;
				min-width: 35px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-prev:disabled {
				border: none;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0 5px;
				margin: 0 5px;
				color: #999;
				background: none;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-next:disabled {
				border: none;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0 5px;
				margin: 0 5px;
				color: #999;
				background: none;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 28px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pager {
				padding: 0;
				margin: 0;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
			}

	.main-content .el-pagination /deep/ .el-pager .number {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: inherit;
				background: none;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 24px;
				text-align: center;
				height: 24px;
			}
	
	.main-content .el-pagination /deep/ .el-pager .number:hover {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: #fff;
				background: #333;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 24px;
				text-align: center;
				height: 24px;
			}
	
	.main-content .el-pagination /deep/ .el-pager .number.active {
				cursor: default;
				padding: 0 4px;
				margin: 0 5px;
				color: #fff;
				background: #333;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 24px;
				text-align: center;
				height: 24px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes {
				color: inherit;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input {
				margin: 0 5px;
				color: inherit;
				width: 100px;
				font-size: inherit;
				position: relative;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__inner {
				border: 0px solid #ddd;
				cursor: pointer;
				padding: 0 25px 0 8px;
				color: inherit;
				display: inline-block;
				font-size: inherit;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: none;
				width: 100%;
				text-align: center;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input span.el-input__suffix {
				top: 0;
				position: absolute;
				right: 0;
				height: 100%;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__suffix .el-select__caret {
				cursor: pointer;
				color: #C0C4CC;
				width: 25px;
				font-size: 14px;
				line-height: 28px;
				text-align: center;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump {
				margin: 0 0 0 24px;
				color: inherit;
				display: inline-block;
				vertical-align: top;
				font-size: inherit;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump .el-input {
				border-radius: 3px;
				padding: 0 2px;
				margin: 0 2px;
				color: inherit;
				display: inline-block;
				width: 50px;
				font-size: inherit;
				line-height: 18px;
				position: relative;
				text-align: center;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump .el-input .el-input__inner {
				border: 1px solid #eee;
				cursor: pointer;
				padding: 0 0px;
				color: inherit;
				display: inline-block;
				font-size: inherit;
				line-height: 24px;
				border-radius: 3px;
				outline: 0;
				background: none;
				width: auto;
				text-align: center;
				height: 24px;
			}
	
	// list one
	.one .list1-view {
				border: 1px solid #B9AFCB;
				cursor: pointer;
				padding: 0 8px 0 4px;
				margin: 0px 5px 5px 0;
				color: #fff;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9B9DB 0%,#B9AFCB 100%);
				width: auto;
				min-width: 58px;
				height: 40px;
			}
	
	.one .list1-view:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.one .list1-edit {
				border: 1px solid #B7B894;
				cursor: pointer;
				padding: 0 8px 0 4px;
				margin: 0px 5px 5px 0;
				color: #fff;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: linear-gradient(to bottom, #C9CAA8 0%,#B7B894 100%);
				width: auto;
				min-width: 58px;
				height: 40px;
			}
	
	.one .list1-edit:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.one .list1-del {
				border: 1px solid #0260ad30;
				cursor: pointer;
				padding: 0 8px 0 4px;
				margin: 0px 5px 5px 0;
				color: #fff;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: linear-gradient(to bottom, #B8B7B5 0%,#AAA9A7 100%);
				width: auto;
				min-width: 58px;
				height: 40px;
			}
	
	.one .list1-del:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.one .list1-btn8 {
				border: 1px solid #AAA9A7;
				cursor: pointer;
				padding: 0 8px 0 4px;
				margin: 0px 5px 5px 0;
				color: #fff;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.4);
				background: linear-gradient(to bottom, #B8B7B5 0%,#AAA9A7 100%);
				width: auto;
				min-width: 48px;
				height: 40px;
			}
	
	.one .list1-btn8:hover {
				transform: scale(1.09) rotate(3deg);
			}
	
	.main-content .el-table .el-switch {
				display: inline-flex;
				vertical-align: middle;
				line-height: 30px;
				position: relative;
				align-items: center;
				height: 30px;
			}
	.main-content .el-table .el-switch /deep/ .el-switch__label--left {
				cursor: pointer;
				margin: 0 10px 0 0;
				color: #333;
				font-weight: 500;
				display: inline-block;
				vertical-align: middle;
				font-size: 16px;
				transition: .2s;
				height: 30px;
			}
	.main-content .el-table .el-switch /deep/ .el-switch__label--right {
				cursor: pointer;
				margin: 0 0 0 10px;
				color: #333;
				font-weight: 500;
				display: inline-block;
				vertical-align: middle;
				font-size: 16px;
				transition: .2s;
				height: 30px;
			}
	.main-content .el-table .el-switch /deep/ .el-switch__core {
				border: 1px solid #b0d5f6;
				cursor: pointer;
				border-radius: 20px;
				margin: 0;
				outline: 0;
				background: #b0d5f6;
				display: inline-block;
				width: 40px;
				box-sizing: border-box;
				transition: border-color .3s,background-color .3s;
				height: 20px;
			}
	.main-content .el-table .el-switch /deep/ .el-switch__core::after {
				border-radius: 100%;
				top: 1px;
				left: 1px;
				background: #FFF;
				width: 16px;
				position: absolute;
				transition: all .3s;
				height: 16px;
			}
	.main-content .el-table .el-switch.is-checked /deep/ .el-switch__core::after {
				margin: 0 0 0 -17px;
				left: 100%;
			}
	
	.main-content .el-table .el-rate /deep/ .el-rate__item {
				cursor: pointer;
				display: inline-block;
				vertical-align: middle;
				font-size: 0;
				position: relative;
			}
	.main-content .el-table .el-rate /deep/ .el-rate__item .el-rate__icon {
				margin: 0 3px;
				color: #c0c4cc;
				display: inline-block;
				font-size: 18px;
				position: relative;
				transition: .3s;
			}
</style>
