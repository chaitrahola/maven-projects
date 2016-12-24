package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;

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
	@RequestMapping("/404")
	public String get404()
	{
		System.out.println("404 page");
		return "404";
	}

	@RequestMapping("/about")
	public String getabout()
	{
		System.out.println("about page");
		return "about";
	}

	@RequestMapping("/careers")
	public String getcareers()
	{
		System.out.println("careers page");
		return "careers";
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

	@RequestMapping("/register")
	public String getregister()
	{
		System.out.println("register page");
		return "register";
	}

	@RequestMapping("/single")
	public String getsingle()
	{
		System.out.println("single page");
		return "single";
	}

	@RequestMapping("/wishlist")
	public String getwishlist()
	{
		System.out.println("wishlist page");
		return "wishlist";
	}

	
	
}