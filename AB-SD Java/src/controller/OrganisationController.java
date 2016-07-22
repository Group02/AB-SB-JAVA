package controller;

import java.util.List;

import model.Organisation;
import model.SupportingMaterial;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.SupportingMaterialsDAO;

@Controller
@RequestMapping(value = "/organisation")
public class OrganisationController {
	private SupportingMaterialsDAO smDAO = new SupportingMaterialsDAO();

	@RequestMapping(value = "/list")
	public ModelAndView listActiveOrg() {
		
		return new ModelAndView("OrganisationList", "Organisation",
				new Organisation());
	}
	
	@RequestMapping(value = "/details")
	public ModelAndView initialDetailsOrg() {
		ModelAndView model = new ModelAndView("AddOrganisation2");
		
		List<SupportingMaterial> listSM = smDAO.getAllSM();
		SupportingMaterial SM = new SupportingMaterial();
		
		model.addObject("listSM", listSM);
		model.addObject("SM", SM);
		
		return model;
	}
	
	@RequestMapping(value = "/handleSMForm", method = RequestMethod.POST)
	public String handleSMForm(@ModelAttribute("SM") SupportingMaterial SM) {
		// Save new Supporting Materials to DS
		smDAO.insertSM(SM);
		
		// Back to details form
		return "redirect:/organisation/details.html";
	}
	
}

