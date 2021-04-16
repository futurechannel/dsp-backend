package io.renren.modules.sys.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.renren.common.validator.group.AddGroup;
import io.renren.common.validator.group.UpdateGroup;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;

/**
 * 应用信息
 *
 */
@Data
@TableName("app_info")
public class SysAppInfoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	private String appCode;
//	private String appName;
	private String appId;
	private String lowestPrice;
}
