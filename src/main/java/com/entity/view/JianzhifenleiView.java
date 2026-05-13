package com.entity.view;

import com.entity.JianzhifenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 兼职分类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
@TableName("jianzhifenlei")
public class JianzhifenleiView  extends JianzhifenleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JianzhifenleiView(){
	}
 
 	public JianzhifenleiView(JianzhifenleiEntity jianzhifenleiEntity){
 	try {
			BeanUtils.copyProperties(this, jianzhifenleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
