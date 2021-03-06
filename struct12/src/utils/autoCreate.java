package utils;


import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import MODEL.operator;

public class autoCreate {
	public static operator user = new operator(1, 1, "account", "pass", "name", "tel", "lastdate", "powers", "comments");
	public static String Now(){
		return  new SimpleDateFormat("yyyy年MM月dd日").format(new Date());
	}
	public static List toObject(ResultSet rs,Class cls){
		List list = new ArrayList();
		try{
			while(rs.next()){
				Object o = cls.newInstance();
				ResultSetMetaData m = rs.getMetaData();
			for (int i = 1; i <= m.getColumnCount(); i++) {
			String name = m.getColumnLabel(i);
			Field f = cls.getDeclaredField(name);
			if(f==null)continue;
			f.setAccessible(true);//设置可以更改属性值
			Class<?> type =f.getType();
			if(type.equals(int.class)){
				f.set(o, Integer.valueOf(rs.getObject(i).toString()));
			}else if(type.equals(double.class)){
				f.set(o, Double.valueOf(rs.getObject(i).toString()));
			}else {
				f.set(o, rs.getObject(i).toString());
			}
			
		}
		
			list.add(o);
			
			}
			return list;
		}catch (Exception e) {
			e.printStackTrace();
		
			return new ArrayList();
		}
	}

	public static String getJSON(List list) {
		if(list==null||list.size()==0) return "[]";
		StringBuilder str = new StringBuilder("[");
		for (int i = 0; i < list.size(); i++) {
			Object o = list.get(i);
			Field[] fs = o.getClass().getDeclaredFields();
			str.append("{");
			for (int j = 0; j < fs.length; j++) {
				fs[j].setAccessible(true);
				str.append("\""+fs[j].getName()+"\":");
				try {
					str.append("\" "+fs[j].get(o).toString()+" \",");
				} catch (Exception e) {
					str.append("\"\",");
					e.printStackTrace();
				}
			}
			str.deleteCharAt(str.length()-1);
			str.append("},");
		}
		str.deleteCharAt(str.length()-1);
		str.append("]");
		return str.toString();
	}
	
	
	

}
