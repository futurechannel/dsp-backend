package io.renren.modules.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.sys.entity.SysAdvertInfoEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface SysAdvertInfoDao extends BaseMapper<SysAdvertInfoEntity> {
	
	/**
	 * 根据appCode，查询adverterCode
	 */
	List<SysAdvertInfoEntity> queryAdverterCode(String appCode);
}
