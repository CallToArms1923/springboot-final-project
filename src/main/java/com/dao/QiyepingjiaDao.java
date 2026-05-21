package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.QiyepingjiaEntity;
import com.entity.view.QiyepingjiaView;
import com.entity.vo.QiyepingjiaVO;

/**
 * 企业评分评价
 */
public interface QiyepingjiaDao extends BaseMapper<QiyepingjiaEntity> {
	List<QiyepingjiaVO> selectListVO(@Param("ew") Wrapper<QiyepingjiaEntity> wrapper);

	QiyepingjiaVO selectVO(@Param("ew") Wrapper<QiyepingjiaEntity> wrapper);

	List<QiyepingjiaView> selectListView(@Param("ew") Wrapper<QiyepingjiaEntity> wrapper);

	List<QiyepingjiaView> selectListView(Pagination page, @Param("ew") Wrapper<QiyepingjiaEntity> wrapper);

	QiyepingjiaView selectView(@Param("ew") Wrapper<QiyepingjiaEntity> wrapper);

	List<Map<String, Object>> selectCompanyStats(@Param("params") Map<String, Object> params);
}
