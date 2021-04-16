package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.datasource.annotation.DataSource;
import io.renren.modules.sys.dao.SysAppInfoDao;
import io.renren.modules.sys.entity.SysAppInfoEntity;
import io.renren.modules.sys.service.SysAppInfoService;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("sysAppInfoService")
public class SysAppInfoServiceImpl extends ServiceImpl<SysAppInfoDao, SysAppInfoEntity> implements SysAppInfoService {
	@Override
	@DataSource(value = "mysqlOther")
	public SysAppInfoEntity queryAppCode(String appId){
		return  baseMapper.queryAppCode(appId);
	}
}