package com.niit.shoppingcartbackend.dao;



import java.io.IOException;
import java.util.List;

import com.niit.shoppingcartbackend.model.Cart;


public interface CartDao {

    Cart getCartById (int cartId);
    
   Cart validate(int cartId) throws IOException;  
    
    public void update(Cart cart);
}
