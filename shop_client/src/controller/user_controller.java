package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import MODEL.pics;
import MODEL.product;

import service.pics_service;
import service.product_service;
import utils.SearchInfo;


@Controller
public class user_controller {
	@Resource(name="product_serviceImpl")
	product_service service;
	@Resource(name="pics_serviceImpl")
	pics_service picservice;
	
	@RequestMapping("details")
	public String details(int id,ModelMap m, HttpServletRequest req){
		//商品详情   [商品，该商品所有的图片]
		product p = service.getbyid(id);
		List<pics> pics = picservice.getall(new SearchInfo("("+p.getPics()+")"));
		m.put("pics", pics);
		m.put("product", p);
		return "productdetails";
	}
}
