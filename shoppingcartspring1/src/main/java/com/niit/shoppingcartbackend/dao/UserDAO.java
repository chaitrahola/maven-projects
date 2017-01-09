/*package com.niit.shoppingcartbackend.dao;

import java.util.List;

import com.niit.shoppingcartbackend.model.User;

public interface UserDAO {
	//We  have to specify what method need to implement in other classes
	//Just only declare what to do
	
	//operations performed using DAO (CURD +validation)
	
	public List<User> list();      // to access the list of users
	
	public User get(String id);    // getting user based on id
	
	public User validate(String id,String password);    validating the user and checking the role(User,Admin or supplier)

	                                                   if it is a valid user it will return "user",else will return "NULL"  
	public boolean save(User user); // Save the details of "N" no of fields entered
	
	public boolean update(User user); // update the details "N" no of fields entered
}
*/