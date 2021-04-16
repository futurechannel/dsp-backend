package io.renren.modules.sys.controller;

import io.renren.common.utils.R;
import io.renren.modules.sys.service.SysAppInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/appInfo")
public class SysAppInfoController extends AbstractController {
    @Autowired
    private SysAppInfoService SysAppInfoService;

    @GetMapping("/getAppCodeAndLstPrice")
    public R queryAppCode(@RequestParam Map<String, String> params){
        String appId = params.get("appId");
        return R.ok().put("data", SysAppInfoService.queryAppCode(appId));
    }
}

