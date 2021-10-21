package model;

import org.bson.types.ObjectId;

import com.mongodb.client.model.Filters;

public class Items extends Model{
	private ObjectId _id;
	private String email;
	private String productCode="";
	private int quantity=0;
	private Product product;
	public ObjectId get_id() {
		return _id;
	}
	public void set_id(ObjectId _id) {
		this._id = _id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public Items() {
		this.product=PRODUCT.find(Filters.eq("productCode",this.productCode)).first();
	}
	
	public Items(String email,String productCode,int quanlity) {
		this.email=email;
		this.productCode=productCode;
		this.quantity=quanlity;
		this.product=PRODUCT.find(Filters.eq("productCode",this.productCode)).first();
	}
	
}
