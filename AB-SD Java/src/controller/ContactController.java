package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/contact")
public class ContactController {

	@RequestMapping(value="/contactlookup", method=RequestMethod.GET)
	public ModelAndView address(HttpSession session){
		ModelAndView model = new ModelAndView("list_contact");
		
		return model;
	}
	
	@RequestMapping(value="/contactlookup", method=RequestMethod.POST)
	public ModelAndView address(HttpServletRequest request){
		ModelAndView model = new ModelAndView("list_contact");
		return model;
	}
	
	@RequestMapping(value="/lookup")
	public ModelAndView he(){
		ModelAndView model = new ModelAndView("testbusi");
		
		return model;
	}

}
