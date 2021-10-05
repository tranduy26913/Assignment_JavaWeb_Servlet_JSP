package model;

import java.io.Serializable;
import java.util.Iterator;
import javax.servlet.http.Cookie;
import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
public class Product extends Model {
	private ObjectId _id;
	private String productCode;
	private String productName;
	private double productPrice;
	
	public ObjectId get_id() {
		return _id;
	}
	public void set_id(ObjectId _id) {
		this._id = _id;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public Product() {
		// TODO Auto-generated constructor stub
	}
	public Product(String pc,String pn,double pp) {
		this._id=new ObjectId();
		this.productCode=pc;
		this.productName=pn;
		this.productPrice=pp;
	}
}
