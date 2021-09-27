package controller;

import java.io.Serializable;

public class User implements Serializable {
	private String firstName;
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

	private String lastName;
	private String email;

	public User() {
		firstName = "";
		lastName = "";
		email = "";

	}

	public User(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}
}
