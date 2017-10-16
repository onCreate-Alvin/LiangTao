package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.order;

@Repository("order_Mapper")//描述mapper，数据库，作用给当前的bean加入一个名字，方便其他位置使用
public interface order_Mapper extends Basic_mapper<order> {
	
	@Select("select o.*,client.nickname cname ,product.name pname from `order` o  inner join client inner join product on o.client_id = client.ID and o.product_id = product.ID")
	public List<order> getall(SearchInfo info);
	
	@Select("select  count(1)  from `order`")
	public Long getAllSize(SearchInfo info) ;
	@Delete("delete from `order` where ID = #{ID} ")  
	public void delete(int ID);
	@Insert("insert into `order` (client_id,product_id,count,amount,disc,date,status,lastoperator_id) values(#{client_id},#{product_id},#{count},#{amount},#{disc},#{date},#{status},#{lastoperator_id})")
	public void insert(order b);
	@Select("select `order`.* from `order` where order.ID = #{ID}")
	public order getByID(int ID);
	@Update("update `order` set status=#{status}  where ID = #{ID}")
	public void update(order b);

}
