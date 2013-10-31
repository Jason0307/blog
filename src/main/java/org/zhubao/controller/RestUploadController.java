package org.zhubao.controller;

import java.io.File;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.zhubao.util.FileOperateUtil;

@Controller
public class RestUploadController {
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String upload() {
		return "upload";
	}

	@RequestMapping(value = "/uploadify", method = RequestMethod.POST)
	public @ResponseBody
	String uploadify(HttpServletRequest request, long itemId, Model modle)
			throws Exception {
		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;
		System.out.println("here");
		Map<String, MultipartFile> fileMap = mRequest.getFileMap();
		System.out.println(fileMap);
		String uploadDir = request.getSession().getServletContext()
				.getRealPath("/")
				+ "/" + FileOperateUtil.UPLOADDIR;
		File file = new File(uploadDir);

		if (!file.exists()) {
			file.mkdir();
		}

		String fileName = null;
		String storeName = "";
		for (Iterator<Map.Entry<String, MultipartFile>> it = fileMap.entrySet()
				.iterator(); it.hasNext();) {
			Map.Entry<String, MultipartFile> entry = it.next();
			MultipartFile mFile = entry.getValue();
			fileName = mFile.getOriginalFilename();
			storeName = FileOperateUtil.rename(fileName);
			FileUtils.copyInputStreamToFile(mFile.getInputStream(), new File(
					uploadDir + storeName));
		}
		return storeName;
	}

	@RequestMapping(value = "/semantic", method = RequestMethod.GET)
	public String semantic() {
		return "semantic";
	}

	@RequestMapping(value = "/weibo", method = RequestMethod.GET)
	public String weibo() {
		return "weibo";
	}

}
