package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.ContactDAO;
import model.Contacts;


@Controller
@RequestMapping(value="/contact")
public class ContactController {

	ContactDAO cont = new ContactDAO();
	@RequestMapping(value="/contactlookup", method=RequestMethod.GET)
	public ModelAndView conntactlookup(){
		ModelAndView model = new ModelAndView("list_contact");
		
			if(cont.getAllCont()!=null){
			
			//Make list address lookup
			List<Contacts> listCont = cont.getAllCont();
			
			//Save object to session
			model.addObject("listCont", listCont);
		}
		return model;
	}
	
	@RequestMapping(value="/contactlookup", method=RequestMethod.POST)
	public ModelAndView contactlookup(HttpServletRequest request){
		ModelAndView model = new ModelAndView("list_contact");
		return model;
	}
	
	@RequestMapping(value="/contactadd", method=RequestMethod.GET)
	public ModelAndView contactadd(HttpServletRequest request){
		ModelAndView model = new ModelAndView("contact");
		return model;
	}
	
	@RequestMapping(value="/lookup")
	public ModelAndView he(){
		ModelAndView model = new ModelAndView("testbusi");
		
		return model;
	}

	
}
