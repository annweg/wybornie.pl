package pl.wybornie.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DefaultControllers {
	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	   public String printHello(ModelMap model) {
	      model.addAttribute("message", "Hello Spring MVC Framework!");
	      return "hello";
	   }
	
	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public String adminPage(ModelMap model) {
 
		model.addAttribute("message", "ADMIN PAGE");
	    return "admin";
 
	}
}
