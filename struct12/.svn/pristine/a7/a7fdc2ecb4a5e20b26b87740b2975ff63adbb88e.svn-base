package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.shopcar;

@Repository("shopcar_Mapper")//描述mapper，数据库，作用给当前的bean加入一个名字，方便其他位置使用
public interface shopcar_Mapper extends Basic_mapper<shopcar> {
	
	@Select("select * from shopcar ${where}")
	public List<shopcar> getall(SearchInfo info);
	
	@Select("select  count(1)  from shopcar")
	public Long getAllSize(SearchInfo info) ;
	@Delete("delete from shopcar where ID = #{ID} ")  
	public void delete(int ID);
	@Insert("insert into shopcar (client_id,product_id,count) values(#{client_id},#{product_id},#{count})")
	public void insert(shopcar b);
	@Select("select shopcar.* from shopcar where shopcar.ID = #{ID}")
	public shopcar getByID(int ID);
	@Update("update shopcar set status=#{status},nickname=#{nickname}  where ID = #{ID}")
	public void update(shopcar b);

}
