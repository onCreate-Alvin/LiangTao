package serviceImpl;

import javax.annotation.Resource;
import mapper.productType_Mapper;
import org.springframework.stereotype.Service;
import service.productType_service;
import MODEL.productType;

@Service("productType_serviceImpl")
public class productType_serviceImpl  extends Basic_serviceImpl<productType> implements productType_service{
	@Resource(name="productType_Mapper")
	productType_Mapper mapper;

	public productType getByName(String name) {
		return mapper.getByName(name);
	}

	

}
