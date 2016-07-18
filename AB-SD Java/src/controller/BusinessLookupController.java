package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.BusinessLookupDAO;
import model.BusinessLookup;

@Controller
@RequestMapping("/business")
public class BusinessLookupController {

	private BusinessLookupDAO busidao = new BusinessLookupDAO();
	private BusinessLookup business;
	
	@RequestMapping(value="/businesslookup", method=RequestMethod.GET)
	public ModelAndView address(HttpSession session){
		ModelAndView model = new ModelAndView("business_lookup");
		
		if(busidao.getAllBusi() != null){
			
			//Make list business lookup
			List<BusinessLookup> listBusi = busidao.getAllBusi();
			
			//Save list to session
			session.setAttribute("listBusi", listBusi);
		}
		return model;
	}
	
	@RequestMapping(value="/businesslookup", method=RequestMethod.POST)
	public ModelAndView address(HttpServletRequest request){
		ModelAndView model = new ModelAndView("business_lookup");
		
		String busi= request.getParameter("busi");//get value SIC code
		
		System.out.println(busi);
		
		try {
			
			business = busidao.FindBusi(busi);
			
			model.addObject("business", business);
			
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
