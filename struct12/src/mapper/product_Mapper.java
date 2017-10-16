package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import utils.SearchInfo;
import MODEL.product;

@Repository("product_Mapper")//描述mapper，数据库，作用给当前的bean加入一个名字，方便其他位置使用
public interface product_Mapper extends Basic_mapper<product> {
	
	@Select("select product.*,operator.name oname,productType.name typename from product inner join operator inner join productType on product.createoperator_id = operator.ID and product.productType = productType.ID ${where}")
	public List<product> getall(SearchInfo info);
	@Select("select  count(1)  from product ${where}")
	public Long getAllSize(SearchInfo info) ;
	@Delete("delete from product where ID = #{ID} ")  
	public void delete(int ID);
	@Insert("insert into product(createoperator_id,salecount,name,pics,info,price,disc,productType) values(#{createoperator_id},#{salecount},#{name},#{pics},#{info},#{price} ,#{disc},#{productType})")
	public void insert(product b);
	@Select("select product.* from product where product.ID = #{ID}")
	public product getByID(int ID);
	@Update("update product set name=#{name},price=#{price}, disc=#{disc},pics=#{pics},info=#{info} where ID = #{ID}")
	public void update(product b);
	
}
