package controller;

import java.util.List;

import model.AddressLookup;
import model.BusinessLookup;
import model.Contacts;
import javax.servlet.http.HttpServletRequest;

import model.Directorate;
import model.Organisation;
import model.SupportingMaterial;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.AddressLookupDAO;
import dao.BusinessLookupDAO;
import dao.ContactDAO;
import dao.DirectorateDAO;
import dao.SupportingMaterialsDAO;

@Controller
@RequestMapping(value = "/organisation")
public class OrganisationController {
	private SupportingMaterialsDAO smDAO = new SupportingMaterialsDAO();
	DirectorateDAO daoDir = new DirectorateDAO();
	AddressLookupDAO addrdao= new AddressLookupDAO();
	ContactDAO cont = new ContactDAO();
	BusinessLookupDAO busidao = new BusinessLookupDAO();
	DirectorateDAO dirDao = new DirectorateDAO();

	@RequestMapping(value = "/list")
	public ModelAndView listOrg() {
		
		DepartmentController.turn = 0;
		return new ModelAndView("OrganisationList", "Organisation",
				new Organisation());
	}
	
	@RequestMapping(value = "/create")
	public ModelAndView createOrg() {
		Organisation org = new Organisation();
		DepartmentController.turn = 0;
		return new ModelAndView("AddOrganisation2", "Org", org);
	}
	
	@RequestMapping(value = "/amend")
	public ModelAndView amendOrg() {
		ModelAndView model = new ModelAndView("AmendOrganisation");
		DepartmentController.turn = 0;
		List<Directorate> list = daoDir.getAllDir();
		model.addObject("list", list);
		
		SupportingMaterial SM = new SupportingMaterial();
		Organisation org = new Organisation();
		List<SupportingMaterial> listSM = smDAO.getAllSM();
		
		model.addObject("SM", SM);
		model.addObject("Org", org);
		model.addObject("listSM", listSM);
		
		return model;
	}
	
	@RequestMapping(value = "/amendDir")
	public ModelAndView amendDir() {
		ModelAndView model = new ModelAndView("AmendDirectorate","he",new Directorate());
		DepartmentController.turn = 0;
		//list address lookup
		if(addrdao.getAllAddr()!=null){
			
			//Make list address lookup
			List<AddressLookup> listAddr = addrdao.getAllAddr();
			
			model.addObject("listAddr", listAddr);
		}
		
		//list contact lookup
		if(cont.getAllCont()!=null){
			
			//Make list address lookup
			List<Contacts> listCont = cont.getAllCont();
			
			//Save object to session
			model.addObject("listCont", listCont);
		}

		//list business lookup
		if(busidao.getAllBusi() != null){
			
			//Make list business lookup
			List<BusinessLookup> listBusi = busidao.getAllBusi();
			
			model.addObject("listBusi", listBusi);
		}
				
		return model;
	}
	
	static String searchBU = "";
	@RequestMapping(value = "/searchBU")
	public ModelAndView searchBU(HttpServletRequest request){
		String search = request.getParameter("search");
		searchBU = search;
		ModelAndView model = new ModelAndView("AmendDirectorate","he",daoDir.FindDir(search));
		DepartmentController.turn = 0;
		//list address lookup
			if(addrdao.getAllAddr()!=null){
				
				//Make list address lookup
				List<AddressLookup> listAddr = addrdao.getAllAddr();
				
				model.addObject("listAddr", listAddr);
			}
			
			//list contact lookup
			if(cont.getAllCont()!=null){
				
				//Make list address lookup
				List<Contacts> listCont = cont.getAllCont();
				
				//Save object to session
				model.addObject("listCont", listCont);
			}

			//list business lookup
			if(busidao.getAllBusi() != null){
				
				//Make list business lookup
				List<BusinessLookup> listBusi = busidao.getAllBusi();
				
				model.addObject("listBusi", listBusi);
			}
				
		return model;
	}
	
	@RequestMapping(value = "/handleOrgForm", method = RequestMethod.POST)
	public String handleOrgForm(@ModelAttribute("Org") Organisation org) {
		
		return "redirect:/organisation/list.html";
	}
	
	@RequestMapping(value = "/handleSMForm", method = RequestMethod.POST)
	public String handleSMForm(@ModelAttribute("SM") SupportingMaterial SM, HttpServletRequest request) {
		// Get new URL
		String newURL = request.getParameter("newURL");
		
		if (SM.getUrl() == null || "".equals(SM.getUrl())) {
			// Set URL fo new SM
			SM.setUrl(newURL);
			
			// Insert new SM:
			smDAO.insertSM(SM);
			
			return "redirect:/organisation/amend.html";
		}
		
		// Kiem tra newURL va oldURL co giong nhau hay khong?
		if (newURL.equals(SM.getUrl())) {
			// GIONG:
			smDAO.updateSM(SM);
		} else {
			// KHONG GIONG:
			SupportingMaterial newSM = new SupportingMaterial();
			newSM.setUrl(newURL);
			newSM.setDescription(SM.getDescription());
			newSM.setType(SM.getType());
			newSM.setAddedBy(SM.getAddedBy());
			
			// Delete old SM:
			smDAO.deleteSM(SM);
			
			// Insert new SM:
			smDAO.insertSM(newSM);
		}
		DepartmentController.turn = 0;
		// Back to details form
		return "redirect:/organisation/amend.html";
	}
	
	@RequestMapping(value = "/createDir", method = RequestMethod.GET)
	public ModelAndView InitCreateDir() {
		ModelAndView model = new ModelAndView("AddDirectorate", "he", new Directorate());
		
		//list address lookup
			if(addrdao.getAllAddr()!=null){
				
				//Make list address lookup
				List<AddressLookup> listAddr = addrdao.getAllAddr();
				
				model.addObject("listAddr", listAddr);
			}
			
			//list contact lookup
			if(cont.getAllCont()!=null){
				
				//Make list address lookup
				List<Contacts> listCont = cont.getAllCont();
				
				//Save object to session
				model.addObject("listCont", listCont);
			}
	
			//list business lookup
			if(busidao.getAllBusi() != null){
				
				//Make list business lookup
				List<BusinessLookup> listBusi = busidao.getAllBusi();
				
				model.addObject("listBusi", listBusi);
			}
				
		return model;
	}
	
	@RequestMapping(value = "/handleCreateDir", method = RequestMethod.POST)
	public ModelAndView listForm(
			@ModelAttribute(value = "he") Directorate dir) {
		ModelAndView model = new ModelAndView("redirect:/organisation/amend.html");

		dir.setActive(true);
		dirDao.insertDir(dir);

		return model;
	}
}

