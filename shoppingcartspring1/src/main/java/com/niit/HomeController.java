package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String getindex()
	{
		System.out.println(" homepage");
		return "index";
	}
 
	@RequestMapping("/index")
	public String getindex1()
	{
		System.out.println(" homepage");
		return "index";
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

	@RequestMapping("/login")
	public String getlogin()
	{
		System.out.println("login page");
		return "login";
	}

	@RequestMapping("/product")
	public String getproduct()
	{
		System.out.println("product page");
		return "product";
	}

	@RequestMapping("/register")
	public String getregister()
	{
		System.out.println("register page");
		return "register";
	}

	@RequestMapping("/single")
	public String getsingle()
	{
		System.out.println("single");
		return "single";
	}

	
	}

	
	
