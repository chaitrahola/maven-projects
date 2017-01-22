/*package com.niit.shoppingcartbackend.daoimpl;

import java.io.IOException;

import javax.transaction.Transactional;

import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbackend.dao.CartDao;
import com.niit.shoppingcartbackend.model.Cart;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private OrderService orderService;

    public Cart getCartById (int cartId) {
        Session session = sessionFactory.openSession();
        return (Cart) session.get(Cart.class, cartId);
    }

    public void update(Cart cart) {
        int cartId = cart.getCartId();
      //  double grandTotal = orderService.getOrderGrandTotal(cartId);
        
        
        //CHECK HERE
        double grandTotal = 6.65;
        cart.setGrandTotal(grandTotal);

        Session session = sessionFactory.openSession();
        session.saveOrUpdate(cart);
    }

    public Cart validate(int cartId) throws IOException {
        Cart cart=getCartById(cartId);
        if(cart==null||cart.getCartItems().size()==0) {
            throw new IOException(cartId+"");
        }
        update(cart);
        return cart;
    }
}*/