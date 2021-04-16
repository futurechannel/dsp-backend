/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.modules.sys.entity.SysUserMoneyEntity;

import java.util.List;
import java.util.Map;


/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
public interface SysUserMoneyService extends IService<SysUserMoneyEntity> {

	/**
	 * 根据用户名，查询用户充值记录
	 */
	List<SysUserMoneyEntity> queryMoneyLogByUsername(String username);

	/**
	 * 添加用户
	 */
	int insertUser(String username, String password,String email);

	/**
	 * 添加用户到余额表
	 */
	Integer insertUserToBalance(String username,int balance);

}
