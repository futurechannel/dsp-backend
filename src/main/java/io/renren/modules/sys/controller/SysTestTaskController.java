/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */
package io.renren.modules.sys.controller;

import io.renren.common.utils.R;
import io.renren.modules.sys.entity.SysIdeaInfoTodayEntity;
import io.renren.modules.sys.service.SysTestTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.List;

/**
 * 数据分析
 *
 * @author Mark sunlightcs@gmail.com
 */
@RestController
@RequestMapping("/controlTask")
public class SysTestTaskController extends AbstractController {
    @Autowired
    private SysTestTaskService SysTestTaskService;

    /**
     * 获取用户指定创意指定时间段的四项数据
     */
    @GetMapping("/userIdea")
    public R userIdea(){
        logger.debug("任务开始");
        // 生成时间对象
        Calendar nowTime = Calendar.getInstance();
        Calendar calendTime = Calendar.getInstance();
        Calendar calStratTime = Calendar.getInstance();
        // 开始时间是当前时间减去15分钟
        calStratTime.add(Calendar.MINUTE, -15);
        // 结束时间是当前时间减去1秒
        calendTime.add(Calendar.SECOND, -1);
        // 获取两个时间对应的字符串
        String endTime = SysTestTaskService.getStringTime(calendTime);
        String startTime = SysTestTaskService.getStringTime(calStratTime);
        logger.debug("获取时间段" + startTime + "-" + endTime);
        // 获取当日点击量的表名
        String tablename = SysTestTaskService.getTableName(calStratTime);
        logger.debug("获取表名" + tablename);
        // 获取当前时间段的系数字段名
        String colXs = SysTestTaskService.getTimeXs(calStratTime);
        logger.debug("获取系数字段名" + colXs);
        SysIdeaInfoTodayEntity test = new SysIdeaInfoTodayEntity();
        test.setTimeXss(colXs);

        // 获取先在时间的小时和分钟
        int hours = nowTime.get(Calendar.HOUR_OF_DAY);
        int minute = nowTime.get(Calendar.MINUTE);
        logger.debug("获取当前时间" + hours + "时" + minute + "分");

        String newDay = "0:0";

        // 获取所有在投放创意信息，包含今日曝光与消费
        List<SysIdeaInfoTodayEntity> ideaList = SysTestTaskService.getIdeaInfoToday(test);
        logger.debug("获取所有创意，共" + ideaList.size() + "个");
        int i = 0;
        NumberFormat formatter = new DecimalFormat("0.00");
        // 循环每个创意
        for (i = 0; i < ideaList.size(); i++) {
            SysIdeaInfoTodayEntity row = ideaList.get(i);
            String advertCode = row.advertCode;
            String appCode = row.appCode;
            float cost = row.cost;
            String idea = row.idea;
            logger.debug("本次创意id" + idea);
            // 获取15分钟内点击数
            int todayClick = SysTestTaskService.getIdeaClick(advertCode, appCode, startTime, endTime, tablename);
            logger.debug("此创意点击数" + todayClick);
            float ideaCost = row.ideaCost;
            // 计算15分钟内的消费
            float newCost = todayClick * ideaCost;
            logger.debug("点击单价" + ideaCost+",消费"+newCost);
            // 计算新的曝光量
            int exposure = row.exposure;
            int timeXs = row.timeXs;
            // 曝光量的公式：本次曝光量 = （15分钟内的点击量 * 库里对应时间段的系数） + 上一次的曝光量
            int newExposure = exposure + (todayClick * timeXs);
            logger.debug("历史曝光量：" + exposure+"，时间系数："+timeXs+"新的曝光量："+newExposure);
            if (newDay.equals(hours + ":" + minute)) {
                // 如果是零点
                // 将计算好的曝光量和消费更新到历史数据表里作为历史曝光和历史消费
                SysTestTaskService.insertExposureHistory(idea, newExposure, appCode, advertCode, formatter.format(newCost + cost));
                // 更新表中的创意今日曝光和消费为0
                SysTestTaskService.updateTodayData(idea, 0, "0");
            } else {
                // 不是零点则将计算好的曝光量和消费更新到今日数据表里作为今日曝光和今日消费
                SysTestTaskService.updateTodayData(idea, newExposure, formatter.format(newCost + cost));
            }
            // 获取用户当前余额
            String username = row.username;
            float balance = SysTestTaskService.getUserBalance(username);
            // 和消费相减，根据余额状态和预算状态更新数据
            float newBalance = balance - newCost;

            logger.debug("用户新余额：" + newBalance);
            if (row.isOpen.equals("Y")) {
                // 如果是投放状态
                if (newBalance <= 0) {
                    // 如果余额不足
                    SysTestTaskService.updateIdeaStatus(idea, 4);
                } else {
                    // 剩余情况状态为1
                    SysTestTaskService.updateIdeaStatus(idea, 1);
                }
            }
            // 更新用户余额
            SysTestTaskService.updateUserBalance(username, newBalance);
        }
        return R.ok().put("data", "1");
    }
}

