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
import java.util.Date;

/**
 * 曝光历史表
 *
 * @author Mark sunlightcs@gmail.com
 */
@Data
@TableName("exposure_history")
public class SysExposureEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * ID
	 */
	@TableId
	private Long id;

	/**
	 * 创意id
	 */
	public String idea;


	/**
	 * 曝光量
	 */
	public int exposure;

	/**
	 * 总消费
	 */
	public String totalCost;

	/**
	 * 日期
	 */
	public String createDate;

}
