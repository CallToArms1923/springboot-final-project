package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 面试通知
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
@TableName("mianshitongzhi")
public class MianshitongzhiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public MianshitongzhiEntity() {
		
	}
	
	public MianshitongzhiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
    @TableId(type = IdType.AUTO)
    private Long id;
	/**
	 * 兼职名称
	 */
					
	private String jianzhimingcheng;
	
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
	 * 负责人
	 */
					
	private String fuzeren;
	
	/**
	 * 面试日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	 * 手机号
	 */
					
	private String mobile;
	
	/**
	 * 面试备注
	 */
					
	private String mianshibeizhu;
	
	/**
	 * 操作日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date caozuoriqi;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：兼职名称
	 */
	public void setJianzhimingcheng(String jianzhimingcheng) {
		this.jianzhimingcheng = jianzhimingcheng;
	}
	/**
	 * 获取：兼职名称
	 */
	public String getJianzhimingcheng() {
		return jianzhimingcheng;
	}
	/**
	 * 设置：兼职封面
	 */
	public void setJianzhifengmian(String jianzhifengmian) {
		this.jianzhifengmian = jianzhifengmian;
	}
	/**
	 * 获取：兼职封面
	 */
	public String getJianzhifengmian() {
		return jianzhifengmian;
	}
	/**
	 * 设置：兼职分类
	 */
	public void setJianzhifenlei(String jianzhifenlei) {
		this.jianzhifenlei = jianzhifenlei;
	}
	/**
	 * 获取：兼职分类
	 */
	public String getJianzhifenlei() {
		return jianzhifenlei;
	}
	/**
	 * 设置：企业账号
	 */
	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}
	/**
	 * 获取：企业账号
	 */
	public String getQiyezhanghao() {
		return qiyezhanghao;
	}
	/**
	 * 设置：企业名称
	 */
	public void setQiyemingcheng(String qiyemingcheng) {
		this.qiyemingcheng = qiyemingcheng;
	}
	/**
	 * 获取：企业名称
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
	 * 设置：面试日期
	 */
	public void setMianshiriqi(Date mianshiriqi) {
		this.mianshiriqi = mianshiriqi;
	}
	/**
	 * 获取：面试日期
	 */
	public Date getMianshiriqi() {
		return mianshiriqi;
	}
	/**
	 * 设置：类型
	 */
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	/**
	 * 获取：类型
	 */
	public String getLeixing() {
		return leixing;
	}
	/**
	 * 设置：面试地点
	 */
	public void setMianshididian(String mianshididian) {
		this.mianshididian = mianshididian;
	}
	/**
	 * 获取：面试地点
	 */
	public String getMianshididian() {
		return mianshididian;
	}
	/**
	 * 设置：账号
	 */
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	/**
	 * 获取：账号
	 */
	public String getXuehao() {
		return xuehao;
	}
	/**
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
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
	 * 设置：面试备注
	 */
	public void setMianshibeizhu(String mianshibeizhu) {
		this.mianshibeizhu = mianshibeizhu;
	}
	/**
	 * 获取：面试备注
	 */
	public String getMianshibeizhu() {
		return mianshibeizhu;
	}
	/**
	 * 设置：操作日期
	 */
	public void setCaozuoriqi(Date caozuoriqi) {
		this.caozuoriqi = caozuoriqi;
	}
	/**
	 * 获取：操作日期
	 */
	public Date getCaozuoriqi() {
		return caozuoriqi;
	}

}
