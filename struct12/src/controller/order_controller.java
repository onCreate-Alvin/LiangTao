package controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.order_service;
import utils.JsonData;
import utils.MD5Util;
import utils.SearchInfo;
import utils.autoCreate;
import utils.tools;
import MODEL.order;
import MODEL.operator;

@Controller
@RequestMapping("order")
public class order_controller extends Basic_controller<order> {
	@Resource(name="order_serviceImpl")
	order_service service;
	
	@Override
	public String add(ModelMap m, HttpServletRequest req) {
		m.put("orderstatus", tools.orderstatus);
		return super.add(m, req);
	}
	@Override
	public String edit(int ID, ModelMap m, HttpServletRequest req) {
		m.put("orderstatus", tools.orderstatus);
		m.put("uplist", service.getbyid(ID));
		return "order/add";
	}
	
	@RequestMapping("insert1")
	public @ResponseBody JsonData addnew1(ModelMap m, HttpServletRequest req, order b) {
		//���ɶ���ʱ����ȡ��ǰ�û�����ǰʱ�䣬��ȡ��Ʒid��������������Ʒid����ȡ���ۿۣ�last����ԱΪ��
		service.insert(b);
		return new JsonData(1);
	}
	@RequestMapping("update1")
	public @ResponseBody JsonData update1(int ID,ModelMap m, HttpServletRequest req, order b) {
		//�����޸Ķ���״̬
		service.update(b);
		return new JsonData(1);
	}
}
