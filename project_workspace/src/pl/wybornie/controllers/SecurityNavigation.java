package pl.wybornie.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityNavigation {
     
    @RequestMapping(value="/user-login", method=RequestMethod.GET)
    public ModelAndView loginForm() {
        return new ModelAndView("login-form");
    }
     
    @RequestMapping(value="/error-login", method=RequestMethod.GET)
    public ModelAndView invalidLogin() {
        ModelAndView modelAndView = new ModelAndView("login-form");
        modelAndView.addObject("error", true);
        return modelAndView;
    }
     
    @RequestMapping(value="/home", method=RequestMethod.GET)
    public String successLogin(HttpServletRequest request) {
    	request.setAttribute("logged", "success");
    	return "mainLayout";
    }
    
    @RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logoutAction(HttpServletRequest request) {
    	request.setAttribute("logged", "false");
    	return "mainLayout";
    }
}