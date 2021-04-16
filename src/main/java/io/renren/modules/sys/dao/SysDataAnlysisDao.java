/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.sys.entity.SysClickEntity;
import io.renren.modules.sys.entity.SysExposureEntity;
import io.renren.modules.sys.entity.SysIdeaEntity;
import io.renren.modules.sys.entity.SysTableDataEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
@Mapper
public interface SysDataAnlysisDao extends BaseMapper<SysExposureEntity> {
	
	/**
	 * 查询创意的历史曝光与消费
	 */
	List<SysExposureEntity> queryExposureWithDate(String idea_id,String starttime,String endtime);

	/**
	 * 查询创意的历史点击与下载
	 */
	List<SysClickEntity> queryClickWithDate(String advert_code,String app_code,String starttime,String endtime);

	/**
	 * 查询用户下的创意
	 */
	List<SysIdeaEntity> queryIdeaWithUsername(String username);

	/**
	 * 查询用户下的创意
	 */
	float queryUserTodayCost(String username);

	/**
	 * 查询表格数据
	 */
	List<SysTableDataEntity> queryTableData(String username, String starttime, String endtime);
}
