/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 点击历史表
 *
 * @author Mark sunlightcs@gmail.com
 */
@Data
@TableName("idea_info")
public class SysIdeaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 广告商code
	 */
	public String advertCode;

	/**
	 * 应用code
	 */
	public String appCode;

	/**
	 * 创意id
	 */
	public String idea;

	/**
	 * 创意名称
	 */
	public String iname;

	/**
	 * 所属用户名
	 */
	public String username;

	/**
	 * 创意创建时间
	 */
	public String createDate;

}
