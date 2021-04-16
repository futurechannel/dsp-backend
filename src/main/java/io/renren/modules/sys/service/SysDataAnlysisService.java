/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.modules.sys.entity.SysClickEntity;
import io.renren.modules.sys.entity.SysExposureEntity;
import io.renren.modules.sys.entity.SysIdeaEntity;
import io.renren.modules.sys.entity.SysTableDataEntity;

import java.util.List;


/**
 * 数据分析
 *
 * @author Mark sunlightcs@gmail.com
 */
public interface SysDataAnlysisService extends IService<SysExposureEntity> {

	/**
	 * 查询创意的历史曝光与消费
	 */
	List<SysExposureEntity> getExposureHistroy(String idea_id, String starttime, String endtime);

	/**
	 * 查询创意的历史点击与下载
	 */
	List<SysClickEntity> getClickHistroy(String advert_code, String app_code, String starttime, String endtime);

	/**
	 * 查询用户下的创意
	 */
	List<SysIdeaEntity> queryIdeaWithUsername(String username);

	/**
	 * 查询用户下所有创意的今日消费
	 */
	float queryUserTodayCost(String username);

	/**
	 * 查询表格数据
	 */
	List<SysTableDataEntity> queryTableData(String username, String starttime, String endtime);

	/**
	 * 比较创意的时间和筛选条件
	 */
	List<String> compareTime(String starttime,String endtime,String createDate);

	/**
	 * 获取两个时间的差值
	 */
	int daysBetween(String starttime,String endtime);
}
