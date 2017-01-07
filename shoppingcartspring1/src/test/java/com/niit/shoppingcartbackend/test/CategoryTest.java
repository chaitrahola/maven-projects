package com.niit.shoppingcartbackend.test;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.model.Category;

public class CategoryTest {
	
	public static void main(String[] args) {
		AnnotationConfigApplicationContext con = new AnnotationConfigApplicationContext();
		con.scan("com.niit.shoppingcartbackend");
		con.refresh();
		Category category = (Category) con.getBean("category");
		CategoryDAO categorydao = (CategoryDAO) con.getBean("CategoryDAO");

		category.setCategory_id(07);
		category.setCategory_name("abced");
		category.setCategory_desc("abcdescx");
		categorydao.save(category);

	}
}
