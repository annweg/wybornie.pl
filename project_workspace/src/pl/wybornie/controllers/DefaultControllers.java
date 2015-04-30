package pl.wybornie.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import pl.wybornie.entity.User;
import pl.wybornie.service.UserService;
import pl.wybornie.validators.UserValidator;

@Controller
@EnableTransactionManagement
@SessionAttributes({"user"})
public class DefaultControllers {
	
	@Autowired
	private UserService userService;
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

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
    
	@RequestMapping(value="/addUser", method=RequestMethod.GET)
	public ModelAndView addPerson() {
		ModelAndView modelAndView = new ModelAndView("addUser");
		User user = new User();
		modelAndView.addObject(user);
		return modelAndView;
	}
    
//    
//    @RequestMapping(value="/user", method=RequestMethod.POST) 
//    public String submitForm(@ModelAttribute("user") User user,  BindingResult bindingResult) {
//    	new UserValidator(userService).validate(user, bindingResult);
//    	
//    	if (bindingResult.hasErrors()) {
//    		return "redirect:index.html?userError=true";
//    	}
//    	userService.saveOrUpdateUser(user);
//    	return "redirect:index.html";
//    }
 
//    @RequestMapping(value="/login", method=RequestMethod.GET)
//    public ModelAndView moderatorPage() {
//        return new ModelAndView("login-form");
//    }
}
    
