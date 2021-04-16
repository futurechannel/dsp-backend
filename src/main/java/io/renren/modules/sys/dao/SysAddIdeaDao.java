package io.renren.modules.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.datasource.annotation.DataSource;
import io.renren.modules.sys.entity.SysIdeaInfoEntity;
import io.renren.modules.sys.entity.SysIdeaInfoTodayEntity;
import org.apache.ibatis.annotations.Mapper;
import java.util.Date;
import java.util.List;

@Mapper
public interface SysAddIdeaDao extends BaseMapper<SysIdeaInfoEntity>{
    /**
     * 插入新创意
     */
    int insertIdea(String ideaID, String ideaName,String userName,float ideaCost,String isOpen,int status,String advertCode,String appCode,String appId,String imgUrl,int type);

    /**
     * 查询已使用的广告媒体
     */
    List<String> queryUsedAdverterCode(String userName,String appCode);

    /**
     * 查询某个ideaID的创意
     */
    SysIdeaInfoEntity querIdeaByIdeaID(String ideaID);

    /**
     * 修改创意信息
     */
    Integer updateIdea(String ideaName,int type,String imgUrl,float ideaCost,String appId,String advertCode,int status,String ideaID);

    /**
     * 修改创意名称
     */
    Integer updateIdeaName(String ideaName,String ideaID);

    /**
     * 修改创意价格
     */
    Integer updateIdeaCost(float ideaCost,String ideaID);

    /**
     * 修改创意投放状态
     */
    Integer updateIdeaPriceAndStatus(String isOpen,int status, String ideaID);

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
