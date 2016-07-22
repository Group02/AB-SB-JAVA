package controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.User;
import dao.*;

import org.apache.log4j.Logger;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import service.SendEmail;
@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	private UserDAO userDAO= new UserDAO();
	private static Logger logger = Logger.getLogger(LoginController.class);
	public static Log log;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView initialLoginForm() {
		ModelAndView model = new ModelAndView("login");
		model.addObject("User", new User());
		
		logger.info("this is message");
		Logger.getLogger(LoginController.class).info("this is");
		return model;
	}
	
	@RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
	public ModelAndView initForgotPassword() {

		return new ModelAndView("SendPassword");
	}
	
	@RequestMapping(value = "/handle", method = RequestMethod.POST)
	public ModelAndView handleLoginForm(@ModelAttribute("User") User user,
			HttpSession session) {
		
		// Find user on database:
		if (userDAO.isExist(user)) {
			/* 
			 * If user exist then add user to session & 
			 * redirect to Organization List Page
			 */
			session.setAttribute("User", user);
			return new ModelAndView("OrganisationList");
		}

		// Else -> Redirect to Login Page with error message:
		return new ModelAndView("login", "message", 
				"The email and password you entered don't match.");
	}
	
	@RequestMapping(value = "/handle-forgot-pwd", method = RequestMethod.POST)
	public ModelAndView handleForgotPassword(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("SendPassword");
		
		// Get email from request:
		String email = request.getParameter("email");
		
		// Get user from database:
		 User user = userDAO.getUserByEmail(email);
		
		// Find user on database with email:
		if(user == null) {
			// If user is null then return message to Forgot Password page
			model.addObject("message", "Sorry! We can't find this email!");

			return model;
		}
		
		// Else -> Send password to email just receive
		String password = user.getPassword();
		SendEmail sendEmail = new SendEmail();
		sendEmail.sendEmail(email, "Your password for login to AB-SD: " + password);

		// Back to Forgot Password page and send message for user
		model.addObject("message", "We have sent password to your email.<br>"
				+ "Please check email and login again!");
		return model; 
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		if(session.getAttribute("User") != null) {
			session.invalidate();
		}
		
		return "redirect:/login/index.html";
	}
	
}
