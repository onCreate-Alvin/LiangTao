package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.operator;

@Repository("operator_Mapper")//描述mapper，数据库，作用给当前的bean加入一个名字，方便其他位置使用
public interface operator_Mapper extends Basic_mapper<operator> {
	
	@Select("select * from operator")
	public List<operator> getall(SearchInfo info);
	@Select("select  count(1)  from operator ${where}")
	public Long getAllSize(SearchInfo info) ;
	@Delete("delete from operator where ID = #{ID} ")  
	public void delete(int ID);
	@Insert("insert into operator(account,pass,name,tel,lastdate,powers,status,comments) values(#{account},#{pass},#{name},#{tel},#{lastdate},#{powers},#{status},#{comments})")
	public void insert(operator b);
	@Select("select operator.* from operator where operator.ID = #{ID}")
	public operator getByID(int ID);
	@Update("update operator set name=#{name},account=#{account},tel=#{tel},status=#{status},comments=#{comments} where ID = #{ID}")
	public void update(operator b);
	@Update("update operator set powers=#{powers} where ID = #{ID}")
	public void updatepowers(operator b);
	
	@Update("update operator set pass=#{pass} where ID=#{ID}")
	public void updatepass(operator b);
	
	@Select("select count(1) from operator where operator.account = #{account}")
	public int getByAccount(String account);
	
	@Select("select * from operator where operator.account = #{account} and operator.pass = #{pass}")
	public operator login(operator o);
}
