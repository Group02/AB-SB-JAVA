package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.*;
import model.*;

@Controller
@RequestMapping(value="/contact")
public class ContactController {

	private ContactDAO contactdao = new ContactDAO();
	private Contact contact;
	
	@RequestMapping(value="/contactlookup")
	public ModelAndView address(HttpSession session){
		ModelAndView model = new ModelAndView("business_lookup");
		
		if(contactdao.getAllCont() != null){
			
			//Make list business lookup
			List<Contact> listCont = contactdao.getAllCont();
			
			//Save list to session
			session.setAttribute("listCont", listCont);
		}
		return model;
	}
	
	@RequestMapping(value="/businesslookup", method=RequestMethod.POST)
	public ModelAndView address(HttpServletRequest request){
		ModelAndView model = new ModelAndView("business_lookup");
		
		String busi= request.getParameter("busi");//get value SIC code
		String busi2= request.getParameter("busi2");//get value business name
		
		System.out.println(busi+"BUsi"+busi2);
		
		try {
			
			contact = contactdao.FindCont(busi, busi2);
			
			model.addObject("business", contact);
			
		} catch (NullPointerException e) {
			System.out.println("Not found business");
		}
		return model;
	}
	
	@RequestMapping(value="/lookup")
	public ModelAndView he(){
		ModelAndView model = new ModelAndView("testbusi");
		
		return model;
	}

}
