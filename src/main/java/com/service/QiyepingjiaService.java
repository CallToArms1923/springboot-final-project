package com.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.QiyepingjiaEntity;
import com.entity.view.QiyepingjiaView;
import com.entity.vo.QiyepingjiaVO;
import com.utils.PageUtils;

/**
 * 企业评分评价
 */
public interface QiyepingjiaService extends IService<QiyepingjiaEntity> {
	PageUtils queryPage(Map<String, Object> params);

	List<QiyepingjiaVO> selectListVO(Wrapper<QiyepingjiaEntity> wrapper);

	QiyepingjiaVO selectVO(@Param("ew") Wrapper<QiyepingjiaEntity> wrapper);

	List<QiyepingjiaView> selectListView(Wrapper<QiyepingjiaEntity> wrapper);

	QiyepingjiaView selectView(@Param("ew") Wrapper<QiyepingjiaEntity> wrapper);

	PageUtils queryPage(Map<String, Object> params, Wrapper<QiyepingjiaEntity> wrapper);

	List<Map<String, Object>> selectCompanyStats(Map<String, Object> params);
}
