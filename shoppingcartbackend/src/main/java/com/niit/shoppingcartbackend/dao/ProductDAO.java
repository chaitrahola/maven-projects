package com.niit.shoppingcartbackend.dao;

import java.util.List;

import com.niit.shoppingcartbackend.model.Product;

public interface ProductDAO {
	
	public List<Product> list();
	
	public Product get(String id);

	public boolean save(Product product);
	
	public boolean update(Product product);

}
