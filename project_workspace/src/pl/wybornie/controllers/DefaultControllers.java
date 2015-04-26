package pl.wybornie.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pl.wybornie.dao.UserDAO;
import pl.wybornie.entity.User;

@Controller
@EnableTransactionManagement
public class DefaultControllers {
	
	@Autowired
	private UserDAO userDao;
	
	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
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
    
    @RequestMapping(value="/addUser", method=RequestMethod.POST) 
    public String submitForm(@ModelAttribute("user") User user, HttpServletRequest request, Model model) {
    	userDao.saveOrUpdateUser(user);
    	return "redirect:index.html";
    }
    
//    @RequestMapping(value="/login", method=RequestMethod.GET)
//    public ModelAndView moderatorPage() {
//        return new ModelAndView("login-form");
//    }
}
    
