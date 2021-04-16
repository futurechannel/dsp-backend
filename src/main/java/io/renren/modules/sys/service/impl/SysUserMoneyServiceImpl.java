/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.datasource.annotation.DataSource;
import io.renren.modules.sys.dao.SysUserMoneyDao;
import io.renren.modules.sys.entity.SysUserMoneyEntity;
import io.renren.modules.sys.service.SysUserMoneyService;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;


/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
@Service("sysUserMoneyService")
public class SysUserMoneyServiceImpl extends ServiceImpl<SysUserMoneyDao, SysUserMoneyEntity> implements SysUserMoneyService {

	@Override
	// @DataSource(value = "mysqlOther")
	public List<SysUserMoneyEntity> queryMoneyLogByUsername(String username) {
		return baseMapper.queryMoneyLogByUsername(username);
	}

	@Override
	public int insertUser(String username, String password,String email) {
		Date createTime = new Date();
		String salt = RandomStringUtils.randomAlphanumeric(20);
		String passwordSha = new Sha256Hash(password, salt).toHex();
		return baseMapper.insertUser(username,passwordSha,createTime,salt,email,password);
	}

	@Override
	public Integer insertUserToBalance(String username,int balance) {
		return baseMapper.insertUserToBalance(username,balance);
	}
}