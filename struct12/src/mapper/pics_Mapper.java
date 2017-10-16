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

@Repository("pics_Mapper")//����mapper�����ݿ⣬���ø���ǰ��bean����һ�����֣���������λ��ʹ��
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
