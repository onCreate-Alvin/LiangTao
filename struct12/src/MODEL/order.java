package MODEL;

import utils.tools;

public class order {
	int ID,client_id,product_id,count,status,lastoperator_id;
	String date,cname,pname;
	double amount,disc;
	
	public String getOrderstatus() {
		return tools.orderstatus[status];
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getClient_id() {
		return client_id;
	}
	public void setClient_id(int client_id) {
		this.client_id = client_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int poduct_id) {
		this.product_id = poduct_id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getLastoperator_id() {
		return lastoperator_id;
	}
	public void setLastoperator_id(int lastoperator_id) {
		this.lastoperator_id = lastoperator_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getDisc() {
		return disc;
	}
	public void setDisc(double disc) {
		this.disc = disc;
	}
	
}
