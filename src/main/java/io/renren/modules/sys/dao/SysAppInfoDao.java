package io.renren.modules.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.sys.entity.SysAppInfoEntity;
import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface SysAppInfoDao extends BaseMapper<SysAppInfoEntity> {
	
	/**
	 * 根据appId，查询appCode
	 */
	SysAppInfoEntity queryAppCode(String appId);
}
