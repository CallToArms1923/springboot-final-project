package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XueshengjianliEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;


/**
 * 学生在线简历
 */
public interface XueshengjianliService extends IService<XueshengjianliEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XueshengjianliEntity> selectListVO(Wrapper<XueshengjianliEntity> wrapper);
   	
   	XueshengjianliEntity selectVO(@Param("ew") Wrapper<XueshengjianliEntity> wrapper);
   	
   	List<XueshengjianliEntity> selectListView(Wrapper<XueshengjianliEntity> wrapper);
   	
   	XueshengjianliEntity selectView(@Param("ew") Wrapper<XueshengjianliEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XueshengjianliEntity> wrapper);
}
