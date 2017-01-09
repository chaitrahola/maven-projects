/*package com.niit.shoppingcartbackend.test;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.User;

public class TestUserDAO {
	
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext con = new AnnotationConfigApplicationContext();
		con.scan("com.niit.shoppingcartbackend");
		con.refresh();
		User user=(User)con.getBean("user");
		UserDAO Userdao=(UserDAO)con.getBean("UserDAO");
	
		user.setId("07");
		user.setName("abc");
		user.setPassword("abcde");
		user.setMail("abcde");
		user.setContact("abcde");
		user.setRole("grg");
		Userdao.save(user);
		Userdao.validate("1", "13");
		Userdao.update(user);
		Userdao.get("1");
		
	}
}
*/