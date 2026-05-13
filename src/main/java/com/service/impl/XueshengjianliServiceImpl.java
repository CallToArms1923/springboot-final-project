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


import com.dao.XueshengjianliDao;
import com.entity.XueshengjianliEntity;
import com.service.XueshengjianliService;

@Service("xueshengjianliService")
public class XueshengjianliServiceImpl extends ServiceImpl<XueshengjianliDao, XueshengjianliEntity> implements XueshengjianliService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XueshengjianliEntity> page = this.selectPage(
                new Query<XueshengjianliEntity>(params).getPage(),
                new EntityWrapper<XueshengjianliEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XueshengjianliEntity> wrapper) {
		  Page<XueshengjianliEntity> page =new Query<XueshengjianliEntity>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<XueshengjianliEntity> selectListVO(Wrapper<XueshengjianliEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XueshengjianliEntity selectVO(Wrapper<XueshengjianliEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XueshengjianliEntity> selectListView(Wrapper<XueshengjianliEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XueshengjianliEntity selectView(Wrapper<XueshengjianliEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
