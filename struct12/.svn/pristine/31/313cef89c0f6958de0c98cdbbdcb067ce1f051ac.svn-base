package serviceImpl;

import java.lang.reflect.Field;
import java.util.List;

import mapper.Basic_mapper;
import utils.SearchInfo;

public class Basic_serviceImpl<T> {
	
	private Basic_mapper getMapper(){
		try {
			Field o = getClass().getDeclaredField("mapper");
			o.setAccessible(true);
			return (Basic_mapper) o.get(this);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<T> getall(SearchInfo info) {
		return getMapper().getall(info);
	}
	public long getSize(SearchInfo sea) {
		
		return getMapper().getAllSize(sea);
	}
	public void del(int id) {
		getMapper().delete(id);
	}
	public void insert(T b){
		getMapper().insert(b);
	}
	public T getbyid(int id) {
	return (T) getMapper().getByID(id);
	}
	public void update(T b){
		 getMapper().update(b);
		
	}
}
