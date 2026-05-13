package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JianzhifenleiDao;
import com.entity.JianzhifenleiEntity;
import com.service.JianzhifenleiService;
import com.entity.vo.JianzhifenleiVO;
import com.entity.view.JianzhifenleiView;

@Service("jianzhifenleiService")
public class JianzhifenleiServiceImpl extends ServiceImpl<JianzhifenleiDao, JianzhifenleiEntity> implements JianzhifenleiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JianzhifenleiEntity> page = this.selectPage(
                new Query<JianzhifenleiEntity>(params).getPage(),
                new EntityWrapper<JianzhifenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JianzhifenleiEntity> wrapper) {
		  Page<JianzhifenleiView> page =new Query<JianzhifenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<JianzhifenleiVO> selectListVO(Wrapper<JianzhifenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JianzhifenleiVO selectVO(Wrapper<JianzhifenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JianzhifenleiView> selectListView(Wrapper<JianzhifenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JianzhifenleiView selectView(Wrapper<JianzhifenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
