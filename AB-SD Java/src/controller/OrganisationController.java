package controller;

import model.Organisation;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/organisation")
public class OrganisationController {

	@RequestMapping(value = "/organisation")
	public ModelAndView listOrg() {
		
		return new ModelAndView("OrganisationList", "Organisation",
				new Organisation());
	}
	
}
