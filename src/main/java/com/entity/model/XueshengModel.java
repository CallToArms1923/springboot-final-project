package com.entity.model;

import com.entity.XueshengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 用户
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了�?
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public class XueshengModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 年龄
	 */
	
	private Integer nianling;
		
	/**
	 * 学历
	 */
	
	private String xueli;
		
	/**
	 * 学校
	 */
	
	private String xuexiao;
		
	/**
	 * 头像
	 */
	
	private String touxiang;
		
	/**
	 * 手机�?
	 */
	
	private String mobile;
				
	
	/**
	 * 设置：密�?
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密�?
	 */
	public String getMima() {
		return mima;
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
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：年�?
	 */
	 
	public void setNianling(Integer nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年�?
	 */
	public Integer getNianling() {
		return nianling;
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
	 * 设置：头�?
	 */
	 
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	
	/**
	 * 获取：头�?
	 */
	public String getTouxiang() {
		return touxiang;
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
			
}
