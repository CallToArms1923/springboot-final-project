package com.entity.model;

import com.entity.MianshitongzhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 面试通知
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了�?
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public class MianshitongzhiModel  implements Serializable {
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
	 * 面试日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date mianshiriqi;
		
	/**
	 * 类型
	 */
	
	private String leixing;
		
	/**
	 * 面试地点
	 */
	
	private String mianshididian;
		
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
	 * 面试备注
	 */
	
	private String mianshibeizhu;
		
	/**
	 * 操作日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date caozuoriqi;
		
	/**
	 * 回复内容
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
	 * 设置：面试日�?
	 */
	 
	public void setMianshiriqi(Date mianshiriqi) {
		this.mianshiriqi = mianshiriqi;
	}
	
	/**
	 * 获取：面试日�?
	 */
	public Date getMianshiriqi() {
		return mianshiriqi;
	}
				
	
	/**
	 * 设置：类�?
	 */
	 
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	
	/**
	 * 获取：类�?
	 */
	public String getLeixing() {
		return leixing;
	}
				
	
	/**
	 * 设置：面试地�?
	 */
	 
	public void setMianshididian(String mianshididian) {
		this.mianshididian = mianshididian;
	}
	
	/**
	 * 获取：面试地�?
	 */
	public String getMianshididian() {
		return mianshididian;
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
	 * 设置：面试备�?
	 */
	 
	public void setMianshibeizhu(String mianshibeizhu) {
		this.mianshibeizhu = mianshibeizhu;
	}
	
	/**
	 * 获取：面试备�?
	 */
	public String getMianshibeizhu() {
		return mianshibeizhu;
	}
				
	
	/**
	 * 设置：操作日�?
	 */
	 
	public void setCaozuoriqi(Date caozuoriqi) {
		this.caozuoriqi = caozuoriqi;
	}
	
	/**
	 * 获取：操作日�?
	 */
	public Date getCaozuoriqi() {
		return caozuoriqi;
	}
				
	
	/**
	 * 设置：回复内�?
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：回复内�?
	 */
	public String getShhf() {
		return shhf;
	}
			
}
