package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
}
