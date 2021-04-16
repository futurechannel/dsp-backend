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
@TableName("report_data_day")
public class SysClickEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * ID
	 */
	@TableId
	private Long id;

	/**
	 * 广告商code
	 */
	public String advertCode;

	/**
	 * 应用code
	 */
	public String appCode;

	/**
	 * 点击量
	 */
	public int clickCnt;

	/**
	 * 下载量
	 */
	public int activeCnt;

	/**
	 * 日期
	 */
	public String bizDate;

}
