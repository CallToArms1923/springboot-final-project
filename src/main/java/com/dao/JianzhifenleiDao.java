package com.dao;

import com.entity.JianzhifenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JianzhifenleiVO;
import com.entity.view.JianzhifenleiView;


/**
 * 兼职分类
 * 
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
public interface JianzhifenleiDao extends BaseMapper<JianzhifenleiEntity> {
	
	List<JianzhifenleiVO> selectListVO(@Param("ew") Wrapper<JianzhifenleiEntity> wrapper);
	
	JianzhifenleiVO selectVO(@Param("ew") Wrapper<JianzhifenleiEntity> wrapper);
	
	List<JianzhifenleiView> selectListView(@Param("ew") Wrapper<JianzhifenleiEntity> wrapper);

	List<JianzhifenleiView> selectListView(Pagination page,@Param("ew") Wrapper<JianzhifenleiEntity> wrapper);

	
	JianzhifenleiView selectView(@Param("ew") Wrapper<JianzhifenleiEntity> wrapper);
	

}
