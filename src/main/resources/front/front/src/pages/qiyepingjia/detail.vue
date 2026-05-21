<template>
  <div>
    <div :style='{"padding":"20px","margin":"0px auto","borderColor":"#d3d3d3","borderRadius":"0px","background":"#fff","borderWidth":"0 1px","width":"980px","borderStyle":"solid"}' class="breadcrumb-preview">
      <el-breadcrumb :separator="'='" :style='{"fontSize":"14px","lineHeight":"1","justifyContent":"flex-start","display":"flex"}'>
        <el-breadcrumb-item class="item1" to="/"><a>首页</a></el-breadcrumb-item>
        <el-breadcrumb-item class="item2"><a>企业评价</a></el-breadcrumb-item>
        <el-breadcrumb-item class="item2"><a>{{detail.qiyemingcheng}}</a></el-breadcrumb-item>
      </el-breadcrumb>
    </div>

    <div :style='{"padding":"20px","margin":"0px auto","borderColor":"#d3d3d3","background":"#fff","borderWidth":"0 1px","width":"980px","borderStyle":"solid"}'>
      <div :style='{"display":"flex","justifyContent":"space-between","alignItems":"flex-start","borderColor":"#eee","borderWidth":"0 0 1px","borderStyle":"solid","padding":"0 0 20px"}'>
        <div :style='{"flex":"1","minWidth":"0"}'>
          <h2 :style='{"fontSize":"24px","lineHeight":"34px","margin":"0 0 10px","color":"#333"}'>{{detail.qiyemingcheng}}</h2>
          <div :style='{"fontSize":"14px","lineHeight":"28px","color":"#666"}'>企业账号：{{detail.qiyezhanghao}}</div>
          <div :style='{"fontSize":"14px","lineHeight":"28px","color":"#666"}'>企业地址：{{detail.qiyedizhi}}</div>
          <div :style='{"fontSize":"14px","lineHeight":"28px","color":"#666"}'>负责人：{{detail.fuzeren}}</div>
        </div>
        <div :style='{"width":"240px","textAlign":"right"}'>
          <template v-if="summary.pingjiarenshu >= 5">
            <el-rate disabled v-model="summary.xingji" :colors="rateColors"></el-rate>
            <div :style='{"marginTop":"8px","fontSize":"24px","fontWeight":"700","color":"#C98777"}'>{{summary.pingjunfen}} 分</div>
            <div :style='{"fontSize":"13px","lineHeight":"24px","color":"#999"}'>{{summary.pingjiarenshu}}人评价</div>
          </template>
          <template v-else>
            <div :style='{"fontSize":"22px","lineHeight":"34px","color":"#999"}'>暂无评分</div>
            <div :style='{"fontSize":"13px","lineHeight":"24px","color":"#999"}'>评价人数不足5人</div>
          </template>
        </div>
      </div>

      <div :style='{"padding":"20px 0","borderColor":"#eee","borderWidth":"0 0 1px","borderStyle":"solid"}'>
        <div :style='{"fontSize":"20px","lineHeight":"30px","fontWeight":"600","color":"#333","margin":"0 0 15px"}'>我要评价</div>
        <div v-if="canSubmit" class="review-form">
          <div class="douban-rate" :style='{"display":"flex","alignItems":"center","margin":"0 0 15px"}'>
            <span :style='{"fontSize":"14px","color":"#666","marginRight":"10px"}'>综合评分：</span>
            <el-rate v-model="reviewForm.pingfen" :colors="rateColors" show-text :texts="rateTexts"></el-rate>
          </div>
          <el-input type="textarea" :rows="4" v-model="reviewForm.pingjianeirong" maxlength="500" show-word-limit placeholder="请填写真实评价内容"></el-input>
          <el-button :style='{"cursor":"pointer","border":"1px solid #712122","padding":"0px 18px","margin":"15px 0 0","color":"#fff","borderRadius":"4px","background":"#C98777","fontSize":"14px","lineHeight":"36px","height":"36px"}' type="primary" @click="submitReview">提交评价</el-button>
        </div>
        <el-alert v-else :title="submitMessage" type="warning" :closable="false"></el-alert>
      </div>

      <div :style='{"padding":"20px 0 0"}'>
        <div :style='{"fontSize":"20px","lineHeight":"30px","fontWeight":"600","color":"#333","margin":"0 0 15px"}'>用户评价</div>
        <div v-if="reviewList.length">
          <div v-for="item in reviewList" :key="item.id" :style='{"padding":"15px 0","borderColor":"#eee","borderWidth":"0 0 1px","borderStyle":"solid"}'>
            <div :style='{"display":"flex","justifyContent":"space-between","alignItems":"center","margin":"0 0 8px"}'>
              <div :style='{"fontSize":"15px","fontWeight":"600","color":"#333"}'>{{item.xingming}}（{{item.xuehao}}）</div>
              <div :style='{"fontSize":"13px","color":"#999"}'>{{item.addtime}}</div>
            </div>
            <el-rate disabled v-model="item.pingfen" :colors="rateColors"></el-rate>
            <div :style='{"fontSize":"14px","lineHeight":"26px","color":"#555","margin":"8px 0 0","whiteSpace":"pre-wrap"}'>{{item.pingjianeirong}}</div>
          </div>
        </div>
        <el-empty v-else description="暂无评价"></el-empty>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      detail: {},
      summary: {
        pingjiarenshu: 0,
        pingjunfen: 0,
        xingji: 0
      },
      reviewList: [],
      canSubmit: false,
      submitMessage: '仅投递过该企业岗位的用户可以评价',
      reviewForm: {
        pingfen: 0,
        pingjianeirong: ''
      },
      rateColors: ['#F7BA2A', '#F7BA2A', '#F7BA2A'],
      rateTexts: ['很差', '较差', '一般', '推荐', '力荐']
    }
  },
  created() {
    this.getDetail()
  },
  methods: {
    getDetail() {
      this.$http.get('zhaopingongsi/detail/' + this.$route.query.id).then(res => {
        if (res.data.code === 0) {
          this.detail = res.data.data
          this.getSummary()
          this.getReviews()
          this.getCanSubmit()
        }
      })
    },
    getSummary() {
      this.$http.get('qiyepingjia/summary', {params: {qiyezhanghao: this.detail.qiyezhanghao}}).then(res => {
        if (res.data.code === 0) {
          this.summary = res.data.data
        }
      })
    },
    getReviews() {
      this.$http.get('qiyepingjia/list', {params: {
        page: 1,
        limit: 1000,
        qiyezhanghao: this.detail.qiyezhanghao,
        sort: 'addtime',
        order: 'desc'
      }}).then(res => {
        if (res.data.code === 0) {
          this.reviewList = res.data.data.list
        }
      })
    },
    getCanSubmit() {
      if (!localStorage.getItem('frontToken')) {
        this.canSubmit = false
        this.submitMessage = '请先登录用户账号后再评价'
        return
      }
      this.$http.get('qiyepingjia/canSubmit', {params: {qiyezhanghao: this.detail.qiyezhanghao}}).then(res => {
        if (res.data.code === 0) {
          this.canSubmit = res.data.canSubmit
          this.submitMessage = res.data.message
        }
      })
    },
    submitReview() {
      if (!this.reviewForm.pingfen) {
        this.$message.warning('请选择评分')
        return
      }
      if (!this.reviewForm.pingjianeirong || !this.reviewForm.pingjianeirong.trim()) {
        this.$message.warning('请输入评价内容')
        return
      }
      const data = {
        qiyezhanghao: this.detail.qiyezhanghao,
        qiyemingcheng: this.detail.qiyemingcheng,
        pingfen: this.reviewForm.pingfen,
        pingjianeirong: this.reviewForm.pingjianeirong
      }
      this.$http.post('qiyepingjia/submit', data).then(res => {
        if (res.data.code === 0) {
          this.$message.success('评价提交成功')
          this.reviewForm.pingfen = 0
          this.reviewForm.pingjianeirong = ''
          this.getSummary()
          this.getReviews()
          this.getCanSubmit()
        } else {
          this.$message.error(res.data.msg)
        }
      })
    }
  }
}
</script>

<style scoped>
.douban-rate /deep/ .el-rate__icon {
  font-size: 26px;
  margin-right: 4px;
}
</style>
