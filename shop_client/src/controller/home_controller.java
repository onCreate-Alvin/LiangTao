package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.order_service;
import service.pics_service;
import service.productType_service;
import service.product_service;
import service.shopcar_service;
import utils.JsonData;
import utils.SearchInfo;
import MODEL.client;
import MODEL.pics;
import MODEL.product;
import MODEL.productType;
import MODEL.shopcar;
import MODEL.order;


@Controller
public class home_controller {
	@Resource(name="productType_serviceImpl")
	productType_service pservice;
	@Resource(name="product_serviceImpl")
	product_service productservice;
	@Resource(name="pics_serviceImpl")
	pics_service picservice;
	@Resource(name="shopcar_serviceImpl")
	shopcar_service carservice;
	@Resource(name="order_serviceImpl")
	order_service orderservice;
	@RequestMapping("main.htm")
	public String entermain(ModelMap m){
		List<productType> types = pservice.getall(new SearchInfo(""));
		ArrayList<productType> fathertypes = new ArrayList<productType>();
		for(int i = 0;i<types.size();i++){
				for(int j=0;j<types.size();j++){
					if(types.get(i).getParentID()==types.get(j).getID())
						types.get(j).getChildren().add(types.get(i));
			}
		}
		for(int i = 0;i<types.size();i++){
			if(types.get(i).getParentID()==0)fathertypes.add(types.get(i));
		}
		m.put("fathertypes", fathertypes);
		return "main";
	}
	@RequestMapping("products.htm")
	public String products(ModelMap m,int id){
		//通过类别查询商品
		List<product> pros = productservice.getall(new SearchInfo(" where (product.productType="+id+" or productType.parentID = "+id+")"));
		for (int i = 0; i < pros.size(); i++) {
			String ids = pros.get(i).getPics();
			if(ids.contains(",")) ids = ids.substring(0,ids.indexOf(","));
			pros.get(i).setPics(picservice.getbyid(Integer.valueOf(ids)).getUrl());
		}
		m.put("pros", pros);
		return "products";
	}
	@RequestMapping("details.htm")
	public String details(ModelMap m,int id){ //id 为商品id
		product p = productservice.getbyid(id);
		List<pics> ps = picservice.getall(new SearchInfo("("+p.getPics()+" )"));
		for(int i = 0;i<ps.size();i++){
			p.getPs().add(ps.get(i));
		}
		m.put("product", p);
		return "productdetails";
	}
	@RequestMapping("shopcar.htm")
	public String shopcar(ModelMap m,HttpServletRequest req){ 
		//获得登录账号的的购物车中的所有商品
		client c = (client) req.getSession().getAttribute("userlogininfo");
		//获取该用户所有的购物车，通过client找到product
		List<shopcar> shopcars = carservice.getall(new SearchInfo(" where client_id = "+c.getID()));
		ArrayList<product>  pros  = new ArrayList<product>();
		for(int i=0;i<shopcars.size();i++){
			product p = productservice.getbyid(shopcars.get(i).getProduct_id());
			String ids = p.getPics();
			if(ids.contains(",")) ids = ids.substring(0,ids.indexOf(","));
			pics pic = picservice.getbyid(Integer.valueOf(ids));
			p.setPics(pic.getUrl());
			p.setCount(shopcars.get(i).getCount());
			pros.add(p);
		}
		m.put("products", pros);
		return "shopcar";
	}
	
	@RequestMapping("order.htm")
	public @ResponseBody JsonData order(ModelMap m,HttpServletRequest req,order o){ //id 为商品id
		client c = (client) req.getSession().getAttribute("userlogininfo");
		o.setClient_id(c.getID());
		o.setStatus(0);
		o.setDate(utils.autoCreate.Now());
		o.setLastoperator_id(0);
		orderservice.insert(o);
		//client_id product_id count amount disc  data status lastoperator_id
		return new JsonData(1);
	}
}
