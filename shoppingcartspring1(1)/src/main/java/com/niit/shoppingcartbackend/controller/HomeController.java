package com.niit.shoppingcartbackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.dao.ProductDAO;
import com.niit.shoppingcartbackend.model.Product;





@Controller
public class HomeController {
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired(required = true)
	private ProductDAO productDAO;

	@RequestMapping("/")
	public ModelAndView getPage( @ModelAttribute("selectedProduct") final Product selectedProduct) {
	
		ModelAndView model=new ModelAndView("index");
		
		model.addObject("categoryList", categoryDAO.list());
		model.addObject("productList", productDAO.list());
		
		
		System.out.println("inside / mapping");

		if(selectedProduct!=null){
			model.addObject("selectedProduct",selectedProduct);
		}
		else
			System.out.println("The object is null");
		
		return model;
		
	}
	
	
	@RequestMapping("/index")
	public ModelAndView getPage1( @ModelAttribute("selectedProduct") final Product selectedProduct) {
		
		ModelAndView model=new ModelAndView("index");
		
		model.addObject("categoryList", categoryDAO.list());
		model.addObject("productList", productDAO.list());
		
		
		System.out.println("inside / mapping");

		if(selectedProduct!=null){
			model.addObject("selectedProduct",selectedProduct);
		}
		else
			System.out.println("The object is null");
		
		return model;
		
	}
	@RequestMapping("/checkout")
	public String getcheckout()
	{
		System.out.println("checkout page");
		return "checkout";
	}

	@RequestMapping("/contact")
	public String getcontact()
	{
		System.out.println("contact page");
		return "contact";
	}

	

	@RequestMapping("/product")
	public String getproduct()
	{
		System.out.println("product page");
		return "product";
	}

	

	@RequestMapping("/single")
	public String getsingle()
	{
		System.out.println("single");
		return "single";
	}

	
	}

	
	
