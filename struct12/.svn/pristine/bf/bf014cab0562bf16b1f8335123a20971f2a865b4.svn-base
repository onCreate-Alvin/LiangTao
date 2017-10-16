package controller;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import service.BasicService;
import utils.SearchInfo;
import utils.autoCreate;
import utils.tools;

public class Basic_controller<T>{
	SearchInfo info; 
	private BasicService<T> getService(){
		try {
			Field f = getClass().getDeclaredField("service");
			f.setAccessible(true);
			return (BasicService) f.get(this);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
	private String getTypename(){
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
		Class cls = (Class)type.getActualTypeArguments()[0];
		return cls.getSimpleName();
	}
	@RequestMapping("init")
	public String getall(SearchInfo info,ModelMap m,HttpServletRequest req) {
		List rs = getService().getall(info);
		m.put("list", rs);
		return getTypename()+"/index";
	}
	@RequestMapping("del")
	public  String  del(int id,ModelMap m,HttpServletRequest req) {
		getService().del(id);
		if(info.getRowcount()%info.getMaxrow()==1&&info.getRowcount()!=0){
			info.setPageno(info.getPageno()-1);
		}
		return getall(info, m, req);
	}
	@RequestMapping("add")
	public  String  add(ModelMap m,HttpServletRequest req){
		return getTypename()+"/add";
	}
	@RequestMapping("edit")
	public  String  edit(int ID,ModelMap m,HttpServletRequest req){
		m.put("uplist", getService().getbyid(ID));
		m.put("statuslist",tools.status);
		return getTypename()+"/add";
	}
	@RequestMapping("update")
	public  String  update(ModelMap m,HttpServletRequest req,T b){
		getService().update(b);
		return getall(info, m, req);
	}
	@RequestMapping("addnew")
	public  String  addnew(ModelMap m,HttpServletRequest req,T b){
		getService().insert(b);
		if(info.getRowcount()%info.getMaxrow()==0&&info.getRowcount()!=0){
			info.setPageno(info.getPageno()+1);
		}
		return getall(info, m, req);
	}
}
