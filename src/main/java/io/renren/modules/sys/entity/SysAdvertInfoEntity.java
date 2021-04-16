package io.renren.modules.sys.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 广告媒体信息
 *
 */
@Data
@TableName("advert_info")
public class SysAdvertInfoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	private String adverterCode;
	private String appCode;
	private String mediaName;
}
