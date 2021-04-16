/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.sys.entity.SysUserEntity;
import io.renren.modules.sys.entity.SysUserMoneyEntity;
import org.apache.ibatis.annotations.Mapper;
import java.util.Date;
import java.util.List;

/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
@Mapper
public interface SysUserMoneyDao extends BaseMapper<SysUserMoneyEntity> {
	
	/**
	 * 根据用户名，查询用户充值记录
	 */
	List<SysUserMoneyEntity> queryMoneyLogByUsername(String username);

	int insertUser(String username, String password, Date createTime, String salt,String email,String pwd);

	Integer insertUserToBalance(String username,int balance);

}
