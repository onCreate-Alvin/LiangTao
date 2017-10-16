package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.productType;

@Repository("productType_Mapper")//描述mapper，数据库，作用给当前的bean加入一个名字，方便其他位置使用
public interface productType_Mapper extends Basic_mapper<productType> {
	
	@Select("select productType.* from productType ${where}")
	public List<productType> getall(SearchInfo info);
	
	@Select("select  count(1)  from productType ${where}")
	public Long getAllSize(SearchInfo info) ;
	
	@Delete("delete from productType where ID = #{ID} ")  
	public void delete(int ID);
	
	@Insert("insert into productType(name,parentID) values(#{name},#{parentID})")
	public void insert(productType b);
	
	@Select("select productType.* from productType where productType.ID = #{ID}")
	public productType getByID(int ID);
	
	@Update("update productType set name=#{name},parentID=#{parentID} where ID = #{ID}")
	public void update(productType b);
	
	@Select("select productType.* from productType where productType.name = #{name}")
	public productType getByName(String name);
	
}
