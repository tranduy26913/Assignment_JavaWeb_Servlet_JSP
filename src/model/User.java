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

public class User extends Model implements Serializable {
	private ObjectId _id;
	private String email;
	private String firstName;
	private String lastName;
	private String heardFrom;
	private String wantsUpdates;
	private String contactVia;
	public String getHeardFrom() {
		return heardFrom;
	}

	public void setHeardFrom(String heardFrom) {
		this.heardFrom = heardFrom;
	}

	public String getWantsUpdates() {
		return wantsUpdates;
	}

	public void setWantsUpdates(String wantsUpdates) {
		this.wantsUpdates = wantsUpdates;
	}

	public String getContactVia() {
		return contactVia;
	}

	public void setContactVia(String contactVia) {
		this.contactVia = contactVia;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

	public User() {
		firstName = "";
		lastName = "";
		email = "";

	}
	
	public User(String firstName, String lastName, String email) {
		this._id=new ObjectId();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public User(String firstName, String lastName, String email,String heardFrom, String wantsUpdates,String contactVia) {
		this._id=new ObjectId();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.heardFrom=heardFrom;
		this.wantsUpdates=wantsUpdates;
		this.contactVia=contactVia;
	}
	
	public void Insert() {
		USER.insertOne(this);
	}
}
