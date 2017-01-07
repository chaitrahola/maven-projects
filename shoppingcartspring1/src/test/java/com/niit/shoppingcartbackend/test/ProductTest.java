
	package com.niit.shoppingcartbackend.test;


	import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.ProductDAO;
import com.niit.shoppingcartbackend.model.Product;

	public class ProductTest {
		
		public static void main(String[] args)
		{
			AnnotationConfigApplicationContext con = new AnnotationConfigApplicationContext();
			con.scan("com.niit.shoppingcartbackend");
			con.refresh();
			Product product=(Product)con.getBean("product");
			ProductDAO productdao=(ProductDAO)con.getBean("ProductDAO");
		
			product.setProduct_id("4");
			product.setProduct_name("defed");
			product.setProduct_desc("defdescx");
			productdao.save(product);
			productdao.update(product);
			productdao.get("1");
			
			
		}
	}

	


