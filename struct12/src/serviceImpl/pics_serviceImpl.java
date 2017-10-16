package serviceImpl;

import javax.annotation.Resource;

import mapper.pics_Mapper;

import org.springframework.stereotype.Service;

import service.pics_service;
import MODEL.pics;

@Service("pics_serviceImpl")
public class pics_serviceImpl  extends Basic_serviceImpl<pics> implements pics_service{
	@Resource(name="pics_Mapper")
	pics_Mapper mapper;

	public int getMaxID() {
		return mapper.getMaxID();
	}

}
