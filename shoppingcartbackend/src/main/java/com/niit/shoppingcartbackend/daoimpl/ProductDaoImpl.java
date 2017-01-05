package com.niit.shoppingcartbackend.daoimpl;



import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.shoppingcartbackend.dao.ProductDAO;
import com.niit.shoppingcartbackend.model.Product;

public class ProductDaoImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	//At the time of creation of instance, you have to pass sessionFactory
	
	public ProductDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	public List<Product> list() {
		return null;
	}

	public Product get(String id) {
		return (Product)sessionFactory.getCurrentSession().get(Product.class, id);
	}

	public boolean save(Product product) {
		try{
			sessionFactory.getCurrentSession().save(product);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

}

	public boolean update(Product product) {
		try{
			sessionFactory.getCurrentSession().update(product);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
}

}

