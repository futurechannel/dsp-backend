/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.sys.entity.SysIdeaInfoTodayEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
@Mapper
public interface SysTestTaskDao extends BaseMapper<SysIdeaInfoTodayEntity> {

	/**
	 * 查询创意的历史曝光与消费
	 */
	List<SysIdeaInfoTodayEntity> getIdeaInfoToday(SysIdeaInfoTodayEntity test);

	/**
	 * 查询创意15分钟内点击量
	 */
	int getIdeaClick(String advertCode,String appCode,String starttime,String endtime,String tablename);

	/**
	 * 更新对应创意的今日数据
	 */
	int updateTodayData(String idea,int exposure,String cost);

	/**
	 * 查询创意对应用户的余额
	 */
	float getUserBalance(String username);

	/**
	 * 更新用户余额
	 */
	int updateUserBalance(String username,float balance);

	/**
	 * 更新创意状态
	 */
	int updateIdeaStatus(String idea,int status);

	/**
	 * 新增历史曝光量
	 */
	int insertExposureHistory(String idea,int exposure,String appCode,String advertCode,String cost);
}
