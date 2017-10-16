package serviceImpl;

import javax.annotation.Resource;

import mapper.client_Mapper;

import org.springframework.stereotype.Service;

import service.client_service;
import MODEL.client;
import MODEL.operator;

@Service("client_serviceImpl")
public class client_serviceImpl  extends Basic_serviceImpl<client> implements client_service{
	@Resource(name="client_Mapper")
	client_Mapper mapper;

	public int getByAccount(String tel) {
		
		return mapper.getByAccount(tel);
	}

	public void updatepass(client b) {
		mapper.updatepass(b);
	}

	public client login(client o) {
		
		return mapper.login(o);
	}

}
