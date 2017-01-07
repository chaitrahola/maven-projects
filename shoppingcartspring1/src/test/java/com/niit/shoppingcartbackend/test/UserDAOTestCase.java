package com.niit.shoppingcartbackend.test;

import org.junit.BeforeClass;
import org.junit.Test; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.User;

import junit.framework.Assert;



public class UserDAOTestCase
{ 
	
	//Autowire -DAO,DO,context
	
	@Autowired
	static UserDAO userDAO;
	
	@Autowired
	static User user;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	//previously we written constructor but in j unit we need to write a method,this method should automatically call when junit Test case run
	@BeforeClass          //we can write @Bean classes only for the static methods
	public static void init()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		context.refresh();
		
		user=(User)context.getBean("user");
		
		userDAO=(UserDAO)context.getBean("userDAOImpl");
		
	}

	@Test
	public  void getUserTestCase()
	
	{
		user =userDAO.get("1");
		
		//Assert statements
		
		Assert.assertEquals("UserDAOTestcase","abc",user.getName());
	}
	

	@Test
	public  void validateCredentials()
	
	{
		user =userDAO.validate("abc","123");
		
		//Assert statements
		
		Assert.assertNull("validateCredentials",user);
	}
	
	@Test
	public  void inValidateCredentials()
	
	{
		user =userDAO.validate("abc","123");
		
		//Assert statements
		
		Assert.assertEquals("invalidateCredentials",null,user);
	}
	
	
	@Test
	public void getAllUserTestCase()
	{
		int size= userDAO.list().size();
		Assert.assertEquals("length check",2,size);
	}
	

}
