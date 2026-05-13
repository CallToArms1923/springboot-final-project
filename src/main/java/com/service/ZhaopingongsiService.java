package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhaopingongsiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhaopingongsiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhaopingongsiView;


/**
 * 招聘公司
 *
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public interface ZhaopingongsiService extends IService<ZhaopingongsiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhaopingongsiVO> selectListVO(Wrapper<ZhaopingongsiEntity> wrapper);
   	
   	ZhaopingongsiVO selectVO(@Param("ew") Wrapper<ZhaopingongsiEntity> wrapper);
   	
   	List<ZhaopingongsiView> selectListView(Wrapper<ZhaopingongsiEntity> wrapper);
   	
   	ZhaopingongsiView selectView(@Param("ew") Wrapper<ZhaopingongsiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhaopingongsiEntity> wrapper);

   	

}

