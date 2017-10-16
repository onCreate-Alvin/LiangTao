package controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import service.pics_service;
import utils.JsonData;
import utils.SearchInfo;
import MODEL.pics;

@Controller
@RequestMapping("pics")
public class pics_controller extends Basic_controller<pics>{
	@Resource(name="pics_serviceImpl")
	pics_service service;
	
	@RequestMapping("list")
	public @ResponseBody List<pics> list(String ids){
		return service.getall(new SearchInfo("("+ids+")"));
	}
	
	@RequestMapping("delpic")
	public @ResponseBody JsonData delpic(int id){
		pics info=service.getbyid(id);
		new File(info.getPath()).delete();
		service.del(id);
		return new JsonData(1);
	}
	
	@RequestMapping("upload")
	public @ResponseBody JsonData upload(MultipartFile file,HttpServletRequest req) throws Exception{
		String path=req.getRealPath("../upload");
		String fname=file.getOriginalFilename();		
		String ex="";
		if(fname.lastIndexOf(".")>-1)ex=fname.substring(fname.lastIndexOf("."));
		fname=new SimpleDateFormat("yyyyMMddHHmmssms").format(new Date())+ex;
		File f = new File(path, fname);
		if(!f.exists())f.mkdirs();
		file.transferTo(f);
		ex=req.getContextPath()+"/../upload/"+fname;
		service.insert(new pics(ex, f.getPath()));
		return new JsonData(service.getMaxID(),ex);
	}
}
