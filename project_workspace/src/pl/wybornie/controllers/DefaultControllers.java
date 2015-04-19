package pl.wybornie.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DefaultControllers {
	@RequestMapping(value="/", method=RequestMethod.GET)
    public ModelAndView homePage() {
        return new ModelAndView("home");
    }
     
    @RequestMapping(value="/index", method=RequestMethod.GET)
    public ModelAndView indexPage() {
        return new ModelAndView("home");
    }
     
    @RequestMapping(value="/search", method=RequestMethod.GET)
    public ModelAndView searchingPage() {
    	return new ModelAndView("search");
    }
//    @RequestMapping(value="/login", method=RequestMethod.GET)
//    public ModelAndView moderatorPage() {
//        return new ModelAndView("login-form");
//    }
}
