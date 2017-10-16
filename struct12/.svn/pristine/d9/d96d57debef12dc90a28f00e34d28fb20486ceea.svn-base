package controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.power_service;
import utils.JsonData;
import utils.SearchInfo;
import MODEL.power;

@Controller
@RequestMapping("power")
public class power_controller extends Basic_controller<power> {
	@Resource(name="power_serviceImpl")
	power_service service;
	
	

	@Override
	public String getall(SearchInfo info, ModelMap m, HttpServletRequest req) {
		List rs = service.getall(info);
		m.put("list", rs);
		return "operator/";
	}
	
	
	@RequestMapping("insert1")
	public @ResponseBody JsonData addnew1(ModelMap m, HttpServletRequest req, power b) {
		
		service.insert(b);
		return new JsonData(1);
	}
	@RequestMapping("update1")
	public @ResponseBody JsonData update1(ModelMap m, HttpServletRequest req, power b) {
		service.update(b);
		return new JsonData(1);
	}
	
}
