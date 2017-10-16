package serviceImpl;

import javax.annotation.Resource;

import mapper.power_Mapper;

import org.springframework.stereotype.Service;

import service.power_service;
import MODEL.power;

@Service("power_serviceImpl")
public class power_serviceImpl  extends Basic_serviceImpl<power> implements power_service{
	@Resource(name="power_Mapper")
	power_Mapper mapper;
}
