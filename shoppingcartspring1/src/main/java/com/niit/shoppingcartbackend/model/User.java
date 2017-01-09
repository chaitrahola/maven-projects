/*package com.niit.shoppingcartbackend.model;
//map to specific database entity(table)
//which table you have to map
//create singleton instance/object

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table        if the table name and domain object name is same no need to specify it will automatically take, but if we explicitly need to specify the table name 
             den we need to write it inside the brackets
@Component   //user instance, do not User U=new User()

public class User {
	//table fields/columns will be generated as in the same name as we are specifying below
	
	@Id                       //Id annotation is used to specify that string "id" is the primary key
	public String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String name;
	public String password;
	public String mail;
	public String contact;
	public String role;

}
*/