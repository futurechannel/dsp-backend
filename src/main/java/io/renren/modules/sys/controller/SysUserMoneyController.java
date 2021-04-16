/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.sys.controller;

import io.renren.common.utils.Base64Coded;
import io.renren.common.utils.R;
import io.renren.modules.sys.entity.SysUserEntity;
import io.renren.modules.sys.service.SysConfigService;
import io.renren.modules.sys.service.SysUserMoneyService;
import io.renren.modules.sys.service.SysUserService;
import io.renren.modules.sys.service.SysUserTokenService;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


/**
 * 系统用户
 *
 * @author Mark sunlightcs@gmail.com
 */
@RestController
@RequestMapping("/user/money")
public class SysUserMoneyController extends AbstractController {
	@Autowired
	private SysUserMoneyService SysUserMoneyService;
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private SysUserTokenService sysUserTokenService;
	@Autowired
	private SysConfigService sysConfigService;

	/**
	 * 获取用户充值记录
	 */
	@GetMapping("/list")
	public R list(@RequestParam Map<String, String> params){
		String userId = params.get("userId");
		return R.ok().put("data", SysUserMoneyService.queryMoneyLogByUsername(userId));
	}

	/**
	 * 用户注册
	 */
	@PostMapping("/addUser")
	public R addUser(@RequestBody Map<String, String> params){
		String userid = params.get("userid");
		String password = params.get("password");
		String email = params.get("email");
		String type = params.get("type");

		if("0".equals(type)) {
            int count = SysUserMoneyService.insertUser(userid, password, email);
            if(count<1){
                return R.error("请勿重复注册");
            }

            Map<String, String> map = new HashMap<>();
            map.put("username", userid);
            String activeUrl = sysConfigService.getValue("ACTIVE_URL") + sysUserService.encodeToken(map);
            boolean result = sysUserService.sendEmail(email, "四通广告平台激活邮件", "请点击如下链接激活账户：" + activeUrl);

            if (result) {
                return R.ok().put("data", count);
            } else {
                return R.error(601,"邮件发送失败");
            }
        } else {
            Map<String, String> map = new HashMap<>();
            map.put("username", userid);
            String activeUrl = sysConfigService.getValue("ACTIVE_URL") + sysUserService.encodeToken(map);
            boolean result = sysUserService.sendEmail(email, "四通广告平台激活邮件", "请点击如下链接激活账户：" + activeUrl);
            if (result) {
                return R.ok();
            } else {
                return R.error(601,"邮件发送失败");
            }
        }


	}

	/**
	 * 用户登录
	 */
	@PostMapping("/login")
	public Map<String, Object> login(@RequestBody Map<String, String> params)throws IOException {
		String username = params.get("username");
		String password = params.get("password");
		//用户信息
		SysUserEntity user = sysUserService.queryByUserName(username);

		//账号不存在、密码错误
		if(user == null || !user.getPassword().equals(new Sha256Hash(password, user.getSalt()).toHex())) {
			return R.error("账号或密码不正确");
		}

		if(user.getStatus() != 1){
			return R.error("账号未激活");
		}

		//生成token，并保存到数据库
		R r = sysUserTokenService.createToken(user.getUserId());
		return r;
	}

	@GetMapping("/active")
	public Map<String, Object> active(@RequestParam Map<String, String> params)throws IOException {
		String code = params.get("code");

		if(StringUtils.isEmpty(code)){
			return R.error("code不能为空");
		}

		Map<String,String> map = sysUserService.decodeToken(code);

        String username=map.get("username");
        if(StringUtils.isEmpty(username)){
            return R.error("非法code");
        }


		//用户信息
		SysUserEntity user = sysUserService.queryByUserName(username);

        if(user==null){
            return R.error("用户不存在，请先注册");
        }

        if(user.getStatus() == 1){
            return R.error("请勿重发激活");
        }

        int count = sysUserService.updateStatusByUserName(username);

        if(count<1){
            return R.error("激活失败");
        }

		//生成token，并保存到数据库
		R r = sysUserTokenService.createToken(user.getUserId());
		r.put("username",username);
		return r;
	}


	@PostMapping("/insertUserToBalance")
	public R insertUserToBalance(@RequestParam Map<String, String> params){
		String username = params.get("username");
		int balance = Integer.parseInt((String)params.get("balance"));
		return R.ok().put("data", SysUserMoneyService.insertUserToBalance(username,balance));
	}

}
