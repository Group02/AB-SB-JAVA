package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.AddressLookup;
import dao.*;

@Controller
@RequestMapping(value = "/address")
public class AddressLookupController {
	
	private AddressLookupDAO addrdao= new AddressLookupDAO();
	
	@RequestMapping(value="/addresslookup", method=RequestMethod.GET)
	public ModelAndView address(HttpSession session){
		ModelAndView model = new ModelAndView("address_lookup");
		
		if(addrdao.getAllAddr()!=null){
			
			//Make list address lookup
			List<AddressLookup> listAddr = addrdao.getAllAddr();
			
			//Save object to session
			session.setAttribute("listAddr", listAddr);
		}
		
		return model;
	}
	

	@RequestMapping(value="/addresslookup", method=RequestMethod.POST)
	public ModelAndView address(HttpServletRequest request){
		ModelAndView model = new ModelAndView("address_lookup");
		
		String addr = request.getParameter("addr");//get value postcode
		
		if(addrdao.FindAddr(addr)!=null){
			model.addObject("addrLookup", addrdao.FindAddr(addr));
			System.out.println(addrdao.FindAddr(addr).getAddress());
		};
		
		return model;
	}

	@RequestMapping(value="/lookup")
	public ModelAndView test(){
		ModelAndView model = new ModelAndView("/testbusi");
		return model;
	}
}
