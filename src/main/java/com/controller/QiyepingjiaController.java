package com.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.QiyepingjiaEntity;
import com.entity.ToudixinxiEntity;
import com.entity.XueshengEntity;
import com.entity.ZhaopingongsiEntity;
import com.entity.view.QiyepingjiaView;
import com.service.QiyepingjiaService;
import com.service.ToudixinxiService;
import com.service.XueshengService;
import com.service.ZhaopingongsiService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;

/**
 * 企业评分评价
 */
@RestController
@RequestMapping("/qiyepingjia")
public class QiyepingjiaController {
	@Autowired
	private QiyepingjiaService qiyepingjiaService;

	@Autowired
	private ToudixinxiService toudixinxiService;

	@Autowired
	private XueshengService xueshengService;

	@Autowired
	private ZhaopingongsiService zhaopingongsiService;

	@RequestMapping("/page")
	public R page(@RequestParam Map<String, Object> params, QiyepingjiaEntity qiyepingjia, HttpServletRequest request) {
		EntityWrapper<QiyepingjiaEntity> ew = new EntityWrapper<QiyepingjiaEntity>();
		PageUtils page = qiyepingjiaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qiyepingjia), params), params));
		return R.ok().put("data", page);
	}

	@IgnoreAuth
	@RequestMapping("/list")
	public R list(@RequestParam Map<String, Object> params, QiyepingjiaEntity qiyepingjia, HttpServletRequest request) {
		EntityWrapper<QiyepingjiaEntity> ew = new EntityWrapper<QiyepingjiaEntity>();
		PageUtils page = qiyepingjiaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qiyepingjia), params), params));
		return R.ok().put("data", page);
	}

	@RequestMapping("/lists")
	public R lists(QiyepingjiaEntity qiyepingjia) {
		EntityWrapper<QiyepingjiaEntity> ew = new EntityWrapper<QiyepingjiaEntity>();
		ew.allEq(MPUtil.allEQMapPre(qiyepingjia, "qiyepingjia"));
		return R.ok().put("data", qiyepingjiaService.selectListView(ew));
	}

	@RequestMapping("/query")
	public R query(QiyepingjiaEntity qiyepingjia) {
		EntityWrapper<QiyepingjiaEntity> ew = new EntityWrapper<QiyepingjiaEntity>();
		ew.allEq(MPUtil.allEQMapPre(qiyepingjia, "qiyepingjia"));
		QiyepingjiaView qiyepingjiaView = qiyepingjiaService.selectView(ew);
		return R.ok("查询企业评价成功").put("data", qiyepingjiaView);
	}

	@RequestMapping("/info/{id}")
	public R info(@PathVariable("id") Long id) {
		QiyepingjiaEntity qiyepingjia = qiyepingjiaService.selectById(id);
		return R.ok().put("data", qiyepingjia);
	}

	@IgnoreAuth
	@RequestMapping("/detail/{id}")
	public R detail(@PathVariable("id") Long id) {
		QiyepingjiaEntity qiyepingjia = qiyepingjiaService.selectById(id);
		return R.ok().put("data", qiyepingjia);
	}

	@IgnoreAuth
	@RequestMapping("/summary")
	public R summary(@RequestParam String qiyezhanghao) {
		Map<String, Object> data = buildSummary(qiyezhanghao);
		return R.ok().put("data", data);
	}

	@RequestMapping("/canSubmit")
	public R canSubmit(@RequestParam String qiyezhanghao, HttpServletRequest request) {
		XueshengEntity xuesheng = getCurrentStudent(request);
		if (xuesheng == null) {
			return R.ok().put("canSubmit", false).put("hasApplied", false).put("hasReviewed", false).put("message", "请先登录用户账号");
		}
		boolean hasApplied = hasApplied(qiyezhanghao, xuesheng.getXuehao());
		boolean hasReviewed = hasReviewed(qiyezhanghao, xuesheng.getXuehao());
		boolean canSubmit = hasApplied && !hasReviewed;
		String message = canSubmit ? "可以评价" : (!hasApplied ? "仅投递过该企业岗位的用户可以评价" : "您已评价过该企业");
		return R.ok().put("canSubmit", canSubmit).put("hasApplied", hasApplied).put("hasReviewed", hasReviewed).put("message", message);
	}

	@RequestMapping("/submit")
	@Transactional
	public R submit(@RequestBody QiyepingjiaEntity qiyepingjia, HttpServletRequest request) {
		if (StringUtils.isBlank(qiyepingjia.getQiyezhanghao())) {
			return R.error("企业账号不能为空");
		}
		if (qiyepingjia.getPingfen() == null || qiyepingjia.getPingfen() < 1 || qiyepingjia.getPingfen() > 5) {
			return R.error("评分必须在1到5之间");
		}
		if (StringUtils.isBlank(qiyepingjia.getPingjianeirong())) {
			return R.error("请输入评价内容");
		}
		XueshengEntity xuesheng = getCurrentStudent(request);
		if (xuesheng == null) {
			return R.error("请先登录用户账号");
		}
		String qiyezhanghao = qiyepingjia.getQiyezhanghao();
		if (!hasApplied(qiyezhanghao, xuesheng.getXuehao())) {
			return R.error("仅投递过该企业岗位的用户可以评价");
		}
		if (hasReviewed(qiyezhanghao, xuesheng.getXuehao())) {
			return R.error("同一用户只能对同一家企业评价一次");
		}
		ZhaopingongsiEntity company = zhaopingongsiService.selectOne(new EntityWrapper<ZhaopingongsiEntity>().eq("qiyezhanghao", qiyezhanghao));
		if (company != null) {
			qiyepingjia.setQiyemingcheng(company.getQiyemingcheng());
		}
		qiyepingjia.setId(null);
		qiyepingjia.setXuehao(xuesheng.getXuehao());
		qiyepingjia.setXingming(xuesheng.getXingming());
		qiyepingjia.setPingjianeirong(qiyepingjia.getPingjianeirong().trim());
		qiyepingjia.setAddtime(new Date());
		qiyepingjiaService.insert(qiyepingjia);
		return R.ok();
	}

	@RequestMapping("/save")
	public R save(@RequestBody QiyepingjiaEntity qiyepingjia, HttpServletRequest request) {
		qiyepingjiaService.insert(qiyepingjia);
		return R.ok();
	}

	@RequestMapping("/add")
	public R add(@RequestBody QiyepingjiaEntity qiyepingjia, HttpServletRequest request) {
		return submit(qiyepingjia, request);
	}

	@RequestMapping("/delete")
	public R delete(@RequestBody Long[] ids) {
		qiyepingjiaService.deleteBatchIds(Arrays.asList(ids));
		return R.ok();
	}

	@RequestMapping("/stats")
	public R stats(@RequestParam Map<String, Object> params) {
		List<Map<String, Object>> list = qiyepingjiaService.selectCompanyStats(params);
		for (Map<String, Object> item : list) {
			int count = Integer.parseInt(String.valueOf(item.get("pingjiarenshu")));
			Object avg = item.get("pingjunfen");
			item.put("xianshipingfen", count >= 5 ? avg : "暂无评分");
			item.put("xingji", count >= 5 ? avg : 0);
		}
		return R.ok().put("data", list);
	}

	private Map<String, Object> buildSummary(String qiyezhanghao) {
		List<QiyepingjiaEntity> list = qiyepingjiaService.selectList(new EntityWrapper<QiyepingjiaEntity>().eq("qiyezhanghao", qiyezhanghao));
		int count = list.size();
		double avg = 0;
		if (count > 0) {
			int total = 0;
			for (QiyepingjiaEntity item : list) {
				total += item.getPingfen() == null ? 0 : item.getPingfen();
			}
			avg = Math.round(total * 10.0 / count) / 10.0;
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("pingjiarenshu", count);
		data.put("pingjunfen", avg);
		data.put("xianshipingfen", count >= 5 ? avg : "暂无评分");
		data.put("xingji", count >= 5 ? avg : 0);
		return data;
	}

	private XueshengEntity getCurrentStudent(HttpServletRequest request) {
		Object tableName = request.getSession().getAttribute("tableName");
		Object userId = request.getSession().getAttribute("userId");
		if (tableName == null || userId == null || !"xuesheng".equals(tableName.toString())) {
			return null;
		}
		return xueshengService.selectById((Long) userId);
	}

	private boolean hasApplied(String qiyezhanghao, String xuehao) {
		int count = toudixinxiService.selectCount(new EntityWrapper<ToudixinxiEntity>().eq("qiyezhanghao", qiyezhanghao).eq("xuehao", xuehao));
		return count > 0;
	}

	private boolean hasReviewed(String qiyezhanghao, String xuehao) {
		int count = qiyepingjiaService.selectCount(new EntityWrapper<QiyepingjiaEntity>().eq("qiyezhanghao", qiyezhanghao).eq("xuehao", xuehao));
		return count > 0;
	}
}
