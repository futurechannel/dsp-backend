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
public class SysIdeaInfoTodayEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 创意id
	 */
	public String idea;

	/**
	 * 广告商code
	 */
	public String advertCode;

	/**
	 * 应用code
	 */
	public String appCode;

	/**
	 * 用户名
	 */
	public String username;

	/**
	 * 点击量
	 */
	public int exposure;

	/**
	 * 下载量
	 */
	public float cost;

	/**
	 * 时间对应的系数
	 */
	public int timeXs;

	/**
	 * 创意出价
	 */
	public float ideaCost;

	/**
	 * 是否投放
	 */
	public String isOpen;

	public void setTimeXss(String timeXss) {
		this.timeXss = timeXss;
	}

	public String getTimeXss() {
		return timeXss;
	}

	public String timeXss;
}
