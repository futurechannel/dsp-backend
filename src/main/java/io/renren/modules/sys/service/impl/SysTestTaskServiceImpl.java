/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.datasource.annotation.DataSource;
import io.renren.modules.sys.dao.SysTestTaskDao;
import io.renren.modules.sys.entity.SysIdeaInfoTodayEntity;
import io.renren.modules.sys.service.SysTestTaskService;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.List;


/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
@Service("sysTestTaskService")
public class SysTestTaskServiceImpl extends ServiceImpl<SysTestTaskDao, SysIdeaInfoTodayEntity> implements SysTestTaskService {

	/**
	 * 查询创意和今日数据
	 */
	@Override
	@DataSource(value = "mysqlSelf")
	public List<SysIdeaInfoTodayEntity> getIdeaInfoToday(SysIdeaInfoTodayEntity test) {
		return baseMapper.getIdeaInfoToday(test);
	}

	/**
	 * 查询创意15分钟内点击量
	 */
	@Override
	@DataSource(value = "mysqlOther")
	public int getIdeaClick(String advertCode,String appCode,String starttime,String endtime,String tablename) {
		return baseMapper.getIdeaClick(advertCode,appCode,starttime,endtime,tablename);
	}

	/**
	 * 更新对应创意的今日数据
	 */
    @Override
	@DataSource(value = "mysqlSelf")
    public int updateTodayData(String idea,int exposure,String cost){
	    return baseMapper.updateTodayData(idea,exposure,cost);
	}

    /**
     * 查询创意对应用户的余额
     */
    @Override
    @DataSource(value = "mysqlSelf")
    public float getUserBalance(String username){
        return baseMapper.getUserBalance(username);
    }

    /**
     * 更新用户余额
     */
    @Override
    @DataSource(value = "mysqlSelf")
    public int updateUserBalance(String username,float balance){
        return baseMapper.updateUserBalance(username,balance);
    }

    /**
     * 更新创意状态
     */
    @Override
    @DataSource(value = "mysqlSelf")
    public int updateIdeaStatus(String idea,int status){
        return baseMapper.updateIdeaStatus(idea,status);
    }

    /**
     * 新增历史曝光量
     */
    @Override
    @DataSource(value = "mysqlSelf")
    public int insertExposureHistory(String idea, int exposure, String appCode, String advertCode, String cost){
        return baseMapper.insertExposureHistory(idea,exposure,appCode,advertCode,cost);
    }

    @Override
    public String getTableName(Calendar time){
        // 获取年
        int year = time.get(Calendar.YEAR);
        // 获取月
        int month = time.get(Calendar.MONTH)+1;
        // 获取日
        int date = time.get(Calendar.DATE);

        String monthStr = "0";
        String dateStr = "0";
        if (month < 10){
            monthStr = "0"+month;
        } else {
            monthStr = Integer.toString(month);
        }
        if (date < 10){
            dateStr = "0"+date;
        } else {
            dateStr = Integer.toString(date);
        }
        String result = "report_log_"+year + monthStr +dateStr;
        return result;
    }

    @Override
    public String getTimeXs(Calendar time) {
        //获取几点
        int hour=time.get(Calendar.HOUR_OF_DAY);
        String result = "xs."+hour+"_"+(hour+1);
        return result;
    }

    @Override
    public String getStringTime(Calendar time){
        // 获取年
        int year = time.get(Calendar.YEAR);
        // 获取月
        int month = time.get(Calendar.MONTH);
        // 获取日
        int date = time.get(Calendar.DATE);
        //获取几点
        int hour=time.get(Calendar.HOUR_OF_DAY);
        // 获取几分
        int minute=time.get(Calendar.MINUTE);
        // 获取几秒
        int second = time.get(Calendar.SECOND);

        String result = year + "-" + (month + 1) + "-" + date + " " + hour + ":" + minute + ":"+second;
        return result;
    }
}