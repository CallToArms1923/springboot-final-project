package com.dao;

import com.entity.ZhaopingongsiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhaopingongsiVO;
import com.entity.view.ZhaopingongsiView;


/**
 * 招聘公司
 * 
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public interface ZhaopingongsiDao extends BaseMapper<ZhaopingongsiEntity> {
	
	List<ZhaopingongsiVO> selectListVO(@Param("ew") Wrapper<ZhaopingongsiEntity> wrapper);
	
	ZhaopingongsiVO selectVO(@Param("ew") Wrapper<ZhaopingongsiEntity> wrapper);
	
	List<ZhaopingongsiView> selectListView(@Param("ew") Wrapper<ZhaopingongsiEntity> wrapper);

	List<ZhaopingongsiView> selectListView(Pagination page,@Param("ew") Wrapper<ZhaopingongsiEntity> wrapper);

	
	ZhaopingongsiView selectView(@Param("ew") Wrapper<ZhaopingongsiEntity> wrapper);
	

}
