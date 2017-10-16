package service;

import MODEL.productType;

public interface productType_service extends BasicService<productType>{
	public productType getByName(String name);
}
