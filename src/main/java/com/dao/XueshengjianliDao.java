package com.dao;

import com.entity.XueshengjianliEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;


/**
 * 学生在线简历
 */
public interface XueshengjianliDao extends BaseMapper<XueshengjianliEntity> {
	
	List<XueshengjianliEntity> selectListVO(@Param("ew") Wrapper<XueshengjianliEntity> wrapper);
	
	XueshengjianliEntity selectVO(@Param("ew") Wrapper<XueshengjianliEntity> wrapper);
	
	List<XueshengjianliEntity> selectListView(@Param("ew") Wrapper<XueshengjianliEntity> wrapper);

	List<XueshengjianliEntity> selectListView(Pagination page,@Param("ew") Wrapper<XueshengjianliEntity> wrapper);
	
	XueshengjianliEntity selectView(@Param("ew") Wrapper<XueshengjianliEntity> wrapper);
}
