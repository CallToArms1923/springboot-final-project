package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;

/**
 * 学生在线简历
 */
@TableName("xueshengjianli")
public class XueshengjianliEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;

    public XueshengjianliEntity() {
    }

    public XueshengjianliEntity(T t) {
        try {
            BeanUtils.copyProperties(this, t);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    /**
     * 主键
     */
    @TableId
    private Long id;

    /**
     * 创建时间
     */
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat
    private Date addtime;

    /**
     * 学号(账号)
     */
    private String xuehao;

    /**
     * 个人优势
     */
    private String gerenyoushi;

    /**
     * 外语水平
     */
    private String waiyushuiping;

    /**
     * 求职状态
     */
    private String qiuzhizhuangtai;

    /**
     * 实习/工作经历
     */
    private String shixijingli;

    /**
     * 教育经历
     */
    private String jiaoyujingli;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public String getXuehao() {
        return xuehao;
    }

    public void setXuehao(String xuehao) {
        this.xuehao = xuehao;
    }

    public String getGerenyoushi() {
        return gerenyoushi;
    }

    public void setGerenyoushi(String gerenyoushi) {
        this.gerenyoushi = gerenyoushi;
    }

    public String getWaiyushuiping() {
        return waiyushuiping;
    }

    public void setWaiyushuiping(String waiyushuiping) {
        this.waiyushuiping = waiyushuiping;
    }

    public String getQiuzhizhuangtai() {
        return qiuzhizhuangtai;
    }

    public void setQiuzhizhuangtai(String qiuzhizhuangtai) {
        this.qiuzhizhuangtai = qiuzhizhuangtai;
    }

    public String getShixijingli() {
        return shixijingli;
    }

    public void setShixijingli(String shixijingli) {
        this.shixijingli = shixijingli;
    }

    public String getJiaoyujingli() {
        return jiaoyujingli;
    }

    public void setJiaoyujingli(String jiaoyujingli) {
        this.jiaoyujingli = jiaoyujingli;
    }
}
