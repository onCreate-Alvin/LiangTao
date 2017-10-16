package serviceImpl;

import javax.annotation.Resource;

import mapper.operator_Mapper;

import org.springframework.stereotype.Service;

import service.operator_service;
import MODEL.operator;

@Service("operator_serviceImpl")
public class operator_serviceImpl  extends Basic_serviceImpl<operator> implements operator_service{
	@Resource(name="operator_Mapper")
	operator_Mapper mapper;

	public int getByAccount(String account) { 
		return mapper.getByAccount(account);
	}

	public void updatepowers(operator b) {
		mapper.updatepowers(b);
	}

	public void updatepass(operator b) {
		mapper.updatepass(b);
	}

	public operator login(operator o) {
		
		return mapper.login(o);
	}

}
