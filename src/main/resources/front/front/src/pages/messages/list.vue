<template>
<div :style='{"minHeight":"500px","padding":"20px 20px 40px","margin":"0px auto","borderColor":"#d3d3d3","background":"#fff","borderWidth":"0 1px","width":"980px","position":"relative","borderStyle":"solid"}'>
    <div class="section-title" :style='{"padding":"0","margin":"20px auto 0","borderColor":"#ffc652","color":"#222","textAlign":"center","background":"none","borderWidth":"0px 0 0 ","width":"100%","fontSize":"24px","borderStyle":"solid","fontWeight":"500","height":"60px"}'>留言板</div>
	<el-form :model="form" :rules="rules" ref="form" label-width="65px" label-position="left">
	  <el-form-item label="留言" prop="content">
		<editor
		    :style='{"minHeight":"250px","padding":"0","margin":"0","borderColor":"#eee","backgroundColor":"none","borderRadius":"0","borderWidth":"1px","width":"96%","borderStyle":"solid","height":"auto"}'
		    v-model="form.content" 
		    class="editor" 
		    action="file/upload">
		</editor>
	  </el-form-item>
      <el-form-item label="图片" prop="cpicture">
        <file-upload
        tip="点击上传图片"
        action="file/upload"
        :limit="1"
        :multiple="true"
        :fileUrls="form.cpicture?form.cpicture:''"
        @change="cpictureUploadChange"
        ></file-upload>
      </el-form-item>
	  <el-form-item>
		<el-button type="primary" @click="submitForm('form')">立即提交</el-button>
		<el-button @click="resetForm('form')">重置</el-button>
	  </el-form-item>
	</el-form>
	<div class="section-content">
	  <span v-for="item in infoList" :key="item.id">
		<div class="header-block">
		  <el-avatar v-if="item.avatarurl" :size="50" :src="$config.baseUrl + item.avatarurl"></el-avatar>
		  <el-avatar v-if="!item.avatarurl" :size="50" :src="require('@/assets/touxiang.png')"></el-avatar>
		  <span class="userinfo">用户：{{item.username}}</span>
		</div>
		<div class="content-block-ask">
		  <div v-html="item.content"></div>
		</div>
        <div v-if="item.cpicture" class="content" style="margin: 0;flex: 1;">
            <img style="max-width: 300px;max-height: 300px;border: 2px solid #EEEEEE;margin:8px 0 0 50px;" :src="$config.baseUrl+item.cpicture">
        </div>
		<div class="content-block-reply" v-if="item.reply">
		  回复：<div v-html="item.reply"></div>
		</div>
        <div v-if="item.rpicture" class="content" style="margin: 0;flex: 1;">
            <img style="max-width: 300px;max-height: 300px;border: 2px solid #EEEEEE;margin:8px 0 0 50px;" :src="$config.baseUrl+item.rpicture">
        </div>
		<el-divider></el-divider>
	  </span>
	</div>
	
    <el-pagination
      background
      id="pagination" class="pagination"
      :pager-count="7"
      :page-size="pageSize"
      :page-sizes="pageSizes"
	  prev-text="上一页"
      next-text="下一页"
      :hide-on-single-page="false"
      :layout='["total","prev","pager","next","sizes"].join()'
      :total="total"
      :style='{"padding":"0","margin":"0 auto","color":"#333","textAlign":"left","width":"100%","lineHeight":"40px","float":"left","fontWeight":"500","height":"40px","order":"50"}'
      @current-change="curChange"
      @prev-click="prevClick"
      @next-click="nextClick"
    ></el-pagination>
	  
</div>
</template>

<script>
  export default {
    //数据集合
    data() {
      return {
		  layouts: '',
        form: {
          content: '',
          userid: localStorage.getItem('frontUserid'),
          username: localStorage.getItem('username')
        },
        total: 1,
        pageSize: 20,
		pageSizes: [10,20,30,50],
        totalPage: 1,
        rules: {
          content: [
            { required: true, message: '请输入内容', trigger: 'blur' }
          ]
        },
        infoList: []
      }
    },
    created() {
      this.getInfo(1);
    },
    //方法集合
    methods: {
      getInfo(page) {
        this.$http.get('messages/list', {params: {page, limit: this.pageSize,sort:"addtime", order:"desc"}}).then(res => {
          if (res.data.code == 0) {
            this.infoList = res.data.data.list;
            this.total = res.data.data.total;
            this.pageSize = res.data.data.pageSize;this.pageSizes = [this.pageSize, this.pageSize*2, this.pageSize*3, this.pageSize*5];
            this.totalPage = res.data.data.totalPage;
          }
        });
      },
      curChange(page) {
        this.getInfo(page);
      },
      prevClick(page) {
        this.getInfo(page);
      },
      nextClick(page) {
        this.getInfo(page);
      },
      cpictureUploadChange(fileUrls) {
          this.form.cpicture = fileUrls;
      },
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            if(this.form.cpicture!=null) {
               this.form.cpicture = this.form.cpicture.replace(new RegExp(this.$config.baseUrl,"g"),"");
            }
            this.form.avatarurl = localStorage.getItem('frontHeadportrait')?localStorage.getItem('frontHeadportrait'):'';
            this.$http.post('messages/add', this.form).then(res => {
              if (res.data.code == 0) {
                this.$message({
                  type: 'success',
                  message: '留言成功!',
                  duration: 1500,
                  onClose: () => {
                    this.form.content = '';
                    this.getInfo(1);
                  }
                });
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
  .section {
    width: 900px;
    margin: 0 auto;
  }

  .section-content {
    margin-top: 50px;
  }
  .section-pagination {
    margin-top: 30px;
    text-align: center;
  }
  .header-block {
    height: 50px;
    line-height: 50px;
    display: flex;
  }
  .userinfo {
    align-self: center;
    margin-left: 15px;
  }
  .content-block-ask, .content-block-reply {
    margin-left: 65px;
    margin-top: 15px;
  }
  .content-block-reply {
    margin-top: 30px;
  }
  .z-box {
  	  width: 100% !important;
  }
  
  #pagination.el-pagination /deep/ .el-pagination__total {
  	  	margin: 0 5px 0 0;
  	  	color: #666;
  	  	font-weight: 400;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 22px;
  	  	height: 22px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-prev {
  	  	border: 1px solid #ccc;
  	  	border-radius: 2px;
  	  	padding: 0;
  	  	margin: 0 5px;
  	  	color: #666;
  	  	background: #fff;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 20px;
  	  	min-width: 22px;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-next {
  	  	border: 1px solid #ccc;
  	  	border-radius: 2px;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #666;
  	  	background: #fff;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 20px;
  	  	min-width: 22px;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-prev:disabled {
  	  	border: 1px solid #ccc;
  	  	cursor: not-allowed;
  	  	border-radius: 2px;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #ccc;
  	  	background: #f4f4f5;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 22px;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-next:disabled {
  	  	border: 1px solid #ccc;
  	  	cursor: not-allowed;
  	  	border-radius: 2px;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #ccc;
  	  	background: #f4f4f5;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 22px;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager {
  	  	padding: 0;
  	  	margin: 0;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager .number {
  	  	cursor: pointer;
  	  	border: 1px solid #ccc;
  	  	padding: 0 6px;
  	  	margin: 0 5px;
  	  	color: #666;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 24px;
  	  	border-radius: 2px;
  	  	background: #fff;
  	  	text-align: center;
  	  	min-width: 25px;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager .number:hover {
  	  	cursor: pointer;
  	  	border: 1px solid #666;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #666;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 24px;
  	  	border-radius: 2px;
  	  	background: #fff;
  	  	text-align: center;
  	  	min-width: 25px;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager .number.active {
  	  	cursor: default;
  	  	border: 1px solid #A2161B;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #fff;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 24px;
  	  	border-radius: 2px;
  	  	background: linear-gradient(180deg, rgba(225,21,30,1) 0%, rgba(180,14,16,1) 100%);
  	  	text-align: center;
  	  	min-width: 25px;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes {
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 22px;
  	  	height: 22px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input {
  	  	border: 1px solid #ccc;
  	  	border-radius: 2px;
  	  	margin: 0 5px;
  	  	width: 80px;
  	  	position: relative;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input .el-input__inner {
  	  	border: 0px solid #DCDFE6;
  	  	cursor: pointer;
  	  	border-radius: 3px;
  	  	padding: 0 25px 0 8px;
  	  	color: #606266;
  	  	background: #FFF;
  	  	display: inline-block;
  	  	width: 100%;
  	  	font-size: 12px;
  	  	line-height: 20px;
  	  	text-align: center;
  	  	height: 24px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input span.el-input__suffix {
  	  	top: 0;
  	  	position: absolute;
  	  	right: 0;
  	  	height: 100%;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input .el-input__suffix .el-select__caret {
  	  	cursor: pointer;
  	  	color: #C0C4CC;
  	  	width: 25px;
  	  	font-size: 14px;
  	  	line-height: 22px;
  	  	text-align: center;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__jump {
  	  	margin: 0 0 0 24px;
  	  	color: #606266;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 12px;
  	  	line-height: 22px;
  	  	height: 22px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__jump .el-input {
  	  	border-radius: 3px;
  	  	padding: 0 2px;
  	  	margin: 0 2px;
  	  	display: inline-block;
  	  	width: 50px;
  	  	font-size: 14px;
  	  	line-height: 18px;
  	  	position: relative;
  	  	text-align: center;
  	  	height: 22px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__jump .el-input .el-input__inner {
  	  	border: 1px solid #DCDFE6;
  	  	cursor: pointer;
  	  	padding: 0 3px;
  	  	color: #606266;
  	  	display: inline-block;
  	  	font-size: 14px;
  	  	line-height: 22px;
  	  	border-radius: 3px;
  	  	outline: 0;
  	  	background: #FFF;
  	  	width: 100%;
  	  	text-align: center;
  	  	height: 22px;
  	  }
</style>
