package com.niit.backend.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.dao.UserDAO;
import com.niit.backend.model.User;

import junit.framework.Assert;

public class UserDAOTestCase { 
	
	//Autowire -DAO,DO,context
	
	@Autowired
	static UserDAO userDAO;
	
	@Autowired
	static User user;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	//previously we written constructor but in j unit we need to write a method,this method should automatically call when junit Test case run
	@Before           //we can write @Bean classes only for the static methods
	public void init()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.backend");
		context.refresh();
		
		user=(User)context.getBean("user");
		
		userDAO=(UserDAO)context.getBean("userDAOImpl");
		
	}

	@Test
	public  void getUserTestCase()
	
	{
		user =userDAO.get("abc");
		
		//Assert statements
		
		Assert.assertEquals("UserDAOTestcase","abc",user.getName());
	}
	

	@Test
	public  void validateCredentials()
	
	{
		user =userDAO.validate("1","123");
		
		//Assert statements
		
		Assert.assertEquals("validateCredentials",null,user);
	}
	

}
