package service;

import java.util.List;

import utils.SearchInfo;

public interface BasicService<T> {
	public List<T> getall(SearchInfo info);
	public long getSize(SearchInfo sea);
	public void del(int id);
	public void insert(T b);
	public T getbyid(int id);
	public void update(T b);  
}
