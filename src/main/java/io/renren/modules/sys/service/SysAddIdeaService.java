package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.modules.sys.entity.SysIdeaInfoEntity;
import io.renren.modules.sys.entity.SysIdeaInfoTodayEntity;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface SysAddIdeaService extends IService<SysIdeaInfoEntity> {
    int insertIdea(String ideaID, String ideaName, String userName, float ideaCost, String isOpen, int status, String advertCode, String appCode, String appId, String imgUrl,int type);
    List<String> queryUsedAdverterCode(String userName,String appCode);
    SysIdeaInfoEntity querIdeaByIdeaID(String ideaID);
    Integer updateIdea(String ideaName,int type,String imgUrl,float ideaCost,String appId,String advertCode,int status,String ideaID);
    Integer updateIdeaName(String ideaName,String ideaID);
    Integer updateIdeaCost(float ideaCost,String ideaID);
    Integer updateIdeaPriceAndStatus(String isOpen, int status,String ideaID);

    /**
     * 获取用户时间段内的创意数据（不包括今天）
     */
    List<SysIdeaInfoEntity> getUserIdeaTimeInfo(String username,String starttime,String endtime,String searchIName);
    List<SysIdeaInfoEntity> getUserIdeaTimeInfo1(String username,String searchIName);
    SysIdeaInfoEntity getUserIdeaTimeInfo2(String starttime,String endtime,String ideaID);

    /**
     * 获取某创意今日下载量
     */
    int getIdeaTodayDownload(String advertCode,String appCode,String starttime,String endtime);

    /**
     * 获取今天某创意的曝光与消费
     */
    SysIdeaInfoTodayEntity getIdeaTodayExpAndCost(String idea);

    /**
     * 获取某用户的创意数量
     */
    int getIdeaNumWithUsername(String username);

    /**
     * 曝光系数表插入创意信息
     */
    Integer inserIdeaInfoToXs(String ideaId,String appCode,String advertCode);
}
