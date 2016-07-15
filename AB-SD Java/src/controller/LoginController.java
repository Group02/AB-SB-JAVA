package controller;

import model.User;
import dao.*;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	private UserDAO userDAO= new UserDAO();
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView initialLoginForm() {
		ModelAndView model = new ModelAndView("login");
		model.addObject("User", new User());
		
		return model;
	}
	
	@RequestMapping(value = "/handle", method = RequestMethod.POST)
	public ModelAndView handleLoginForm(@ModelAttribute("User") User user) {
		
		// Find user on database:
		if (userDAO.isExist(user)) {
			// If user exist then redirect to Organisation List Page
			return new ModelAndView("OrganisationList");
		}
		
		// Else -> Redirect to Login Page with error message:
		return new ModelAndView("login", "message", 
				"The email and password you entered don't match.");
	}
	
}
