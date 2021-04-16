/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */
package io.renren.modules.sys.controller;

import io.renren.common.utils.R;
import io.renren.modules.sys.entity.SysClickEntity;
import io.renren.modules.sys.entity.SysExposureEntity;
import io.renren.modules.sys.entity.SysIdeaEntity;
import io.renren.modules.sys.entity.SysTableDataEntity;
import io.renren.modules.sys.service.SysDataAnlysisService;
import io.renren.modules.sys.service.SysTestTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.*;

/**
 * 数据分析
 *
 * @author Mark sunlightcs@gmail.com
 */
@RestController
@RequestMapping("/analysis")
public class SysDataAnalysisController extends AbstractController {
    @Autowired
    private SysDataAnlysisService SysDataAnlysisService;
    @Autowired
    private SysTestTaskService SysTestTaskService;

    /**
     * 获取用户指定创意指定时间段的四项数据
     */
    @GetMapping("/data")
    public R data(@RequestParam Map<String, String> params){
        String idea_id = params.get("idea_id");
        String starttime = params.get("starttime");
        String endtime = params.get("endtime");
        String advert_code = params.get("advert_code");
        String app_code = params.get("app_code");
        String createDate = params.get("createDate");
        List result = new ArrayList();
        // 获取创意创建时间和筛选时间的结果
        List<String> resultTime = SysDataAnlysisService.compareTime(starttime,endtime,createDate);
        if (resultTime.get(2).equals("after")) {
            // 如果筛选时间在创建前
            List temp = new ArrayList();
            Map<String, Object> exmap = new HashMap<>();
            exmap.put("exposure",temp);
            exmap.put("click",temp);
            result.add(0,exmap);
        } else {
            // 如果筛选时间在创建后
            // 历史曝光量
            List<SysExposureEntity> exposure = SysDataAnlysisService.getExposureHistroy(idea_id,resultTime.get(0),resultTime.get(1));
            // 历史点击量和下载量
            List<SysClickEntity> click = SysDataAnlysisService.getClickHistroy(advert_code,app_code,resultTime.get(0),resultTime.get(1));
            Map<String, Object> exmap = new HashMap<>();
            exmap.put("exposure",exposure);
            exmap.put("click",click);
            result.add(0,exmap);
        }
        return R.ok().put("data", result);
    }

    /**
     * 获取用户下的创意
     */
    @GetMapping("/userIdea")
    public R userIdea(@RequestParam Map<String, String> params){
        String username = params.get("username");
        return R.ok().put("data", SysDataAnlysisService.queryIdeaWithUsername(username));
    }

    /**
     * 获取所有创意的数据
     */
    @GetMapping("/allData")
    public R allData(@RequestParam Map<String, String> params){
        Map<String, Object> resultMap = new HashMap<>();
        String username = params.get("username");
        String starttime = params.get("starttime");
        String endtime = params.get("endtime");
        List<SysIdeaEntity> ideaData =  SysDataAnlysisService.queryIdeaWithUsername(username);
        for (int i=0;i<ideaData.size();i++) {
            List idea = new ArrayList();
            SysIdeaEntity a = ideaData.get(i);
            String ideaid = a.idea;
            String advertCode = a.advertCode;
            String appCode = a.appCode;
            String createDate = a.createDate;
            // 获取创意创建时间和筛选时间的结果
            List<String> resultTime = SysDataAnlysisService.compareTime(starttime,endtime,createDate);
            if (resultTime.get(2).equals("after")) {
                // 如果筛选时间在创建前
                List temp = new ArrayList();
                Map<String, Object> exmap = new HashMap<>();
                exmap.put("exposure",temp);
                exmap.put("click",temp);
                idea.add(exmap);
                resultMap.put(ideaid,idea);
            } else {
                // 如果筛选时间在创建后
                // 历史曝光量
                List<SysExposureEntity> exposure = SysDataAnlysisService.getExposureHistroy(ideaid,resultTime.get(0),resultTime.get(1));
                Map<String, Object> exmap = new HashMap<>();
                exmap.put("exposure",exposure);
//              // 历史点击量和下载量
                List<SysClickEntity> click = SysDataAnlysisService.getClickHistroy(advertCode,appCode,resultTime.get(0),resultTime.get(1));
                exmap.put("click",click);
                idea.add(exmap);
                resultMap.put(ideaid,idea);
            }

        }
        return R.ok().put("data", resultMap);
    }

    /**
     * 获取用户余额和今日消费
     */
    @GetMapping("/userBalance")
    public R userBalance(@RequestParam Map<String, String> params){
        String username = params.get("username");
        // 余额
        float balance = SysTestTaskService.getUserBalance(username);
        float userCost = SysDataAnlysisService.queryUserTodayCost(username);
        Map<String,Float> result = new HashMap<>();
        result.put("balance",balance);
        result.put("userCost",userCost);
        return R.ok().put("data", result);
    }

    /**
     * 获取数据分析表格数据
     */
    @GetMapping("/tableData")
    public R tableData(@RequestParam Map<String, String> params){
        String username = params.get("username");
        String starttime = params.get("starttime");
        String endtime = params.get("endtime");
        List<Map<String,Object>> result = new ArrayList<>();
        // 获取历史表中的信息
        List<SysTableDataEntity> tableData = SysDataAnlysisService.queryTableData(username,starttime,endtime);
        for (int i=tableData.size()-1;i >= 0;i--){
            // 从日期最小的循环
            SysTableDataEntity row = tableData.get(i);
            // 生成本条数据的结果集
            Map<String,Object> temp = new HashMap<>();
            // 获取内容
            String createDate = row.createDate;
            String appCode = row.appCode;
            String advertCode = row.advertCode;
            int exposure = row.exposure;
            float totalCost = row.totalCost;
            // 获取对应天的点击量和下载量
            List<SysClickEntity> clickList = SysDataAnlysisService.getClickHistroy(advertCode,appCode,createDate,createDate);
            if (clickList.size() > 0){
                SysClickEntity click = clickList.get(0);
                int clickCnt = click.clickCnt;
                int activeCnt = click.activeCnt;
                NumberFormat formatter = new DecimalFormat("0.00");
                // 开始生成结果
                if (exposure == 0){
                    temp.put("clickRate","0%");
                    temp.put("activeRate","0%");
                } else {
                    temp.put("clickRate",formatter.format(((float)clickCnt/exposure)*100)+"%");
                    temp.put("activeRate",formatter.format(((float)activeCnt/clickCnt)*100)+"%");
                }
                if (clickCnt == 0){
                    temp.put("clickCost",0);
                } else {
                    temp.put("clickCost",formatter.format(totalCost/clickCnt));
                }
                if (activeCnt == 0){
                    temp.put("activeCost",0);
                } else {
                    temp.put("activeCost",formatter.format(totalCost/activeCnt));
                }
                temp.put("click",clickCnt);
                temp.put("active",activeCnt);
            } else {
                temp.put("clickRate","0.00%");
                temp.put("click",0);
                temp.put("clickCost",0);
                temp.put("active",0);
                temp.put("activeRate",0);
                temp.put("activeCost",0);
            }
            temp.put("date",createDate);
            temp.put("iname",row.iname);
            temp.put("exposure",exposure);
            temp.put("cost",totalCost);
            // 保存到result中
            result.add(temp);
        }
        return R.ok().put("data", result);
    }
}

