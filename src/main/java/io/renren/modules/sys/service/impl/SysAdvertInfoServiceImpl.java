package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.datasource.annotation.DataSource;
import io.renren.modules.sys.dao.SysAdvertInfoDao;
import io.renren.modules.sys.entity.SysAdvertInfoEntity;
import io.renren.modules.sys.service.SysAdvertInfoService;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("sysAdvertInfoService")
public class SysAdvertInfoServiceImpl extends ServiceImpl<SysAdvertInfoDao, SysAdvertInfoEntity> implements SysAdvertInfoService {
	@Override
	@DataSource(value = "mysqlOther")
	public List<SysAdvertInfoEntity> queryAdverterCode(String appCode){
		return  baseMapper.queryAdverterCode(appCode);
	}
}