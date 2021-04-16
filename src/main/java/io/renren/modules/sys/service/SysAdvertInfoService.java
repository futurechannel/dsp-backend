package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.modules.sys.entity.SysAdvertInfoEntity;

import java.util.List;


public interface SysAdvertInfoService extends IService<SysAdvertInfoEntity> {
	List<SysAdvertInfoEntity> queryAdverterCode(String appCode);
}
