package com.entity.model;

import com.entity.ToudixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 投递信�?
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了�?
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public class ToudixinxiModel  implements Serializable {
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
	 * 应聘人数
	 */
	
	private Integer zhaopinrenshu;
		
	/**
	 * 账号
	 */
	
	private String xuehao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 手机�?
	 */
	
	private String mobile;
		
	/**
	 * 学历
	 */
	
	private String xueli;
		
	/**
	 * 学校
	 */
	
	private String xuexiao;
		
	/**
	 * 简历附�?
	 */
	
	private String jianlifujian;
		
	/**
	 * 投递备�?
	 */
	
	private String toudibeizhu;
		
	/**
	 * 投递日�?
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date toudiriqi;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
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
	 * 设置：应聘人�?
	 */
	 
	public void setZhaopinrenshu(Integer zhaopinrenshu) {
		this.zhaopinrenshu = zhaopinrenshu;
	}
	
	/**
	 * 获取：应聘人�?
	 */
	public Integer getZhaopinrenshu() {
		return zhaopinrenshu;
	}
				
	
	/**
	 * 设置：账�?
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：账�?
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：姓�?
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓�?
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：手机号
	 */
	 
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	/**
	 * 获取：手机号
	 */
	public String getMobile() {
		return mobile;
	}
				
	
	/**
	 * 设置：学�?
	 */
	 
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	
	/**
	 * 获取：学�?
	 */
	public String getXueli() {
		return xueli;
	}
				
	
	/**
	 * 设置：学�?
	 */
	 
	public void setXuexiao(String xuexiao) {
		this.xuexiao = xuexiao;
	}
	
	/**
	 * 获取：学�?
	 */
	public String getXuexiao() {
		return xuexiao;
	}
				
	
	/**
	 * 设置：简历附�?
	 */
	 
	public void setJianlifujian(String jianlifujian) {
		this.jianlifujian = jianlifujian;
	}
	
	/**
	 * 获取：简历附�?
	 */
	public String getJianlifujian() {
		return jianlifujian;
	}
				
	
	/**
	 * 设置：投递备�?
	 */
	 
	public void setToudibeizhu(String toudibeizhu) {
		this.toudibeizhu = toudibeizhu;
	}
	
	/**
	 * 获取：投递备�?
	 */
	public String getToudibeizhu() {
		return toudibeizhu;
	}
				
	
	/**
	 * 设置：投递日�?
	 */
	 
	public void setToudiriqi(Date toudiriqi) {
		this.toudiriqi = toudiriqi;
	}
	
	/**
	 * 获取：投递日�?
	 */
	public Date getToudiriqi() {
		return toudiriqi;
	}
				
	
	/**
	 * 设置：是否审�?
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审�?
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回�?
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回�?
	 */
	public String getShhf() {
		return shhf;
	}
			
}
