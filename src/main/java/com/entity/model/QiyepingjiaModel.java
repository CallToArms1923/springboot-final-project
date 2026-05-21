package com.entity.model;

import java.io.Serializable;

/**
 * 企业评分评价
 */
public class QiyepingjiaModel implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;
	private String qiyezhanghao;
	private String qiyemingcheng;
	private String xuehao;
	private String xingming;
	private Integer pingfen;
	private String pingjianeirong;

	public Long getId() { return id; }
	public void setId(Long id) { this.id = id; }
	public String getQiyezhanghao() { return qiyezhanghao; }
	public void setQiyezhanghao(String qiyezhanghao) { this.qiyezhanghao = qiyezhanghao; }
	public String getQiyemingcheng() { return qiyemingcheng; }
	public void setQiyemingcheng(String qiyemingcheng) { this.qiyemingcheng = qiyemingcheng; }
	public String getXuehao() { return xuehao; }
	public void setXuehao(String xuehao) { this.xuehao = xuehao; }
	public String getXingming() { return xingming; }
	public void setXingming(String xingming) { this.xingming = xingming; }
	public Integer getPingfen() { return pingfen; }
	public void setPingfen(Integer pingfen) { this.pingfen = pingfen; }
	public String getPingjianeirong() { return pingjianeirong; }
	public void setPingjianeirong(String pingjianeirong) { this.pingjianeirong = pingjianeirong; }
}
