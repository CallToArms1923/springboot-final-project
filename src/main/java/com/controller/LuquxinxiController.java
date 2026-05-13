package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.LuquxinxiEntity;
import com.entity.view.LuquxinxiView;

import com.service.LuquxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.EncryptUtil;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 录取信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
@RestController
@RequestMapping("/luquxinxi")
public class LuquxinxiController {
    @Autowired
    private LuquxinxiService luquxinxiService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,LuquxinxiEntity luquxinxi,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("zhaopingongsi")) {
			// 只有当前端没有传递 qiyezhanghao 时,才使用 Session 中的值
			if(luquxinxi.getQiyezhanghao() == null || luquxinxi.getQiyezhanghao().isEmpty()) {
				luquxinxi.setQiyezhanghao((String)request.getSession().getAttribute("username"));
			}
		}
		if(tableName.equals("xuesheng")) {
			// 只有当前端没有传递 xuehao 时,才使用 Session 中的值
			if(luquxinxi.getXuehao() == null || luquxinxi.getXuehao().isEmpty()) {
				luquxinxi.setXuehao((String)request.getSession().getAttribute("username"));
			}
		}
        EntityWrapper<LuquxinxiEntity> ew = new EntityWrapper<LuquxinxiEntity>();

		PageUtils page = luquxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, luquxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,LuquxinxiEntity luquxinxi, 
		HttpServletRequest request){
        EntityWrapper<LuquxinxiEntity> ew = new EntityWrapper<LuquxinxiEntity>();

		PageUtils page = luquxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, luquxinxi), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( LuquxinxiEntity luquxinxi){
       	EntityWrapper<LuquxinxiEntity> ew = new EntityWrapper<LuquxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( luquxinxi, "luquxinxi")); 
        return R.ok().put("data", luquxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(LuquxinxiEntity luquxinxi){
        EntityWrapper< LuquxinxiEntity> ew = new EntityWrapper< LuquxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( luquxinxi, "luquxinxi")); 
		LuquxinxiView luquxinxiView =  luquxinxiService.selectView(ew);
		return R.ok("查询录取信息成功").put("data", luquxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        LuquxinxiEntity luquxinxi = luquxinxiService.selectById(id);
        return R.ok().put("data", luquxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        LuquxinxiEntity luquxinxi = luquxinxiService.selectById(id);
        return R.ok().put("data", luquxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody LuquxinxiEntity luquxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(luquxinxi);
        luquxinxiService.insert(luquxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody LuquxinxiEntity luquxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(luquxinxi);
        luquxinxiService.insert(luquxinxi);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody LuquxinxiEntity luquxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(luquxinxi);
        luquxinxiService.updateById(luquxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        luquxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
