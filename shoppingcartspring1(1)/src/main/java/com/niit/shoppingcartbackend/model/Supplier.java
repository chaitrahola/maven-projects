package com.niit.shoppingcartbackend.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Supplier {
	@Id
	private String id;
	@Column(unique = true, nullable=false)
	private String name;
	private String address;
	
	
	
	@Column(name = "ID")
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}