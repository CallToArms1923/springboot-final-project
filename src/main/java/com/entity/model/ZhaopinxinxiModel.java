package com.entity.model;

import com.entity.ZhaopinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 招聘信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了�?
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public class ZhaopinxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 兼职封面
	 */
	
	private String jianzhifengmian;
		
	/**
	 * 兼职分类
	 */
	
	private String jianzhifenlei;
		
	/**
	 * 学历要求
	 */
	
	private String xueliyaoqiu;
		
	/**
	 * 招聘人数
	 */
	
	private Integer zhaopinrenshu;
		
	/**
	 * 职责
	 */
	
	private String zhize;
		
	/**
	 * 兼职地址
	 */
	
	private String jianzhidizhi;
		
	/**
	 * 薪酬待遇
	 */
	
	private Double xinchoudaiyu;
		
	/**
	 * 职位要求
	 */
	
	private String zhiweiyaoqiu;
		
	/**
	 * 企业账号
	 */
	
	private String qiyezhanghao;
		
	/**
	 * 企业名称
	 */
	
	private String qiyemingcheng;
		
	/**
	 * 负责�?
	 */
	
	private String fuzeren;
		
	/**
	 * 联系手机
	 */
	
	private String lianxishouji;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
		
	/**
	 * 最近点击时�?
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
		
	/**
	 * 收藏�?
	 */
	
	private Integer storeupnum;
				
	
	/**
	 * 设置：兼职封�?
	 */
	 
	public void setJianzhifengmian(String jianzhifengmian) {
		this.jianzhifengmian = jianzhifengmian;
	}
	
	/**
	 * 获取：兼职封�?
	 */
	public String getJianzhifengmian() {
		return jianzhifengmian;
	}
				
	
	/**
	 * 设置：兼职分�?
	 */
	 
	public void setJianzhifenlei(String jianzhifenlei) {
		this.jianzhifenlei = jianzhifenlei;
	}
	
	/**
	 * 获取：兼职分�?
	 */
	public String getJianzhifenlei() {
		return jianzhifenlei;
	}
				
	
	/**
	 * 设置：学历要�?
	 */
	 
	public void setXueliyaoqiu(String xueliyaoqiu) {
		this.xueliyaoqiu = xueliyaoqiu;
	}
	
	/**
	 * 获取：学历要�?
	 */
	public String getXueliyaoqiu() {
		return xueliyaoqiu;
	}
				
	
	/**
	 * 设置：招聘人�?
	 */
	 
	public void setZhaopinrenshu(Integer zhaopinrenshu) {
		this.zhaopinrenshu = zhaopinrenshu;
	}
	
	/**
	 * 获取：招聘人�?
	 */
	public Integer getZhaopinrenshu() {
		return zhaopinrenshu;
	}
				
	
	/**
	 * 设置：职�?
	 */
	 
	public void setZhize(String zhize) {
		this.zhize = zhize;
	}
	
	/**
	 * 获取：职�?
	 */
	public String getZhize() {
		return zhize;
	}
				
	
	/**
	 * 设置：兼职地址
	 */
	 
	public void setJianzhidizhi(String jianzhidizhi) {
		this.jianzhidizhi = jianzhidizhi;
	}
	
	/**
	 * 获取：兼职地址
	 */
	public String getJianzhidizhi() {
		return jianzhidizhi;
	}
				
	
	/**
	 * 设置：薪酬待�?
	 */
	 
	public void setXinchoudaiyu(Double xinchoudaiyu) {
		this.xinchoudaiyu = xinchoudaiyu;
	}
	
	/**
	 * 获取：薪酬待�?
	 */
	public Double getXinchoudaiyu() {
		return xinchoudaiyu;
	}
				
	
	/**
	 * 设置：职位要�?
	 */
	 
	public void setZhiweiyaoqiu(String zhiweiyaoqiu) {
		this.zhiweiyaoqiu = zhiweiyaoqiu;
	}
	
	/**
	 * 获取：职位要�?
	 */
	public String getZhiweiyaoqiu() {
		return zhiweiyaoqiu;
	}
				
	
	/**
	 * 设置：企业账�?
	 */
	 
	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}
	
	/**
	 * 获取：企业账�?
	 */
	public String getQiyezhanghao() {
		return qiyezhanghao;
	}
				
	
	/**
	 * 设置：企业名�?
	 */
	 
	public void setQiyemingcheng(String qiyemingcheng) {
		this.qiyemingcheng = qiyemingcheng;
	}
	
	/**
	 * 获取：企业名�?
	 */
	public String getQiyemingcheng() {
		return qiyemingcheng;
	}
				
	
	/**
	 * 设置：负责人
	 */
	 
	public void setFuzeren(String fuzeren) {
		this.fuzeren = fuzeren;
	}
	
	/**
	 * 获取：负责人
	 */
	public String getFuzeren() {
		return fuzeren;
	}
				
	
	/**
	 * 设置：联系手�?
	 */
	 
	public void setLianxishouji(String lianxishouji) {
		this.lianxishouji = lianxishouji;
	}
	
	/**
	 * 获取：联系手�?
	 */
	public String getLianxishouji() {
		return lianxishouji;
	}
				
	
	/**
	 * 设置：发布日�?
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日�?
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
				
	
	/**
	 * 设置：最近点击时�?
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时�?
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次�?
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次�?
	 */
	public Integer getClicknum() {
		return clicknum;
	}
				
	
	/**
	 * 设置：收藏数
	 */
	 
	public void setStoreupnum(Integer storeupnum) {
		this.storeupnum = storeupnum;
	}
	
	/**
	 * 获取：收藏数
	 */
	public Integer getStoreupnum() {
		return storeupnum;
	}
			
}
