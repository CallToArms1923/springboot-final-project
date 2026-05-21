package com.entity;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 企业评分评价
 */
@TableName("qiyepingjia")
public class QiyepingjiaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;

	public QiyepingjiaEntity() {
	}

	public QiyepingjiaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
	}

	@TableId(type = IdType.AUTO)
	private Long id;

	private String qiyezhanghao;

	private String qiyemingcheng;

	private String xuehao;

	private String xingming;

	private Integer pingfen;

	private String pingjianeirong;

	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getQiyezhanghao() {
		return qiyezhanghao;
	}

	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}

	public String getQiyemingcheng() {
		return qiyemingcheng;
	}

	public void setQiyemingcheng(String qiyemingcheng) {
		this.qiyemingcheng = qiyemingcheng;
	}

	public String getXuehao() {
		return xuehao;
	}

	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	public Integer getPingfen() {
		return pingfen;
	}

	public void setPingfen(Integer pingfen) {
		this.pingfen = pingfen;
	}

	public String getPingjianeirong() {
		return pingjianeirong;
	}

	public void setPingjianeirong(String pingjianeirong) {
		this.pingjianeirong = pingjianeirong;
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
}
