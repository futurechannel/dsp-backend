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
 * 创意信息表
 *
 */
@Data
@TableName("idea_info")
public class SysIdeaInfoEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    public String ideaID;
    public String ideaName;
    public String userName;
//    public float balanceBudget;
//    public float budget;
    public float ideaCost;
    public Date createDate;
    public String isOpen;
    public int status;
//    private String appPackageName;
    public String advertCode;
    public String appCode;
    public String appId;
    public String imgUrl;
    public int type;
    public int totalExp;
    public float totalCost;
}
