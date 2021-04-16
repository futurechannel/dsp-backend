package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.modules.sys.entity.SysAppInfoEntity;


import java.util.List;


public interface SysAppInfoService extends IService<SysAppInfoEntity> {
	SysAppInfoEntity queryAppCode(String appId);
}
