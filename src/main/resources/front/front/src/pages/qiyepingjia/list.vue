<template>
  <div>
    <div :style='{"padding":"20px","margin":"0px auto","borderColor":"#d3d3d3","borderRadius":"0px","background":"#fff","borderWidth":"0 1px","width":"980px","borderStyle":"solid"}' class="breadcrumb-preview">
      <el-breadcrumb :separator="'='" :style='{"fontSize":"14px","lineHeight":"1","justifyContent":"flex-start","display":"flex"}'>
        <el-breadcrumb-item class="item1" to="/"><a>首页</a></el-breadcrumb-item>
        <el-breadcrumb-item class="item2"><a>企业评价</a></el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <div class="list-preview" :style='{"padding":"0 20px 20px","margin":"0px auto","borderColor":"#d3d3d3","background":"#fff","borderWidth":"0 1px","width":"980px","position":"relative","borderStyle":"solid"}'>
      <el-form :inline="true" :model="formSearch" class="list-form-pv" :style='{"padding":"10px 0 0","margin":"0","display":"flex","alignItems":"center","flexWrap":"nowrap","width":"100%"}'>
        <el-form-item :style='{"margin":"0 15px 0 0","flex":"0 0 auto"}'>
          <div class="lable" :style='{"width":"auto","lineHeight":"32px","display":"inline-block","marginRight":"8px"}'>企业名称：</div>
          <el-input v-model="formSearch.qiyemingcheng" placeholder="企业名称" @keydown.enter.native="getList(1)" clearable size="small" :style='{"width":"140px"}'></el-input>
        </el-form-item>
        <el-form-item :style='{"margin":"0 15px 0 0","flex":"0 0 auto"}'>
          <div class="lable" :style='{"width":"auto","lineHeight":"32px","display":"inline-block","marginRight":"8px"}'>企业账号：</div>
          <el-input v-model="formSearch.qiyezhanghao" placeholder="企业账号" @keydown.enter.native="getList(1)" clearable size="small" :style='{"width":"140px"}'></el-input>
        </el-form-item>
        <!-- 排序按钮 -->
        <el-form-item :style='{"margin":"0 20px 0 0","flex":"0 0 auto"}'>
          <div class="lable" :style='{"width":"auto","lineHeight":"32px","display":"inline-block","marginRight":"8px"}'>排序：</div>
          <el-radio-group v-model="sortType" @change="getList(1)" size="small">
            <el-radio-button label="default">默认</el-radio-button>
            <el-radio-button label="pingjiarenshu_asc">评价人数↑</el-radio-button>
            <el-radio-button label="pingjiarenshu_desc">评价人数↓</el-radio-button>
          </el-radio-group>
        </el-form-item>
        <el-button :style='{"cursor":"pointer","border":"1px solid #505c68","padding":"0px 15px","margin":"0","color":"#fff","borderRadius":"4px","background":"rgb(80, 92, 104)","fontSize":"14px","lineHeight":"32px","height":"32px"}' type="primary" @click="getList(1)">
          <i class="el-icon-search" :style='{"color":"#fff","margin":"0 5px 0 0","fontSize":"14px"}'></i>查询
        </el-button>
      </el-form>

      <div class="company-list" :style='{"padding":"20px 0 0","width":"100%"}'>
        <div class="company-item" v-for="item in dataList" :key="item.id" @click="toDetail(item)" :style='{"cursor":"pointer","padding":"18px 0","borderColor":"#eee","borderWidth":"0 0 1px","borderStyle":"solid","display":"flex","justifyContent":"space-between","alignItems":"center"}'>
          <div :style='{"minWidth":"0","flex":"1"}'>
            <div :style='{"fontSize":"18px","lineHeight":"30px","fontWeight":"600","color":"#333","overflow":"hidden","textOverflow":"ellipsis","whiteSpace":"nowrap"}'>{{item.qiyemingcheng}}</div>
            <div :style='{"fontSize":"14px","lineHeight":"26px","color":"#666"}'>企业账号：{{item.qiyezhanghao}}</div>
            <div :style='{"fontSize":"14px","lineHeight":"26px","color":"#666","overflow":"hidden","textOverflow":"ellipsis","whiteSpace":"nowrap"}'>企业地址：{{item.qiyedizhi}}</div>
          </div>
          <div :style='{"width":"210px","textAlign":"right","color":"#999"}'>
            <div v-if="item.summary && item.summary.pingjiarenshu >= 5">
              <el-rate disabled v-model="item.summary.xingji" :colors="rateColors" score-template="{value}"></el-rate>
              <div :style='{"marginTop":"6px","color":"#C98777","fontSize":"16px","fontWeight":"600"}'>{{item.summary.pingjunfen}} 分</div>
              <div :style='{"fontSize":"13px","lineHeight":"24px"}'>{{item.summary.pingjiarenshu}}人评价</div>
            </div>
            <div v-else>
              <div :style='{"color":"#999","fontSize":"16px","lineHeight":"32px"}'>暂无评分</div>
              <div :style='{"fontSize":"13px"}'>{{item.summary ? item.summary.pingjiarenshu : 0}}人评价</div>
            </div>
          </div>
        </div>
      </div>

      <el-pagination
        background
        :page-size="pageSize"
        :page-sizes="pageSizes"
        prev-text="上一页"
        next-text="下一页"
        :layout='["total","prev","pager","next","sizes"].join()'
        :total="total"
        :style='{"padding":"20px 0 0","margin":"0 auto","color":"#333","textAlign":"left","width":"100%","lineHeight":"40px","fontWeight":"500","height":"60px"}'
        @current-change="curChange"
        @size-change="sizeChange">
      </el-pagination>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      baseUrl: '',
      formSearch: {
        qiyemingcheng: '',
        qiyezhanghao: '',
        sfsh: '是'
      },
      sortType: 'default', // 排序类型：default, pingjiarenshu_asc, pingjiarenshu_desc
      dataList: [],
      pageSize: 10,
      pageSizes: [10, 20, 30, 50],
      total: 0,
      rateColors: ['#F7BA2A', '#F7BA2A', '#F7BA2A']
    }
  },
  created() {
    this.baseUrl = this.$config.baseUrl
    this.getList(1)
  },
  methods: {
    getList(page) {
      const params = {
        page: page || 1,
        limit: this.pageSize,
        sort: 'id',
        order: 'desc'
      }
      if (this.formSearch.qiyemingcheng) {
        params.qiyemingcheng = '%' + this.formSearch.qiyemingcheng + '%'
      }
      if (this.formSearch.qiyezhanghao) {
        params.qiyezhanghao = '%' + this.formSearch.qiyezhanghao + '%'
      }
      params.sfsh = '是'
      
      // 根据排序类型调用不同接口
      if (this.sortType === 'pingjiarenshu_asc' || this.sortType === 'pingjiarenshu_desc') {
        // 调用企业统计接口
        const statsParams = {
          page: page || 1,
          limit: this.pageSize,
          sort: 'pingjiarenshu',
          order: this.sortType === 'pingjiarenshu_asc' ? 'asc' : 'desc'
        }
        if (this.formSearch.qiyemingcheng) {
          statsParams.qiyemingcheng = this.formSearch.qiyemingcheng.replace(/%/g, '')
        }
        if (this.formSearch.qiyezhanghao) {
          statsParams.qiyezhanghao = this.formSearch.qiyezhanghao.replace(/%/g, '')
        }
        
        console.log('请求统计接口参数:', statsParams)
        this.$http.get('qiyepingjia/stats', {params: statsParams}).then(async res => {
          console.log('统计接口响应:', res.data)
          if (res.data.code === 0) {
            // 转换数据格式
            const statsList = res.data.data
            // 获取企业详细信息
            const companyPromises = statsList.map(stat => {
              return this.$http.get('zhaopingongsi/query', {params: {qiyezhanghao: stat.qiyezhanghao}}).then(companyRes => {
                if (companyRes.data.code === 0 && companyRes.data.data) {
                  const company = companyRes.data.data
                  company.summary = {
                    pingjiarenshu: stat.pingjiarenshu,
                    pingjunfen: stat.pingjunfen,
                    xingji: stat.pingjiarenshu >= 5 ? stat.pingjunfen : 0,
                    xianshipingfen: stat.pingjiarenshu >= 5 ? stat.pingjunfen : '暂无评分'
                  }
                  return company
                }
                return null
              })
            })
            
            const companies = await Promise.all(companyPromises)
            this.dataList = companies.filter(c => c !== null)
            this.total = this.dataList.length
          } else {
            this.$message.error(res.data.msg || '获取企业列表失败')
          }
        }).catch(err => {
          console.error('请求失败:', err)
          this.$message.error('网络请求失败')
        })
      } else {
        // 默认排序，调用原接口
        console.log('请求参数:', params)
        this.$http.get('zhaopingongsi/list', {params}).then(async res => {
          console.log('接口响应:', res.data)
          if (res.data.code === 0) {
            this.dataList = res.data.data.list
            this.total = res.data.data.total
            console.log('企业列表:', this.dataList)
            await this.loadSummary()
          } else {
            console.error('接口返回错误:', res.data.msg)
            this.$message.error(res.data.msg || '获取企业列表失败')
          }
        }).catch(err => {
          console.error('请求失败:', err)
          this.$message.error('网络请求失败')
        })
      }
    },
    async loadSummary() {
      const list = this.dataList.map(item => {
        return this.$http.get('qiyepingjia/summary', {params: {qiyezhanghao: item.qiyezhanghao}}).then(res => {
          if (res.data.code === 0) {
            this.$set(item, 'summary', res.data.data)
          }
        })
      })
      await Promise.all(list)
    },
    toDetail(item) {
      this.$router.push({path: '/index/qiyepingjiaDetail', query: {id: item.id}})
    },
    curChange(page) {
      this.getList(page)
    },
    sizeChange(size) {
      this.pageSize = size
      this.getList(1)
    }
  }
}
</script>

<style scoped>
/* 排序按钮激活色 */
.el-radio-button /deep/ .el-radio-button__orig-radio:checked + .el-radio-button__inner {
  background-color: rgb(72, 121, 141);
  border-color: rgb(72, 121, 141);
  box-shadow: -1px 0 0 0 rgb(72, 121, 141);
  color: #fff;
}
.el-radio-button /deep/ .el-radio-button__inner:hover {
  color: rgb(72, 121, 141);
}
/* 分页激活色 */
.el-pagination /deep/ .el-pager li:not(.disabled).active {
  background-color: rgb(72, 121, 141);
  color: #fff;
}
.el-pagination.is-background /deep/ .el-pager li:not(.disabled).active {
  background-color: rgb(72, 121, 141);
  color: #fff;
}
.el-pagination /deep/ .el-pager li:not(.disabled):hover {
  color: rgb(72, 121, 141);
}
.el-pagination /deep/ .btn-prev:hover,
.el-pagination /deep/ .btn-next:hover {
  color: rgb(72, 121, 141);
}
</style>
