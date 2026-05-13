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
 * 投递信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
@TableName("toudixinxi")
public class ToudixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ToudixinxiEntity() {
		
	}
	
	public ToudixinxiEntity(T t) {
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
	 * 手机号
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
	 * 简历附件
	 */
					
	private String jianlifujian;
	
	/**
	 * 简历类型(0:附件简历,1:在线简历)
	 */
					
	private Integer jianlileixing;
	
	/**
	 * 投递备注
	 */
					
	private String toudibeizhu;
	
	/**
	 * 投递日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	 * 设置：应聘人数
	 */
	public void setZhaopinrenshu(Integer zhaopinrenshu) {
		this.zhaopinrenshu = zhaopinrenshu;
	}
	/**
	 * 获取：应聘人数
	 */
	public Integer getZhaopinrenshu() {
		return zhaopinrenshu;
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
	 * 设置：学历
	 */
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	/**
	 * 获取：学历
	 */
	public String getXueli() {
		return xueli;
	}
	/**
	 * 设置：学校
	 */
	public void setXuexiao(String xuexiao) {
		this.xuexiao = xuexiao;
	}
	/**
	 * 获取：学校
	 */
	public String getXuexiao() {
		return xuexiao;
	}
	/**
	 * 设置：简历附件
	 */
	public void setJianlifujian(String jianlifujian) {
		this.jianlifujian = jianlifujian;
	}
	/**
	 * 获取：简历附件
	 */
	public String getJianlifujian() {
		return jianlifujian;
	}
	/**
	 * 设置：投递备注
	 */
	public void setToudibeizhu(String toudibeizhu) {
		this.toudibeizhu = toudibeizhu;
	}
	/**
	 * 获取：投递备注
	 */
	public String getToudibeizhu() {
		return toudibeizhu;
	}
	/**
	 * 设置：投递日期
	 */
	public void setToudiriqi(Date toudiriqi) {
		this.toudiriqi = toudiriqi;
	}
	/**
	 * 获取：投递日期
	 */
	public Date getToudiriqi() {
		return toudiriqi;
	}
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
	/**
	 * 设置：简历类型
	 */
	public void setJianlileixing(Integer jianlileixing) {
		this.jianlileixing = jianlileixing;
	}
	/**
	 * 获取：简历类型
	 */
	public Integer getJianlileixing() {
		return jianlileixing;
	}

}
