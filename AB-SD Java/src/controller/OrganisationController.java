package controller;

import model.Organisation;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/organisation")
public class OrganisationController {

	@RequestMapping(value = "/list")
	public ModelAndView listOrg() {
		
		return new ModelAndView("OrganisationList", "Organisation",
				new Organisation());
	}

	@RequestMapping(value = "/add")
	public ModelAndView addOrg() {
		
		return new ModelAndView("AddOrganisation", "Organisation",
				new Organisation());
	}
}
