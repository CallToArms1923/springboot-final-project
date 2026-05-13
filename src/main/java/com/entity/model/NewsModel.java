package com.entity.model;

import com.entity.NewsEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 招聘资讯
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了�?
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-02-29 16:04:10
 */
public class NewsModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 简�?
	 */
	
	private String introduction;
		
	/**
	 * 分类名称
	 */
	
	private String typename;
		
	/**
	 * 发布�?
	 */
	
	private String name;
		
	/**
	 * 头像
	 */
	
	private String headportrait;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
		
	/**
	 * 最近点击时�?
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * �?
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * �?
	 */
	
	private Integer crazilynum;
		
	/**
	 * 收藏�?
	 */
	
	private Integer storeupnum;
		
	/**
	 * 图片
	 */
	
	private String picture;
		
	/**
	 * 内容
	 */
	
	private String content;
				
	
	/**
	 * 设置：简�?
	 */
	 
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	/**
	 * 获取：简�?
	 */
	public String getIntroduction() {
		return introduction;
	}
				
	
	/**
	 * 设置：分类名�?
	 */
	 
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
	/**
	 * 获取：分类名�?
	 */
	public String getTypename() {
		return typename;
	}
				
	
	/**
	 * 设置：发布人
	 */
	 
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * 获取：发布人
	 */
	public String getName() {
		return name;
	}
				
	
	/**
	 * 设置：头�?
	 */
	 
	public void setHeadportrait(String headportrait) {
		this.headportrait = headportrait;
	}
	
	/**
	 * 获取：头�?
	 */
	public String getHeadportrait() {
		return headportrait;
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
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
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
				
	
	/**
	 * 设置：图�?
	 */
	 
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	/**
	 * 获取：图�?
	 */
	public String getPicture() {
		return picture;
	}
				
	
	/**
	 * 设置：内�?
	 */
	 
	public void setContent(String content) {
		this.content = content;
	}
	
	/**
	 * 获取：内�?
	 */
	public String getContent() {
		return content;
	}
			
}
