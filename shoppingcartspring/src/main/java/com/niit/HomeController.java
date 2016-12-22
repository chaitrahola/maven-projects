package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String homepage()
	{
		System.out.println("Executing the method homepage");
		return "home";
	}
	@RequestMapping("Login")
	public ModelAndView ShowLoginPage()
	{
		ModelAndView mv= new ModelAndView("Login");
		mv.addObject("msg","you clicked login link");
		return mv;
     }
	@RequestMapping("Register") 
	public ModelAndView ShowRegisterPage()
	{
		ModelAndView mv= new ModelAndView("home");
		mv.addObject("msg","you have been succesfully registered");
		mv.addObject("ShowRegisterPage","true");
		return mv;
		}
	
	@RequestMapping("validate")
	public ModelAndView Validate(@RequestParam("id")String id,@RequestParam("password")String password)
	
	{
		System.out.println("invalid credentials");
		System.out.println("id:"+id);
		System.out.println("pwd:"+ password);
		ModelAndView mv= new ModelAndView("index");
		
		UserDAO userDAO=new UserDAO();
		if(userDAO.isValidCredentials(id,password)==true)
		{
			mv.addObject("successmsg","you have successfully logged in");
			
		}
		else
		{
			mv.addObject("errormsg","inavlid credentials....please try loggin in again");
			
		}
		return mv;
		
	}
	
	
}

