package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.datasource.annotation.DataSource;
import io.renren.modules.sys.entity.SysIdeaInfoTodayEntity;
import io.renren.modules.sys.service.SysAddIdeaService;
import io.renren.modules.sys.dao.SysAddIdeaDao;
import io.renren.modules.sys.entity.SysIdeaInfoEntity;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("sysAddIdeaService")
public class SysAddIdeaServiceImpl extends ServiceImpl<SysAddIdeaDao, SysIdeaInfoEntity> implements SysAddIdeaService{

    @Override
    @DataSource(value = "mysqlSelf")
    public int insertIdea(String ideaID, String ideaName, String userName, float balanceBudget, String isOpen, int status, String advertCode, String appCode, String appId, String imgUrl,int type) {
        return baseMapper.insertIdea(ideaID,ideaName,userName,balanceBudget,isOpen,status,advertCode,appCode,appId,imgUrl,type);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public List<String> queryUsedAdverterCode(String userName, String appCode){
        return baseMapper.queryUsedAdverterCode(userName,appCode);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public SysIdeaInfoEntity querIdeaByIdeaID(String ideaID){
        return baseMapper.querIdeaByIdeaID(ideaID);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public Integer updateIdea(String ideaName,int type,String imgUrl,float ideaCost,String appId,String advertCode,int status,String ideaID){
        return baseMapper.updateIdea(ideaName,type,imgUrl,ideaCost,appId,advertCode,status,ideaID);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public Integer updateIdeaName(String ideaName,String ideaID){
        return baseMapper.updateIdeaName(ideaName,ideaID);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public Integer updateIdeaCost(float ideaCost,String ideaID){
        return baseMapper.updateIdeaCost(ideaCost,ideaID);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public Integer updateIdeaPriceAndStatus(String isOpen, int status,String ideaID){
        return baseMapper.updateIdeaPriceAndStatus(isOpen,status,ideaID);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public List<SysIdeaInfoEntity> getUserIdeaTimeInfo(String username,String starttime,String endtime,String searchIName){
        return baseMapper.getUserIdeaTimeInfo(username,starttime,endtime,searchIName);
    }

    @Override
    @DataSource(value = "mysqlSelf")
    public List<SysIdeaInfoEntity> getUserIdeaTimeInfo1(String username,String searchIName){
        return baseMapper.getUserIdeaTimeInfo1(username,searchIName);
    }
    @Override
    @DataSource(value = "mysqlSelf")
    public SysIdeaInfoEntity getUserIdeaTimeInfo2(String starttime,String endtime,String ideaID){
        return baseMapper.getUserIdeaTimeInfo2(starttime,endtime,ideaID);
    }

    /**
     * 获取某创意今日下载量
     */
    @Override
    @DataSource(value = "mysqlOther")
    public int getIdeaTodayDownload(String advertCode,String appCode,String starttime,String endtime){
        return baseMapper.getIdeaTodayDownload(advertCode,appCode,starttime,endtime);
    }

    /**
     * 获取今天某创意的曝光与消费
     */
    @Override
    @DataSource(value = "mysqlSelf")
    public SysIdeaInfoTodayEntity getIdeaTodayExpAndCost(String idea){
        return baseMapper.getIdeaTodayExpAndCost(idea);
    }

    /**
     * 获取某用户的创意数量
     */
    @Override
    @DataSource(value = "mysqlSelf")
    public int getIdeaNumWithUsername(String username){
        return baseMapper.getIdeaNumWithUsername(username);
    }


    /**
     * 曝光系数表插入创意信息
     */
    @Override
    @DataSource(value = "mysqlSelf")
    public Integer inserIdeaInfoToXs(String ideaId,String appCode,String advertCode){
        return baseMapper.inserIdeaInfoToXs(ideaId,appCode,advertCode);
    }
}
