package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.power;

@Repository("power_Mapper")
public interface power_Mapper extends Basic_mapper<power> {
	
	@Select("select * from power ${where}")
	public List<power> getall(SearchInfo info);
	@Select("select  count(1)  from power")
	public Long getAllSize(SearchInfo info) ;
	
	@Select("select power.* from power where power.ID = #{ID}")
	public power getByID(int ID);
	@Update("update `power` set status=#{status},nickname=#{nickname}  where ID = #{ID}")
	public void update(power b);

}
