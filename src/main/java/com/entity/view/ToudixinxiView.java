package com.entity.view;

import com.entity.ToudixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 投递信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author Developer
 */
@TableName("toudixinxi")
public class ToudixinxiView extends ToudixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory.getLogger(ToudixinxiView.class);

	public ToudixinxiView(){
	}
 
 	public ToudixinxiView(ToudixinxiEntity toudixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, toudixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			logger.error("Failed to copy properties from ToudixinxiEntity", e);
		}
 		
	}


}
