package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.operator;
import MODEL.pics;

@Repository("pics_Mapper")//描述mapper，数据库，作用给当前的bean加入一个名字，方便其他位置使用
public interface pics_Mapper extends Basic_mapper<pics> {
	

	@Select("select * from pics where ID in ${where}")
	public List<pics> getall(SearchInfo info);
	@Select("select pics.* from pics where pics.ID = #{ID}")
	public pics getByID(int ID);
	
	@Delete("delete from pics where ID = #{id} ")  
	public void delete(int id);
	
	@Insert("insert into pics(url,path) values(#{url},#{path})")
	public void insert(pics b);
	
	@Select("select max(id) from pics")
	public int getMaxID();
	
}
