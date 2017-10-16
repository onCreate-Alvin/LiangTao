package controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.productType_service;
import utils.JsonData;
import utils.SearchInfo;
import MODEL.productType;

@Controller
@RequestMapping("productType")
public class productType_controller extends Basic_controller<productType> {
	@Resource(name="productType_serviceImpl")
	productType_service service;
	
	@Override
	public String add(ModelMap m, HttpServletRequest req) {
		m.put("typelist", service.getall(new SearchInfo()));
		return super.add(m, req);
	}
	@Override
	public String edit(int ID, ModelMap m, HttpServletRequest req) {
		m.put("typelist", service.getall(new SearchInfo()));
		return super.edit(ID, m, req);
	}
	
	@RequestMapping("insert1")
	public @ResponseBody JsonData addnew1(ModelMap m, HttpServletRequest req, productType b) {
		
		
		
		service.insert(b);
		return new JsonData(1);
	}
	@RequestMapping("update1")
	public @ResponseBody JsonData update1(int ID,ModelMap m, HttpServletRequest req, productType b) {
		
		service.update(b);
		return new JsonData(1);
	}
	
}
