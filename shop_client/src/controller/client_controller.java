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

import service.client_service;
import utils.JsonData;
import utils.MD5Util;
import utils.SearchInfo;
import utils.autoCreate;
import utils.tools;
import MODEL.client;
import MODEL.operator;

@Controller
@RequestMapping("client")
public class client_controller extends Basic_controller<client> {
	@Resource(name="client_serviceImpl")
	client_service service;
	
	@Override
	public String add(ModelMap m, HttpServletRequest req) {
		m.put("questionlist", tools.question);
		return super.add(m, req);
	}
	
	@RequestMapping("insert1.action")
	public @ResponseBody JsonData addnew1(ModelMap m, HttpServletRequest req, client b,boolean isaccept,String retweet) {
		//0�����Ѿ�ע�ᣬ1����ע����ɣ�2����δ����Э�飬-1��ʾ�������벻һ�£�
		if(!isaccept){
			return new JsonData(2);
		}
		if(service.getByAccount(b.getTel())>0){
			return new JsonData(0);
		}
		if(!b.getPass().equals(retweet)){
			return new JsonData(-1);
		}
		b.setStatus(0);
		b.setLogincount(0);
		b.setLogindate(autoCreate.Now());
		b.setLastdate(autoCreate.Now());
		b.setPass(MD5Util.MD5(b.getPass()));
		b.setAnswer("�Ѿ�ȡ���ܱ��һ�");
		b.setCreatedate(autoCreate.Now());
		b.setQuestion(1);
		b.setComments("�ޱ�ע");
		service.insert(b);
		return new JsonData(1);
	}
	@RequestMapping("update1.action")
	public @ResponseBody JsonData update1(int ID,ModelMap m, HttpServletRequest req, client b) {
		service.update(b);
		return new JsonData(1);
	}
	@RequestMapping("updatepass.action")
	public @ResponseBody JsonData updatepass(int ID,String code,ModelMap m, HttpServletRequest req,String oldpass,String newpass1,String newpass2){
		String c = req.getSession().getAttribute("randomCode").toString();
		System.out.println(c);
		System.out.println(code);
		if(!code.equalsIgnoreCase(c)){
			return new JsonData(-1);
		}
		if(service.getbyid(ID).getPass().equals(MD5Util.MD5(oldpass))&&newpass1.equals(newpass2)&&newpass1!=null){
			service.updatepass(new client(ID, MD5Util.MD5(newpass1)));
			System.out.println("asdfas");
			return new JsonData(1);
		}else{
			return new JsonData(0);
		}
	}
	@RequestMapping("pass.action")
	public String pass(int ID,ModelMap m, HttpServletRequest req){
		m.put("ID", ID);
		return "client/updatepass";
	}
	@RequestMapping("resetpass")
	public String resetpass(int ID,ModelMap m, HttpServletRequest req){
		service.updatepass(new client(ID, MD5Util.MD5("123")));
		return getall(new SearchInfo(), m, req);
	}
	@RequestMapping("login.action")
	public String login(client o,String code ,ModelMap m, HttpServletRequest req,boolean rememberpass,boolean autologin,HttpServletResponse resp){
		String password = o.getPass();
		if(password==null)return "client/login";
		o.setPass(MD5Util.MD5(password));
		String c= "" ;
		if( req.getSession().getAttribute("randomCode")!=null)
		c = req.getSession().getAttribute("randomCode").toString();
		if(!c.equalsIgnoreCase(code)){
			return enterlogin(m, req, resp);
		}
		client op = service.login(o);
		if(op!=null){
			//��¼ʱ��¼�� ,
			if(autologin){//�Զ���¼
				Cookie user = new Cookie("useraccount",op.getTel());
				Cookie apassword = new Cookie("userpassword",password);
				Cookie re = new Cookie("userrememberpass","true");
				Cookie auto = new Cookie("userautologin","true");
				resp.addCookie(user);
				resp.addCookie(apassword);
				resp.addCookie(re);
				resp.addCookie(auto);
			}else{
				if(rememberpass){//��ס����
					Cookie user = new Cookie("useraccount",op.getTel());
					Cookie apassword = new Cookie("userpassword",password);
					Cookie re = new Cookie("userrememberpass","true");
					Cookie auto = new Cookie("userautologin","false");
					resp.addCookie(user);
					resp.addCookie(apassword);
					resp.addCookie(re);
					resp.addCookie(auto);
				}else{ //ȫû��
					resp.addCookie(new Cookie("useraccount",op.getTel()));
					resp.addCookie( new Cookie("userpassword",""));
					resp.addCookie(new Cookie("userrememberpass","false"));
					resp.addCookie(new Cookie("userautologin","false"));
				}
			}
			req.getSession().setAttribute("userlogininfo", op);
			return "redirect:../main.htm";
		}else{
			return enterlogin(m, req, resp);
		}
	}
	@RequestMapping("enterlogin.action")
	public String enterlogin(ModelMap m, HttpServletRequest req,HttpServletResponse resp){
		String user="";
		String  password="";
		boolean rememberpass=false;
		boolean autologin=false;
		boolean flag;
		if(m.get("flag")==null)flag=true;
		else flag = (Boolean) m.get("flag");
		    //��ȡ����Cookie
		    Cookie[] cookies = req.getCookies();
		    //���������д���Cookie
		    if (cookies != null && cookies.length > 0) {
		        //��������Cookie
		        for(Cookie cookie: cookies) {
		            //�ҵ�nameΪcity��Cookie
		            if (cookie.getName().equals("useraccount")){
		                //ʹ��URLDecode.decode()����,��ֹ��������
		             try {
						user = URLDecoder.decode(cookie.getValue(), "utf-8");
					} catch (UnsupportedEncodingException e) {
					}
		            }
		            if (cookie.getName().equals("userpassword")){
		                //ʹ��URLDecode.decode()����,��ֹ��������
		            	try {
		            		password = URLDecoder.decode(cookie.getValue(), "utf-8");
		            	} catch (UnsupportedEncodingException e) {
						}
		            }
		            if (cookie.getName().equals("userrememberpass")){
		                //ʹ��URLDecode.decode()����,��ֹ��������
		            	
		            		String remember =cookie.getValue();
		            		if(remember.equals("false")){
		            			rememberpass=false;
		            		}else{
		            			rememberpass=true;
		            		}
		            }
		            if (cookie.getName().equals("userautologin")){
		                //ʹ��URLDecode.decode()����,��ֹ��������
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
				client o = new client(user, password);
				return login(o,req.getSession().getAttribute("randomCode").toString(),new ModelMap(), req, true, true, resp);
		}
		m.put("account", user);
		m.put("password", password);
		m.put("autologin", autologin);
		m.put("rememberpass", rememberpass);
		return "client/login";
	}
	@RequestMapping("logout.action")
	public void logout(ModelMap m, HttpServletRequest req,HttpServletResponse resp){
		//������¼״̬
		req.getSession().removeAttribute("userlogininfo");
		m.put("flag", false);
		Cookie c= new Cookie("userautologin", "false");
		resp.addCookie(c);
		try {
			resp.sendRedirect("../main.htm");
		} catch (IOException e) {
		}
		
	}
	@RequestMapping("createcode.action")
	public @ResponseBody JsonData createcode(ModelMap m, HttpServletRequest req,String oldpass,String newpass1,String newpass2){
		String code = "1234";
		System.out.println("��������֤��"+code);
		req.getSession().setAttribute("code", code);
		if(code!=null||code!=""){
			return new JsonData(1);
		}else{
			return new JsonData(0);
		}
	}
	@RequestMapping("retrieve.action")
	public @ResponseBody JsonData retrieve(String code,String tel,String newpass1,String newpass2,ModelMap m, HttpServletRequest req){
		if( req.getSession().getAttribute("code")!=null){
			String a =  (String) req.getSession().getAttribute("code");
			//��ֵ�ŵ�a����Ƴ�session�����ֵ
			req.getSession().removeAttribute("code");
			if(a.equals(code)&&newpass1.equals(newpass2)){
				if(service.getByAccount(tel)<=0){
					return new JsonData(-1);
				}else{
					service.updatepass(new client(tel, MD5Util.MD5(newpass1)));
					return new JsonData(1);
				}
			}else{
				return new JsonData(0);
			}
		}else{
			return new JsonData(0);
		}
	}
}
