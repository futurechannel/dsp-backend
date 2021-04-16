package io.renren.modules.sys.controller;

import io.renren.common.utils.R;
import io.renren.modules.sys.service.SysAdvertInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/advertInfo")
public class SysAdvertInfoController extends AbstractController {
    @Autowired
    private SysAdvertInfoService SysAdvertInfoService;

    @GetMapping("/getAdverterCode")
    public R queryAdverterCode(@RequestParam Map<String, String> params){
        String appCode = params.get("appCode");
        return R.ok().put("data", SysAdvertInfoService.queryAdverterCode(appCode));
    }
}

