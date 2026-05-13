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

import com.entity.JianzhifenleiEntity;
import com.entity.view.JianzhifenleiView;

import com.service.JianzhifenleiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.EncryptUtil;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 兼职分类
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-29 16:04:09
 */
@RestController
@RequestMapping("/jianzhifenlei")
public class JianzhifenleiController {
    @Autowired
    private JianzhifenleiService jianzhifenleiService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JianzhifenleiEntity jianzhifenlei,
		HttpServletRequest request){
        EntityWrapper<JianzhifenleiEntity> ew = new EntityWrapper<JianzhifenleiEntity>();

		PageUtils page = jianzhifenleiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jianzhifenlei), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JianzhifenleiEntity jianzhifenlei, 
		HttpServletRequest request){
        EntityWrapper<JianzhifenleiEntity> ew = new EntityWrapper<JianzhifenleiEntity>();

		PageUtils page = jianzhifenleiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jianzhifenlei), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JianzhifenleiEntity jianzhifenlei){
       	EntityWrapper<JianzhifenleiEntity> ew = new EntityWrapper<JianzhifenleiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jianzhifenlei, "jianzhifenlei")); 
        return R.ok().put("data", jianzhifenleiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JianzhifenleiEntity jianzhifenlei){
        EntityWrapper< JianzhifenleiEntity> ew = new EntityWrapper< JianzhifenleiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jianzhifenlei, "jianzhifenlei")); 
		JianzhifenleiView jianzhifenleiView =  jianzhifenleiService.selectView(ew);
		return R.ok("查询兼职分类成功").put("data", jianzhifenleiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JianzhifenleiEntity jianzhifenlei = jianzhifenleiService.selectById(id);
        return R.ok().put("data", jianzhifenlei);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JianzhifenleiEntity jianzhifenlei = jianzhifenleiService.selectById(id);
        return R.ok().put("data", jianzhifenlei);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JianzhifenleiEntity jianzhifenlei, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(jianzhifenlei);
        jianzhifenleiService.insert(jianzhifenlei);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JianzhifenleiEntity jianzhifenlei, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(jianzhifenlei);
        jianzhifenleiService.insert(jianzhifenlei);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JianzhifenleiEntity jianzhifenlei, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jianzhifenlei);
        jianzhifenleiService.updateById(jianzhifenlei);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jianzhifenleiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
