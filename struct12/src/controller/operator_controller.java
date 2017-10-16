package controller;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.operator_service;
import service.power_service;
import utils.JsonData;
import utils.MD5Util;
import utils.SearchInfo;
import utils.autoCreate;
import MODEL.operator;
import MODEL.power;

@Controller
@RequestMapping("operator")
public class operator_controller extends Basic_controller<operator> {
	@Resource(name="operator_serviceImpl")
	operator_service service;
	
	@Resource(name="power_serviceImpl")
	power_service pservice;
	
	@RequestMapping("insert1")
	public @ResponseBody JsonData addnew1(ModelMap m, HttpServletRequest req, operator b) {
		if(service.getByAccount(b.getAccount())>0){
			return new JsonData(0);
		}
		b.setStatus(0);
		b.setLastdate(autoCreate.Now());
		b.setPowers("0");
		b.setPass(MD5Util.MD5("123"));
		service.insert(b);
		return new JsonData(1);
	}
	@RequestMapping("update1")
	public @ResponseBody JsonData update1(int ID,ModelMap m, HttpServletRequest req, operator b) {
		if(service.getByAccount(b.getAccount())>0){
			return new JsonData(0);
		}
		service.update(b);
		return new JsonData(1);
	}
	@RequestMapping("updatepowers")
	public @ResponseBody JsonData updatepowers(String newpowers,int ID,ModelMap m, HttpServletRequest req){
		newpowers=newpowers.substring(0, newpowers.length()-1);
		System.out.println(newpowers);
		operator o =new operator(newpowers,ID);
		service.updatepowers(o);
		return new JsonData(1);
	}
	@RequestMapping("powers")
	public String powers(int ID,ModelMap m, HttpServletRequest req){
		m.put("ID", ID);
		//获取所有的权限
		return "operator/updatepowers";
	}
	@RequestMapping("updatepass")
	public @ResponseBody JsonData updatepass(int ID,String code,ModelMap m, HttpServletRequest req,String oldpass,String newpass1,String newpass2){
		String c = req.getSession().getAttribute("randomCode").toString();
		if(!code.equalsIgnoreCase(c)){
			return new JsonData(-1);
		}
		
		if(service.getbyid(ID).getPass().equals(MD5Util.MD5(oldpass))&&newpass1.equals(newpass2)&&newpass1!=null){
			service.updatepass(new operator(ID, MD5Util.MD5(newpass1)));
			return new JsonData(1);
		}else{
			return new JsonData(0);
		}
		
	}
	@RequestMapping("pass")
	public String pass(ModelMap m, HttpServletRequest req){
		operator operator = (MODEL.operator) req.getSession().getAttribute("logininfo");
		m.put("ID", operator.getID());
		return "operator/updatepass";
	}
	@RequestMapping("login")
	public String login(operator o,String code ,ModelMap m, HttpServletRequest req,boolean rememberpass,boolean autologin,HttpServletResponse resp){
		String password = o.getPass();
		o.setPass(MD5Util.MD5(password));
		String c = req.getSession().getAttribute("randomCode").toString();
		System.out.println(c);
		if(!c.equalsIgnoreCase(code)){
			return enterlogin(m, req, resp);
		}
		operator op = service.login(o);
		if(op!=null){
			//登录时间录入 ,
			if(autologin){//自动登录
				Cookie user = new Cookie("operatoraccount",op.getAccount());
				Cookie apassword = new Cookie("operatorpassword",password);
				Cookie re = new Cookie("rememberpass","true");
				Cookie auto = new Cookie("autologin","true");
				resp.addCookie(user);
				resp.addCookie(apassword);
				resp.addCookie(re);
				resp.addCookie(auto);
			}else{
				if(rememberpass){//记住密码
					Cookie user = new Cookie("operatoraccount",op.getAccount());
					Cookie apassword = new Cookie("operatorpassword",password);
					Cookie re = new Cookie("rememberpass","true");
					Cookie auto = new Cookie("autologin","false");
					resp.addCookie(user);
					resp.addCookie(apassword);
					resp.addCookie(re);
					resp.addCookie(auto);
				}else{ //全没有
					Cookie user = new Cookie("operatoraccount",op.getAccount());
					Cookie apassword = new Cookie("operatorpassword","");
					Cookie re = new Cookie("rememberpass","false");
					Cookie auto = new Cookie("autologin","false");
					resp.addCookie(user);
					resp.addCookie(apassword);
					resp.addCookie(re);
					resp.addCookie(auto);
				}
			}
			req.getSession().setAttribute("logininfo", op);

			return enteradmin(m, req, resp);
			
		}else{
			return enterlogin(m, req, resp);
		}
	}
	
	@RequestMapping("enteradmin")
	public String enteradmin(ModelMap m, HttpServletRequest req,HttpServletResponse resp){
	operator os = (operator)req.getSession().getAttribute("logininfo");
	os = service.getbyid(os.getID());
	
	String powers = os.getPowers();
	//操作员表里对应的菜单
	List<power> list =  pservice.getall(new SearchInfo("where ID in ("+powers+")"));//123
	List<power> navfatherlist = new ArrayList<power>();//主菜单是个空值
	//循环该操作员的菜单，找到所有的菜单的主菜单并加入，每个菜单加入子类
	for(int i = 0;i<list.size();i++){
		if(list.get(i).getParent_id()==0){
			System.out.println("进入主类");
			navfatherlist.add(list.get(i));
		}
		if(list.get(i).getParent_id()!=0){
			//父类的菜单
			power p = list.get(i);
			while(p.getParent_id()!=0){
				power ps= pservice.getbyid(p.getParent_id());
				ps.getChildren().add(p);
				p=ps;
			}
			//
			int flag = 0;
			for(int j=0;j<navfatherlist.size();j++){
				if(navfatherlist.get(j).getID()==p.getID()){
					flag=1;
					navfatherlist.get(j).getChildren().add(p.getChildren().get(0));
				}
			}
			if(flag==0)
			navfatherlist.add(p); 
		}
	}
	m.put("navfatherlist", navfatherlist);
	return "admin/index";
	
	
	}
	@RequestMapping("enterlogin")
	public String enterlogin(ModelMap m, HttpServletRequest req,HttpServletResponse resp){
		String user="";
		String  password="";
		boolean rememberpass=false;
		boolean autologin=false;
		boolean flag;
		/*if(req.getAttribute("flag")==null)flag=true;
		else flag = (Boolean) req.getAttribute("flag");*/
		if(m.get("flag")==null)flag=true;
		else flag = (Boolean) m.get("flag");
		    //获取所有Cookie
		    Cookie[] cookies = req.getCookies();
		    //如果浏览器中存在Cookie
		    if (cookies != null && cookies.length > 0) {
		        //遍历所有Cookie
		        for(Cookie cookie: cookies) {
		            //找到name为city的Cookie
		            if (cookie.getName().equals("operatoraccount")){
		                //使用URLDecode.decode()解码,防止中文乱码
		             try {
						user = URLDecoder.decode(cookie.getValue(), "utf-8");
					} catch (UnsupportedEncodingException e) {
					}
		            }
		            if (cookie.getName().equals("operatorpassword")){
		                //使用URLDecode.decode()解码,防止中文乱码
		            	try {
		            		password = URLDecoder.decode(cookie.getValue(), "utf-8");
		            	} catch (UnsupportedEncodingException e) {
						}
		            }
		            if (cookie.getName().equals("rememberpass")){
		                //使用URLDecode.decode()解码,防止中文乱码
		            	
		            		String remember =cookie.getValue();
		            		if(remember.equals("false")){
		            			rememberpass=false;
		            		}else{
		            			rememberpass=true;
		            		}
		            }
		            if (cookie.getName().equals("autologin")){
		                //使用URLDecode.decode()解码,防止中文乱码
		            		String auto =cookie.getValue();
		            		if(auto.equals("false")){
		            			autologin=false;
		            		}else{
		            			autologin=true;
		            		}
		            }
		        }
		    }
		    if(autologin&&flag){
		    	ModelMap m1 = new ModelMap();
		    	m1.put("flag", true);
				operator o = new operator(user, password);
				
				return login(o,req.getSession().getAttribute("randomCode").toString(),new ModelMap(), req, true, true, resp);
		}
		m.put("account", user);
		m.put("password", password);
		m.put("autologin", autologin);
		m.put("rememberpass", rememberpass);
		return "operator/login";
	}
	@RequestMapping("logout")
	public String logout(ModelMap m, HttpServletRequest req,HttpServletResponse resp){
		req.getSession().removeAttribute("logininfo");
		//退出登录时，去掉session里的info
		//退出登录时。把cookie里的auto改为false
		m.put("flag", false);
		Cookie c= new Cookie("autologin", "false");
		resp.addCookie(c);
		return enterlogin(m, req, resp);
	}
	
}
