/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren.modules.oss.controller;

import io.renren.modules.oss.service.SysOssService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.springframework.ui.Model;


/**
 * 文件上传
 *
 * @author Mark sunlightcs@gmail.com
 */
@RestController
@RequestMapping("/popularize")
public class SysUploadImgController {
	@Autowired
	private SysOssService sysOssService;

	/**
	 * 上传文件
	 */
	@PostMapping("/upload") // 等价于 @RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String uplaod(HttpServletRequest req, @RequestParam("file") MultipartFile file, Model m) {//1. 接受上传的文件  @RequestParam("file") MultipartFile file
		String result = "";
		try {
			//2.根据时间戳创建新的文件名，这样即便是第二次上传相同名称的文件，也不会把第一次的文件覆盖了
			String fileName = System.currentTimeMillis() + file.getOriginalFilename();
			//3.通过req.getServletContext().getRealPath("") 获取当前项目的真实路径，然后拼接前面的文件名
			//String destFileName = req.getServletContext().getRealPath("") + "uploaded" + File.separator + fileName;
//			String destFileName =  "C:\\Users\\98686\\Desktop\\Git\\dsp\\upload" + File.separator + fileName;
			String destFileName =  "/dsp/uploadImg" + File.separator + fileName;
			//4.第一次运行的时候，这个文件所在的目录往往是不存在的，这里需要创建一下目录（创建到了webapp下uploaded文件夹下）
			File destFile = new File(destFileName);
			destFile.getParentFile().mkdirs();
			//5.把浏览器上传的文件复制到希望的位置
			file.transferTo(destFile);
			//6.把文件名放在model里，以便后续显示用
			m.addAttribute("fileName", fileName);
			result = destFileName;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return "上传失败," + e.getMessage();
		} catch (IOException e) {
			e.printStackTrace();
			return "上传失败," + e.getMessage();
		}

		return result;
	}
}
