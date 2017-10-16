package controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.pics_service;
import service.productType_service;
import service.product_service;
import utils.JsonData;
import utils.SearchInfo;
import MODEL.operator;
import MODEL.pics;
import MODEL.product;

@Controller
@RequestMapping("product")
public class product_controller extends Basic_controller<product> {
	@Resource(name="product_serviceImpl")
	product_service service;
	
	@Resource(name="productType_serviceImpl")
	productType_service pservice;
	
	@Resource(name="pics_serviceImpl")
	pics_service picservice;
	
	@Override
	public String add(ModelMap m, HttpServletRequest req) {
		m.put("typelist", pservice.getall(null));
		return super.add(m, req);
	}
	@Override
	public String edit(int ID, ModelMap m, HttpServletRequest req) {
		m.put("typelist", pservice.getall(null));
		return super.edit(ID, m, req);
	}
	@Override
	public String getall(SearchInfo info, ModelMap m, HttpServletRequest req) {
		List rs = service.getall(info);
		for (int i = 0; i < rs.size(); i++) {
			product product = (MODEL.product) rs.get(i);
			String a =product.getPics();
			if(product.getPics().contains(","))
			a = product.getPics().substring(0, product.getPics().indexOf(","));
			pics p = picservice.getbyid(Integer.valueOf(a));
			product.setPics(p.getUrl());
		}
		m.put("list", rs);  
		return "product/index";
	}
	
	
	@RequestMapping("insert1")
	public @ResponseBody JsonData addnew1(ModelMap m, HttpServletRequest req, product b) {
		operator o = (operator) req.getSession().getAttribute("logininfo");
		b.setCreateoperator_id(o.getID());
		b.setDisc(1);
		b.setSalecount(0);
		service.insert(b);
		return new JsonData(1);
	}
	@RequestMapping("update1")
	public @ResponseBody JsonData update1(ModelMap m, HttpServletRequest req, product b) {
		service.update(b);
		return new JsonData(1);
	}
	
}
