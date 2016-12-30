package com.niit.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.dao.UserDAO;
import com.niit.model.User;

public class UserDAOImpl implements UserDAO{
	//Implementation is provided for UserDAO which is a interface
	
	// For CURD operations session factory is required which is in ApplicationContext.java
	@Autowired
	private SessionFactory sessionFactory;  //declare session factory & at the creation of instance you have to pass session factory
	                               
	public UserDAOImpl(SessionFactory sessionFactory ) {
		this.sessionFactory =sessionFactory;
	}

	public List<User> list() {
		
		return null;
	}

	public User get(String id) {
	return(User)sessionFactory.getCurrentSession().get(User.class, id);
		
		
	}

	public User validate(String id, String password) {
		
		return null;
	}

	public boolean save(User user) {
		try{
		sessionFactory.getCurrentSession().save(user);
		}catch(Exception e){
			e.printStackTrace();
		return false;
		}
		return true;
	}

	public boolean update(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			
		} catch (Exception e) {
		
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
