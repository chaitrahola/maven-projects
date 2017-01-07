

package com.niit.shoppingcartbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.User;


@Repository("UserDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	//At the time of creation of instance, you have to pass sessionFactory
	  
	public void UserDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
		System.out.println(sessionFactory);
	}
	  @Transactional
	public List<User> list() {
			String hql="from Category";
			Query query =	sessionFactory.getCurrentSession().createQuery(hql);
			
			 return query.list();
			 }
	  @Transactional
	public User get(String id) {
		 User user1 =(User)sessionFactory.getCurrentSession().get(User.class, id);
		 System.out.println(user1.getName());
		
		 System.out.println(user1);
		return (User)sessionFactory.getCurrentSession().get(User.class, id);
		
	}
@Transactional
	public boolean save(User user) {
		try{
			sessionFactory.getCurrentSession().save(user);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

	}
@Transactional
	public boolean update(User user) {
		try{
			sessionFactory.getCurrentSession().update(user);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

	}
@Transactional
public User validate(String id, String password) {
	// TODO Auto-generated method stub
	return null;
}
}