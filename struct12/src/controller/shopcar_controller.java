package controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.client_service;
import service.product_service;
import service.shopcar_service;
import utils.JsonData;
import utils.SearchInfo;
import utils.tools;
import MODEL.client;
import MODEL.product;
import MODEL.shopcar;

@Controller
@RequestMapping("shopcar")
public class shopcar_controller extends Basic_controller<shopcar> {
	@Resource(name="shopcar_serviceImpl")
	shopcar_service service;
	
	@Resource(name="client_serviceImpl")
	client_service cservice;
	
	@Resource(name="product_serviceImpl")
	product_service pservice;
	
	@Override
	public String add(ModelMap m, HttpServletRequest req) {
		m.put("questionlist", tools.question);
		return super.add(m, req);
	}
	
	@RequestMapping("insert1")
	public @ResponseBody JsonData addnew1(ModelMap m, HttpServletRequest req, shopcar b) {
		//生成订单时，获取当前用户，当前时间，获取商品id，数量，根据商品id，获取金额，折扣，last操作员为空
		b.setClient_id(15);
		service.insert(b);
		return new JsonData(1);
	}
	@RequestMapping("update1")
	public @ResponseBody JsonData update1(int ID,ModelMap m, HttpServletRequest req, shopcar b) {
		//可以修改订单状态
		service.update(b);
		return new JsonData(1);
	}
}
