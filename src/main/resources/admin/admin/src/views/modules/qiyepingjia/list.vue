<template>
  <div class="main-content" :style='{"color":"#3B3E40","padding":"30px 30px 30px","fontSize":"14px"}'>
    <!-- 列表页 -->
    <template v-if="showFlag">
      <el-form class="center-form-pv" :style='{"border":"0px solid #bababa","padding":"0 10px","margin":"0 0 20px","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"none","display":"flex","fontSize":"inherit","flexDirection":"column","justifyContent":"flex-start"}' :inline="true" :model="searchForm">
        <el-row class="search-row" :style='{"border":"0px solid #e3e3e3","padding":"10px 0","borderRadius":"5px","textAlign":"center","flexWrap":"nowrap","background":"#fff","flexDirection":"row","display":"flex","width":"100%","fontSize":"inherit","justifyContent":"flex-start","alignItems":"center"}'>
          <div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"nowrap","display":"flex","alignItems":"center","whiteSpace":"nowrap"}'>
            <label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px","whiteSpace":"nowrap"}' class="item-label">企业账号</label>
            <el-input v-model="searchForm.qiyezhanghao" placeholder="企业账号" @keydown.enter.native="search()" clearable></el-input>
          </div>
          <div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"nowrap","display":"flex","alignItems":"center","whiteSpace":"nowrap"}'>
            <label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px","whiteSpace":"nowrap"}' class="item-label">企业名称</label>
            <el-input v-model="searchForm.qiyemingcheng" placeholder="企业名称" @keydown.enter.native="search()" clearable></el-input>
          </div>
          <div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"nowrap","display":"flex","alignItems":"center","whiteSpace":"nowrap"}'>
            <label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px","whiteSpace":"nowrap"}' class="item-label">用户账号</label>
            <el-input v-model="searchForm.xuehao" placeholder="用户账号" @keydown.enter.native="search()" clearable></el-input>
          </div>
          <div :style='{"margin":"0 10px 0 0","fontSize":"inherit","flexWrap":"nowrap","display":"flex","alignItems":"center","whiteSpace":"nowrap"}'>
            <label :style='{"margin":"0 10px 0 0","color":"inherit","display":"inline-block","lineHeight":"40px","fontSize":"inherit","fontWeight":"500","height":"40px","whiteSpace":"nowrap"}' class="item-label">用户姓名</label>
            <el-input v-model="searchForm.xingming" placeholder="用户姓名" @keydown.enter.native="search()" clearable></el-input>
          </div>
          <el-button class="search" type="success" @click="search()">
            <span class="icon iconfont icon-chakan14" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block","height":"40px"}'></span>
            查询
          </el-button>
        </el-row>
        <el-row class="actions" :style='{"border":"0px solid #e3e3e3","padding":"10px 0","margin":"0","color":"#fff","textAlign":"left","flexDirection":"row","display":"flex","justifyContent":"flex-start","borderRadius":"5px","flexWrap":"wrap","background":"#fff","width":"100%","fontSize":"inherit"}'>
          <el-button class="del" v-if="isAuth('qiyepingjia','删除')" :disabled="dataListSelections.length?false:true" type="danger" @click="deleteHandler()">
            <span class="icon iconfont icon-shanchu7" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block"}'></span>
            删除
          </el-button>

          <el-button class="stat-btn" v-if="isAuth('qiyepingjia','查看')" type="success" @click="chartDialog()">
            <span class="icon iconfont icon-a-fenxiang2" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block"}'></span>
            企业平均分统计
          </el-button>
        </el-row>
      </el-form>

      <div :style='{"border":"0px solid #e9e9e9","width":"100%","padding":"0px","margin":"10px 0 0","borderRadius":"5px","background":"rgba(255,255,255,1)"}'>
        <el-table class="tables" :style='{"padding":"0","borderColor":"#e6e6e6","color":"inherit","borderRadius":"0px","borderWidth":"1px 1px 0 1px","background":"none","width":"100%","fontSize":"inherit","borderStyle":"solid"}'
          :border="true" :data="dataList" v-loading="dataListLoading" @selection-change="selectionChangeHandler" @sort-change="sortChangeHandle">
          <el-table-column :resizable="true" type="selection" align="center" width="50"></el-table-column>
          <el-table-column :resizable="true" label="序号" type="index" width="50"></el-table-column>
          <el-table-column :resizable="true" sortable="custom" prop="qiyezhanghao" label="企业账号"></el-table-column>
          <el-table-column :resizable="true" sortable="custom" prop="qiyemingcheng" label="企业名称" show-overflow-tooltip></el-table-column>
          <el-table-column :resizable="true" sortable="custom" prop="xuehao" label="用户账号"></el-table-column>
          <el-table-column :resizable="true" sortable="custom" prop="xingming" label="用户姓名"></el-table-column>
          <el-table-column :resizable="true" sortable="custom" prop="pingfen" label="评分" width="180">
            <template slot-scope="scope">
              <el-rate disabled v-model="scope.row.pingfen" :colors="rateColors"></el-rate>
            </template>
          </el-table-column>
          <el-table-column :resizable="true" prop="pingjianeirong" label="评价内容" show-overflow-tooltip></el-table-column>
          <el-table-column :resizable="true" sortable="custom" prop="addtime" label="评价时间" width="170"></el-table-column>
          <el-table-column width="120" label="操作">
            <template slot-scope="scope">
              <el-button class="del" v-if="isAuth('qiyepingjia','删除')" type="danger" @click="deleteHandler(scope.row.id)">
                <span class="icon iconfont icon-guanbi1" :style='{"margin":"0 2px","fontSize":"inherit","color":"inherit","display":"inline-block"}'></span>
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
        :page-sizes="[10, 20, 50, 100]"
        :page-size="pageSize"
        :layout="'total, sizes, prev, pager, next, jumper'"
        :total="totalPage"
        :style='{"padding":"0","margin":"20px 0 0","whiteSpace":"nowrap","textAlign":"center","width":"100%","fontWeight":"500"}'>
      </el-pagination>

      <div :style='{"margin":"30px 0 0","background":"#fff","padding":"20px","borderRadius":"5px"}'>
        <div :style='{"fontSize":"18px","fontWeight":"600","lineHeight":"30px","margin":"0 0 15px"}'>企业评分统计</div>
        <el-table :data="statsList" border>
          <el-table-column prop="qiyezhanghao" label="企业账号"></el-table-column>
          <el-table-column prop="qiyemingcheng" label="企业名称" show-overflow-tooltip></el-table-column>
          <el-table-column prop="pingjiarenshu" label="评价人数"></el-table-column>
          <el-table-column prop="xianshipingfen" label="综合评分"></el-table-column>
        </el-table>
      </div>

      <!-- 企业平均分统计图表弹窗 -->
      <el-dialog
        title="企业平均分统计"
        :visible.sync="chartVisiable"
        width="1400px"
        top="5vh">
        <div id="pingfenChart" style="width:100%;height:800px;"></div>
        <span slot="footer" class="dialog-footer">
          <el-button @click="chartVisiable = false">关闭</el-button>
        </span>
      </el-dialog>
    </template>
  </div>
</template>

<script>
import * as echarts from 'echarts'

export default {
  data() {
    return {
      showFlag: true,
      searchForm: {
        qiyezhanghao: '',
        qiyemingcheng: '',
        xuehao: '',
        xingming: ''
      },
      dataList: [],
      statsList: [],
      dataListLoading: false,
      dataListSelections: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      sortField: 'addtime',
      sortOrder: 'desc',
      rateColors: ['#F7BA2A', '#F7BA2A', '#F7BA2A'],
      chartVisiable: false,

    }
  },
  created() {
    this.getDataList()
    this.getStatsList()
  },
  methods: {
    search() {
      this.pageIndex = 1
      this.getDataList()
    },
    getDataList() {
      this.dataListLoading = true
      const params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: this.sortField,
        order: this.sortOrder
      }
      Object.keys(this.searchForm).forEach(key => {
        if (this.searchForm[key]) {
          params[key] = '%' + this.searchForm[key] + '%'
        }
      })
      this.$http({
        url: 'qiyepingjia/page',
        method: 'get',
        params: params
      }).then(({data}) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list
          this.totalPage = data.data.total
        }
        this.dataListLoading = false
      })
    },
    sortChangeHandle(column) {
      if (column.prop) {
        this.sortField = column.prop
        this.sortOrder = column.order === 'ascending' ? 'asc' : 'desc'
      } else {
        this.sortField = 'addtime'
        this.sortOrder = 'desc'
      }
      this.pageIndex = 1
      this.getDataList()
    },

    // 获取企业评分统计列表
    getStatsList() {
      this.$http({
        url: 'qiyepingjia/stats',
        method: 'get',
        params: {
          qiyezhanghao: this.searchForm.qiyezhanghao,
          qiyemingcheng: this.searchForm.qiyemingcheng
        }
      }).then(({data}) => {
        if (data && data.code === 0) {
          this.statsList = data.data
        }
      })
    },

    // 企业平均分统计图表
    chartDialog() {
      this.chartVisiable = true
      this.$nextTick(() => {
        this.$http({
          url: 'qiyepingjia/stats',
          method: 'get',
          params: {
            qiyezhanghao: this.searchForm.qiyezhanghao,
            qiyemingcheng: this.searchForm.qiyemingcheng
          }
        }).then(({data}) => {
          if (data && data.code === 0) {
            const statsData = data.data
            // 筛选有评分的企业（评价人数>=5）
            const validData = statsData.filter(item => item.pingjiarenshu >= 5)
            // 按平均分升序排序，让低分企业也能显示
            validData.sort((a, b) => parseFloat(a.pingjunfen) - parseFloat(b.pingjunfen))
            // 取前20个企业展示（现在包含低分企业）
            const displayData = validData.slice(0, 20)
            
            const qiyeNames = displayData.map(item => item.qiyemingcheng)
            const pingfens = displayData.map(item => parseFloat(item.pingjunfen))
            const renshus = displayData.map(item => item.pingjiarenshu)
            
            const chart = echarts.init(document.getElementById('pingfenChart'), 'fresh-cut')
            const option = {
              title: {
                text: '企业平均分统计（评价人数≥5人，按评分升序）',
                left: 'center'
              },
              tooltip: {
                trigger: 'axis',
                axisPointer: {
                  type: 'shadow'
                },
                formatter: function(params) {
                  let result = params[0].name + '<br/>'
                  params.forEach(item => {
                    if (item.seriesName === '平均分') {
                      result += item.marker + ' ' + item.seriesName + ': ' + item.value + '分<br/>'
                    } else {
                      result += item.marker + ' ' + item.seriesName + ': ' + item.value + '人<br/>'
                    }
                  })
                  return result
                }
              },
              legend: {
                data: ['平均分', '评价人数'],
                top: 30
              },
              grid: {
                left: '3%',
                right: '4%',
                bottom: '35%',
                top: '10%',
                containLabel: true
              },
              xAxis: {
                type: 'category',
                data: qiyeNames,
                axisLabel: {
                  interval: 0,
                  rotate: 70,
                  fontSize: 7,
                  formatter: function(value) {
                    // 企业名称过长时截断显示
                    if (value.length > 8) {
                      return value.substring(0, 8) + '...'
                    }
                    return value
                  }
                }
              },
              yAxis: [
                {
                  type: 'value',
                  name: '平均分',
                  min: 0,
                  max: 5,
                  position: 'left',
                  axisLabel: {
                    formatter: '{value}分'
                  }
                },
                {
                  type: 'value',
                  name: '评价人数',
                  position: 'right',
                  axisLabel: {
                    formatter: '{value}人'
                  }
                }
              ],
              series: [
                {
                  name: '平均分',
                  type: 'bar',
                  data: pingfens,
                  itemStyle: {
                    color: '#C98777'
                  },
                  label: {
                    show: true,
                    position: 'top',
                    formatter: '{c}分'
                  }
                },
                {
                  name: '评价人数',
                  type: 'line',
                  yAxisIndex: 1,
                  data: renshus,
                  itemStyle: {
                    color: '#67C23A'
                  },
                  label: {
                    show: true,
                    position: 'top',
                    formatter: '{c}人'
                  }
                }
              ]
            }
            chart.setOption(option)
            window.addEventListener('resize', () => {
              chart.resize()
            })
          }
        })
      })
    },
    sizeChangeHandle(val) {
      this.pageSize = val
      this.pageIndex = 1
      this.getDataList()
    },
    currentChangeHandle(val) {
      this.pageIndex = val
      this.getDataList()
    },
    selectionChangeHandler(val) {
      this.dataListSelections = val
    },
    deleteHandler(id) {
      const ids = id ? [Number(id)] : this.dataListSelections.map(item => Number(item.id))
      this.$confirm(`确定进行[${id ? '删除' : '批量删除'}]操作?`, '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.$http({
          url: 'qiyepingjia/delete',
          method: 'post',
          data: ids
        }).then(({data}) => {
          if (data && data.code === 0) {
            this.$message({
              message: '操作成功',
              type: 'success',
              duration: 1500,
              onClose: () => {
                this.getDataList()
              }
            })
          } else {
            this.$message.error(data.msg)
          }
        })
      })
    }
  }
}
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

	.center-form-pv .search-row > div {
		display: flex;
		flex-wrap: nowrap;
		align-items: center;
		white-space: nowrap;
	}

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

	.center-form-pv .search-row /deep/ .search.el-button--success {
				border-color: #B7B894 !important;
				background: linear-gradient(to bottom, #C9CAA8 0%,#B7B894 100%) !important;
				color: #fff !important;
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

	.center-form-pv .actions /deep/ .del.el-button--danger {
				border-color: #DC9A80 !important;
				background: #DC9A80 !important;
				color: #fff !important;
			}



	.center-form-pv .actions .stat-btn {
				border: 1px solid rgb(155, 151, 146);
				cursor: pointer;
				padding: 16px 15px;
				margin: 4px 4px 5px;
				color: inherit;
				font-size: inherit;
				transition: all 0.3s;
				border-radius: 3px;
				box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2);
				text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
				background: rgb(155, 151, 146);
				width: auto;
				min-width: 70px;
				height: auto;
			}

	.center-form-pv .actions .stat-btn:hover {
				transform: scale(1.09) rotate(3deg);
			}

	.center-form-pv .actions /deep/ .stat-btn.el-button--success {
				border-color: rgb(155, 151, 146) !important;
				background: rgb(155, 151, 146) !important;
				color: #fff !important;
			}

	.center-form-pv .actions /deep/ .stat-btn.el-button--success:hover {
				border-color: rgb(155, 151, 146) !important;
				background: rgb(155, 151, 146) !important;
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

	.el-table /deep/ .el-table__body-wrapper tbody tr td .del.el-button--danger {
				border-color: #DC9A80 !important;
				background: #DC9A80 !important;
			}

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
				color: #fff;
				background: rgb(72, 121, 141);
			}

	.main-content .el-pagination /deep/ .el-pager .number.active {
				color: #fff;
				background: rgb(72, 121, 141);
			}

	.main-content .el-pagination.is-background /deep/ .el-pager li.number {
				color: #606266;
				font-size: 13px;
				line-height: 28px;
				min-width: 30px;
			}

	.main-content .el-pagination.is-background /deep/ .el-pager li.number.active {
				background-color: rgb(72, 121, 141) !important;
				color: #fff !important;
				font-size: 13px !important;
				line-height: 28px !important;
				min-width: 30px !important;
			}

	.main-content .el-pagination.is-background /deep/ .el-pager li.number:not(.disabled):hover {
				color: rgb(72, 121, 141);
			}
</style>
