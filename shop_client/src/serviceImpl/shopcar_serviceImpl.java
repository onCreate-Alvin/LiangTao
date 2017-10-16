package serviceImpl;

import javax.annotation.Resource;

import mapper.shopcar_Mapper;

import org.springframework.stereotype.Service;

import service.shopcar_service;
import MODEL.shopcar;

@Service("shopcar_serviceImpl")
public class shopcar_serviceImpl  extends Basic_serviceImpl<shopcar> implements shopcar_service{
	@Resource(name="shopcar_Mapper")
	shopcar_Mapper mapper;


}
