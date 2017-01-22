package com.niit.shoppingcartbackend.dao;

import java.util.List;

import com.niit.shoppingcartbackend.model.UsersDetail;

public interface UsersDetailDao {
	public void addUser(UsersDetail userDetail);
	
	   public UsersDetail getUserById (int userId);

	   public List<UsersDetail> getAllUsers();

	    UsersDetail getUserByUsername (String username);
	  
	    public boolean isValidUser(String name);
}
