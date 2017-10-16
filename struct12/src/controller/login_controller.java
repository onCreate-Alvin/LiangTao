package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import service.operator_service;
import service.power_service;
import utils.SearchInfo;

import MODEL.operator;
import MODEL.power;


@Controller
@RequestMapping("admin")
public class login_controller {
	@Resource(name="power_serviceImpl")
	power_service pservice;
	@RequestMapping("index")
	public String index(ModelMap m, HttpServletRequest req){
		operator o =  (operator) req.getSession().getAttribute("logininfo");
		String powers = o.getPowers();
		//操作员表里对应的菜单
		List<power> list =  pservice.getall(new SearchInfo("where ID in ("+o.getPowers()+")"));//123
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
		System.out.println("进入后台首页，用户权限"+o.getPowers()+"菜单:"+navfatherlist.get(1).getName()+"child"+navfatherlist.get(1).getChildren().size());
		return "admin/index";
	}
}
