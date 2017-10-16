package MODEL;

import java.util.ArrayList;

import service.pics_service;

public class product {
	  
	     int ID,createoperator_id ,salecount,productType;
	     String  name ,pics ,info;
	     double price ,disc;
	     String oname;
	     String typename;
	     int count;
	    
	     public int getCount() {
			return count;
		}
		public void setCount(int count) {
			this.count = count;
		}
		ArrayList<pics> ps = new ArrayList<pics>();
	     
	     
		
		public ArrayList<pics> getPs() {
			return ps;
		}
		public void setPs(ArrayList<pics> ps) {
			this.ps = ps;
		}
		public String getTypename() {
			return typename;
		}
		public void setTypename(String typename) {
			this.typename = typename;
		}
		public int getProductType() {
			return productType;
		}
		public void setProductType(int productType) {
			this.productType = productType;
		}
		public String getOname() {
			return oname;
		}
		public void setOname(String oname) {
			this.oname = oname;
		}
		public product() {
			super();
			// TODO Auto-generated constructor stub
		}
		public int getID() {
			return ID;
		}
		public void setID(int iD) {
			ID = iD;
		}
		public int getCreateoperator_id() {
			return createoperator_id;
		}
		public void setCreateoperator_id(int createoperator_id) {
			this.createoperator_id = createoperator_id;
		}
		public int getSalecount() {
			return salecount;
		}
		public void setSalecount(int salecount) {
			this.salecount = salecount;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPics() {
			return pics;
		}
		public void setPics(String pics) {
			this.pics = pics;
		}
		public String getInfo() {
			return info;
		}
		public void setInfo(String info) {
			this.info = info;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		public double getDisc() {
			return disc;
		}
		public void setDisc(double disc) {
			this.disc = disc;
		}
		
	     
}
