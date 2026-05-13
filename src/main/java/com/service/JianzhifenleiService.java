package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JianzhifenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JianzhifenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JianzhifenleiView;


/**
 * 兼职分类
 *
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public interface JianzhifenleiService extends IService<JianzhifenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JianzhifenleiVO> selectListVO(Wrapper<JianzhifenleiEntity> wrapper);
   	
   	JianzhifenleiVO selectVO(@Param("ew") Wrapper<JianzhifenleiEntity> wrapper);
   	
   	List<JianzhifenleiView> selectListView(Wrapper<JianzhifenleiEntity> wrapper);
   	
   	JianzhifenleiView selectView(@Param("ew") Wrapper<JianzhifenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JianzhifenleiEntity> wrapper);

   	

}

