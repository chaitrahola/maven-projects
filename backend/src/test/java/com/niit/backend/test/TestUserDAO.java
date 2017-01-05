package com.niit.backend.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.dao.UserDAO;
import com.niit.backend.model.User;

public class TestUserDAO {
	
	@Autowired
	UserDAO userDAO;   //donno :-)
	
	@Autowired
	User user;
	
	@Autowired
	AnnotationConfigApplicationContext context;
	
	public TestUserDAO()
	{
		context = new AnnotationConfigApplicationContext();
		//specify in which package you defined the class -> Scan
		context.scan("com.niit.backend");
		context.refresh();
		//context -> Bean Factory
		
		//ask context to get the instance
		userDAO =(UserDAO)context.getBean("userDAOImpl");
		
   		user =(User)context.getBean("user");
		
	}
	
	public boolean validate(String id,String pwd)
	{
		if(userDAO.validate(id,pwd)==null)
		{
			System.out.println("User does not exit");
			return false;
		}
		else
		{
		    System.out.println("User exit with given credentials");
			return true;
		}
	}
	
	public static void main(String[] args) {
		TestUserDAO t=new TestUserDAO();
		t.validate("1", "123");
	}

}