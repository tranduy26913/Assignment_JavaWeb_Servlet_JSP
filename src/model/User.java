package model;

import java.io.Serializable;
import java.nio.file.DirectoryStream.Filter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.Cookie;
import javax.swing.Box.Filler;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;
import org.eclipse.jdt.internal.compiler.ast.CombinedBinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.mongodb.connection.SocketSettings;

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
	
	public static ArrayList<User> GetAllUser()//lấy tất cả user
	{
		ArrayList<User> users=new ArrayList<User>();
		FindIterable<User> userFindIterable=USER.find();
		Iterator<User> iterator=userFindIterable.iterator();
		while (iterator.hasNext()) {
			users.add(iterator.next());
			
		}
		return users;
	}
	
	public static User GetUserByEmail(String email){
		User findUser = Model.USER.find(Filters.eq("email", email)).first();
		return findUser;
	}
	
	public void Update() {
		Bson update1 = Updates.set("firstName", this.firstName);
		Bson update2 = Updates.set("lastName", this.lastName);
		USER.updateOne(Filters.eq("email",this.email),Updates.combine(update1,update2));
	}
	
	public static void Delete(String email) {
		USER.deleteOne(Filters.eq("email", email));
	}
	
	
	public static boolean CheckUserAlready(String email) {
		User findUser = Model.USER.find(Filters.eq("email", email)).first();
		if(findUser!=null)
			return true;
		return false;
	}
}
