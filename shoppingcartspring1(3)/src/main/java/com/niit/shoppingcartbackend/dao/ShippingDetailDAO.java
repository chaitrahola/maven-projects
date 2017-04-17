package com.niit.shoppingcartbackend.dao;

import java.util.List;

import com.niit.shoppingcartbackend.model.Shipping;
import com.niit.shoppingcartbackend.model.UsersDetail;

public interface ShippingDetailDAO {

	
		public void addUser(Shipping shipping);
		
		   public Shipping getShippingById (int userId);

		   public List<Shipping> getAllShipping();

		    UsersDetail getUserByUsername (String shipping);
		  
		    public boolean isValidUser(String name);
}