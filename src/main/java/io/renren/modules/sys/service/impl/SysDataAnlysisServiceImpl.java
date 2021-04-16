/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.modules.sys.entity.SysIdeaEntity;
import io.renren.modules.sys.entity.SysTableDataEntity;
import io.renren.modules.sys.service.SysDataAnlysisService;
import io.renren.modules.sys.entity.SysClickEntity;
import io.renren.modules.sys.entity.SysExposureEntity;
import io.renren.modules.sys.dao.SysDataAnlysisDao;
import org.springframework.stereotype.Service;
import io.renren.datasource.annotation.DataSource;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
@Service("sysDataAnlysisService")
public class SysDataAnlysisServiceImpl extends ServiceImpl<SysDataAnlysisDao, SysExposureEntity> implements SysDataAnlysisService {

	@Override
	@DataSource(value = "mysqlSelf")
	public List<SysExposureEntity> getExposureHistroy(String idea_id, String starttime, String endtime) {
		return baseMapper.queryExposureWithDate(idea_id,starttime,endtime);
	}

	@Override
	@DataSource(value = "clickAndDown")
	public List<SysClickEntity> getClickHistroy(String advert_code, String app_code, String starttime, String endtime) {
		return baseMapper.queryClickWithDate(advert_code,app_code,starttime,endtime);
	}

	@Override
	@DataSource(value = "mysqlSelf")
	public List<SysIdeaEntity> queryIdeaWithUsername(String username) {
		return baseMapper.queryIdeaWithUsername(username);
	}

	@Override
	@DataSource(value = "mysqlSelf")
	public float queryUserTodayCost(String username) {
		return baseMapper.queryUserTodayCost(username);
	}

	@Override
	@DataSource(value = "mysqlSelf")
	public List<SysTableDataEntity> queryTableData(String username, String starttime, String endtime){
		return baseMapper.queryTableData(username,starttime,endtime);
	}

	@Override
	public List<String> compareTime(String starttime,String endtime,String createDate){
		List<String> result = new ArrayList<>();
		int res1 = createDate.compareTo(starttime);
		int res2 = createDate.compareTo(endtime);
		if (res1 <= 0){
			// 如果创意的创建时间小于开始时间，则返回此时间
			result.add(starttime);
			result.add(endtime);
			result.add("before");
		} else if (res1 > 0 && res2 <= 0 ) {
			// 如果时间在它俩之间
			result.add(createDate);
			result.add(endtime);
			result.add("between");
		} else if (res2 > 0){
			// 如果创建时间大于筛选的结束时间
			result.add("");
			result.add("");
			result.add("after");
		}
		return result;
	}

	@Override
	public int daysBetween(String starttime,String endtime){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		try {
			cal.setTime(sdf.parse(starttime));
			long time1 = cal.getTimeInMillis();
			cal.setTime(sdf.parse(endtime));
			long time2 = cal.getTimeInMillis();
			long between_days=(time2-time1)/(1000*3600*24);
			return Integer.parseInt(String.valueOf(between_days));
		} catch (Exception e) {
			return 0;
		}
	}
}