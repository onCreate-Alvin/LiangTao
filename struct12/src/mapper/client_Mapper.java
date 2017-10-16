package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.client;
import MODEL.operator;

@Repository("client_Mapper")//描述mapper，数据库，作用给当前的bean加入一个名字，方便其他位置使用
public interface client_Mapper extends Basic_mapper<client> {
	

	@Select("select * from client")
	public List<client> getall(SearchInfo info);
	@Select("select  count(1)  from client")
	public Long getAllSize(SearchInfo info) ;
	@Delete("delete from client where ID = #{ID} ")  
	public void delete(int ID);
	@Insert("insert into client(question,status,logincount,tel,pass,nickname,email,createdate,lastdate,answer,logindate,comments) values(#{question},#{status},#{logincount},#{tel},#{pass},#{nickname},#{email},#{createdate},#{lastdate},#{answer},#{logindate},#{comments})")
	public void insert(client b);
	@Select("select client.* from client where client.ID = #{ID}")
	public client getByID(int ID);
	@Update("update client set status=#{status},nickname=#{nickname},email=#{email},comments=#{comments}  where ID = #{ID}")
	public void update(client b);
	
	@Update("update client set pass=#{pass} where tel=#{tel}")
	public void updatepass(client b);
	
	@Select("select count(1) from client where client.tel = #{tel}")
	public int getByAccount(String tel);
	
	@Select("select * from client where client.tel = #{tel} and client.pass = #{pass}")
	public client login(client o);
}
