package service;

import MODEL.client;

public interface client_service extends BasicService<client>{
	public int getByAccount(String account);
	public void updatepass(client b);
	public client login(client o);
}
