package io.renren.modules.sys.controller;

import io.renren.common.utils.R;
import io.renren.modules.sys.entity.SysClickEntity;
import io.renren.modules.sys.entity.SysIdeaInfoEntity;
import io.renren.modules.sys.entity.SysIdeaInfoTodayEntity;
import io.renren.modules.sys.service.SysAddIdeaService;
import io.renren.modules.sys.service.SysDataAnlysisService;
import io.renren.modules.sys.service.SysTestTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Map;
import java.util.*;

@RestController
@RequestMapping("/addIdea")
public class SysAddIdeaController extends AbstractController {
    @Autowired
    private SysAddIdeaService SysAddIdeaService;
    @Autowired
    private SysDataAnlysisService SysDataAnlysisService;
    @Autowired
    private SysTestTaskService SysTestTaskService;

    @PostMapping("/saveIdea")
    public R saveIdea(@RequestParam Map<String,Object> params){
        String ideaID = (String) params.get("ideaID");
        String ideaName = (String) params.get("ideaName");
        String userName = (String) params.get("userName");
//        float balanceBudget = Float.parseFloat((String)params.get("balanceBudget"));
//        float budget = Float.parseFloat((String) params.get("budget"));
        float ideaCost = Float.parseFloat((String)params.get("ideaCost"));
//        Date createDate = (Date) params.get("createDate");
        String isOpen = (String) params.get("isOpen");
        int status = Integer.parseInt((String)params.get("status"));
//        String appPackageName = (String) params.get("appPackageName");
        String advertCode = (String) params.get("advertCode");
        String appCode = (String) params.get("appCode");
        String appId = (String) params.get("appId");
        String imgUrl = (String) params.get("imgUrl");
        int type = Integer.parseInt((String)params.get("type"));
        int insertToXs = SysAddIdeaService.inserIdeaInfoToXs(ideaID,appCode,advertCode);
        return R.ok().put("data",SysAddIdeaService.insertIdea(ideaID,ideaName,userName,ideaCost,isOpen,status,advertCode,appCode,appId,imgUrl,type));
    }


    @GetMapping("/queryUsedAdverterCode")
    public R queryUsedAdverterCode(@RequestParam Map<String, String> params){
        String username = params.get("username");
        String appCode = params.get("appCode");
        return R.ok().put("data", SysAddIdeaService.queryUsedAdverterCode(username,appCode));
    }


    @GetMapping("/querIdeaByIdeaID")
    public R querIdeaByIdeaID(@RequestParam Map<String, String> params){
        String ideaID = params.get("ideaID");
        return R.ok().put("data", SysAddIdeaService.querIdeaByIdeaID(ideaID));
    }

    @PostMapping("/updateIdea")
    public R updateIdea(@RequestParam Map<String, String> params){
        String ideaName = params.get("ideaName");
        int type = Integer.parseInt((String)params.get("type"));
        String imgUrl = (String) params.get("imgUrl");
        float ideaCost = Float.parseFloat((String)params.get("ideaCost"));
        String appId = (String) params.get("appId");
        String advertCode = (String) params.get("advertCode");
        int status = Integer.parseInt((String)params.get("status"));
        String ideaID = (String) params.get("ideaID");
        return R.ok().put("data", SysAddIdeaService.updateIdea(ideaName,type,imgUrl,ideaCost,appId,advertCode,status,ideaID));
    }

    @PostMapping("/updateIdeaName")
    public R updateIdeaName(@RequestParam Map<String, String> params){
        String ideaName = (String)params.get("ideaName");
        String ideaID = (String) params.get("ideaID");
        return R.ok().put("data", SysAddIdeaService.updateIdeaName(ideaName,ideaID));
    }

    @PostMapping("/updateIdeaCost")
    public R updateIdeaCost(@RequestParam Map<String, String> params){
        float ideaCost = Float.parseFloat((String)params.get("ideaCost"));
        String ideaID = (String) params.get("ideaID");
        return R.ok().put("data", SysAddIdeaService.updateIdeaCost(ideaCost,ideaID));
    }

    @PostMapping("/updateIdeaPriceAndStatus")
    public R updateIdeaPriceAndStatus(@RequestParam Map<String, String> params){
        String isOpen = (String) params.get("isOpen");
        int status = Integer.parseInt((String)params.get("status"));
        String ideaID = (String) params.get("ideaID");
        return R.ok().put("data", SysAddIdeaService.updateIdeaPriceAndStatus(isOpen,status,ideaID));
    }

    /**
     * ????????????
     */
    @GetMapping("/ideaNum")
    public R ideaNum(@RequestParam Map<String, String> params){
        String username = params.get("username");
        return R.ok().put("data", SysAddIdeaService.getIdeaNumWithUsername(username));
    }

    @GetMapping("/tableData")
    public R tableData(@RequestParam Map<String, String> params){
        String username = params.get("username");
        String starttime = params.get("starttime");
        String endtime = params.get("endtime");
        String searchIName = "%"+params.get("searchIName")+"%";
        int status = Integer.parseInt(params.get("status"));
        String isToday = params.get("isToday");
        List<Map<String,Object>> result = new ArrayList<>();
        // ?????????????????????????????????????????????????????????
        List<SysIdeaInfoEntity> info = SysAddIdeaService.getUserIdeaTimeInfo1(username,searchIName);
        for (int i=0;i<info.size();i++){
            SysIdeaInfoEntity row = info.get(i);
            if (status == 0 || status == row.status){
                // ??????????????????????????????
                Map<String,Object> temp = new HashMap<>();
                NumberFormat formatter = new DecimalFormat("0.00");
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                Date createdate = row.createDate;
                String createDate=sdf.format(createdate);
                // ????????????????????????????????????????????????
                List<String> resultTime = SysDataAnlysisService.compareTime(starttime,endtime,createDate);
                if (resultTime.get(2).equals("after") && isToday.equals("false")) {
                    // ??????????????????????????????
                    // ??????????????????
                    temp.put("ideaId",row.ideaID);
                    temp.put("ideaName",row.ideaName);
                    if (row.isOpen.equals("Y")){
                        temp.put("ifPut",true);
                    } else {
                        temp.put("ifPut",false);
                    }
                    temp.put("price",row.ideaCost);
                    temp.put("appId",row.appId);
                    temp.put("exposure",0);
                    temp.put("clicks",0);
                    temp.put("activate",0);
                    temp.put("clickRate","0%");
                    temp.put("activateRate","0%");
                    temp.put("clickPrice",0);
                    temp.put("activatePrice",0);
                    temp.put("consume",0);
                    temp.put("creatDate",row.createDate);
                    if (row.status == 1){
                        temp.put("status","??????");
                    } else if (row.status == 2){
                        temp.put("status","??????");
                    } else if (row.status == 4){
                        temp.put("status","????????????");
                    }
                    // ?????????result???
                    result.add(temp);
                } else {
                    // ??????????????????????????????
                    //?????????????????????(???????????????)
                    String ideaId = row.ideaID;
                    SysIdeaInfoEntity info2 = SysAddIdeaService.getUserIdeaTimeInfo2(resultTime.get(0),resultTime.get(1),ideaId);
                    int exposure = info2.totalExp;
                    float totalCost = info2.totalCost;

                    // ????????????????????????????????????????????????????????????
                    String advertCode = row.advertCode;
                    String appCode = row.appCode;
                    List<SysClickEntity> click = SysDataAnlysisService.getClickHistroy(advertCode,appCode,resultTime.get(0),resultTime.get(1));
                    int totalClick = 0;
                    int totalActive = 0;
                    for (int j=0;j<click.size();j++){
                        totalClick+=click.get(j).clickCnt;
                        totalActive+=click.get(j).activeCnt;
                    }
                    if (isToday.equals("true")){
                        // ?????????????????????????????????????????????????????????
                        Calendar nowTime = Calendar.getInstance();
                        Calendar nowTime2 = Calendar.getInstance();
                        String tablename = SysTestTaskService.getTableName(nowTime);
                        int minute = nowTime2.get(Calendar.MINUTE);
                        int exceedMinute = minute%15;
                        nowTime2.add(Calendar.MINUTE, -(exceedMinute+1));

//                        String endSearchTime = SysTestTaskService.getStringTime(nowTime);
                        // ?????????
                        int year = nowTime.get(Calendar.YEAR);
                        int year2 = nowTime2.get(Calendar.YEAR);
                        // ?????????
                        int month = nowTime.get(Calendar.MONTH);
                        int month2 = nowTime2.get(Calendar.MONTH);
                        // ?????????
                        int date = nowTime.get(Calendar.DATE);
                        int date2 = nowTime2.get(Calendar.DATE);
                        // ?????????
                        int hour2 = nowTime2.get(Calendar.HOUR_OF_DAY);
                        // ????????????????????????
                        int newMinute = nowTime2.get(Calendar.MINUTE);
                        String startSearchTime = year + "-" + (month + 1) + "-" + date + " 00:00:00";
                        String endSearchTime = year2 + "-" + (month2 + 1) + "-" + date2 + " " + hour2 + ":" + newMinute +":59";

                        // ???????????????
                        int todayClick = SysTestTaskService.getIdeaClick(advertCode,appCode,startSearchTime,endSearchTime,tablename);
                        totalClick+=todayClick;
                        // ???????????????
                        int todayDown = SysAddIdeaService.getIdeaTodayDownload(advertCode,appCode,startSearchTime,endSearchTime);
                        totalActive+=todayDown;
                        // ?????????????????????
                        SysIdeaInfoTodayEntity expAndCost = SysAddIdeaService.getIdeaTodayExpAndCost(row.ideaID);
                        int todayExp = expAndCost.exposure;
                        exposure+= todayExp;
                        float todayCost = expAndCost.cost;
                        totalCost+=todayCost;
                    }
                    // ??????????????????
                    temp.put("ideaId",row.ideaID);
                    temp.put("ideaName",row.ideaName);
                    if (row.isOpen.equals("Y")){
                        temp.put("ifPut",true);
                    } else {
                        temp.put("ifPut",false);
                    }
                    temp.put("price",row.ideaCost);
                    temp.put("appId",row.appId);
                    temp.put("exposure",exposure);
                    temp.put("clicks",totalClick);
                    temp.put("activate",totalActive);
                    if (exposure == 0){
                        temp.put("clickRate","0%");
                        temp.put("activateRate","0%");
                    } else {
                        temp.put("clickRate",formatter.format(((float)totalClick/exposure)*100)+"%");
                        temp.put("activateRate",formatter.format(((float)totalActive/totalClick)*100)+"%");
                    }
                    if (totalClick == 0){
                        temp.put("clickPrice",0);
                    } else {
                        temp.put("clickPrice",formatter.format(totalCost/totalClick));
                    }
                    if (totalActive == 0){
                        temp.put("activatePrice",0);
                    } else {
                        temp.put("activatePrice",formatter.format(totalCost/totalActive));
                    }
                    temp.put("consume",formatter.format(totalCost));
                    temp.put("creatDate",row.createDate);
                    if (row.status == 1){
                        temp.put("status","??????");
                    } else if (row.status == 2){
                        temp.put("status","??????");
                    } else if (row.status == 4){
                        temp.put("status","????????????");
                    }
                    // ?????????result???
                    result.add(temp);
                }
            }
        }
        return R.ok().put("data", result);
    }
}
