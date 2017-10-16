package service;

import MODEL.operator;

public interface operator_service extends BasicService<operator>{
	int getByAccount(String account);
	public void updatepowers(operator b);
	public void updatepass(operator b);
	public operator login(operator o);
}
