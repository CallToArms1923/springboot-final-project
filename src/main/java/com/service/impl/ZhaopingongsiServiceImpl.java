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


import com.dao.ZhaopingongsiDao;
import com.entity.ZhaopingongsiEntity;
import com.service.ZhaopingongsiService;
import com.entity.vo.ZhaopingongsiVO;
import com.entity.view.ZhaopingongsiView;

@Service("zhaopingongsiService")
public class ZhaopingongsiServiceImpl extends ServiceImpl<ZhaopingongsiDao, ZhaopingongsiEntity> implements ZhaopingongsiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhaopingongsiEntity> page = this.selectPage(
                new Query<ZhaopingongsiEntity>(params).getPage(),
                new EntityWrapper<ZhaopingongsiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhaopingongsiEntity> wrapper) {
		  Page<ZhaopingongsiView> page =new Query<ZhaopingongsiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<ZhaopingongsiVO> selectListVO(Wrapper<ZhaopingongsiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhaopingongsiVO selectVO(Wrapper<ZhaopingongsiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhaopingongsiView> selectListView(Wrapper<ZhaopingongsiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhaopingongsiView selectView(Wrapper<ZhaopingongsiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
