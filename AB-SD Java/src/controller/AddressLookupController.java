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
	
	@RequestMapping(value="/lookup", method=RequestMethod.GET)
	public ModelAndView address(HttpSession session){
		ModelAndView model = new ModelAndView("address_lookup");
		
		if(addrdao.getAllAddr()!=null){
			
			//Take list address lookup
			List<AddressLookup> listAddr = addrdao.getAllAddr();
			
			//Save object to session
			session.setAttribute("listAddr", listAddr);
		}
		
		return model;
	}
	
	@RequestMapping(value="/select", method=RequestMethod.GET)
	public ModelAndView select(){
		ModelAndView model = new ModelAndView("address_lookup");
		return model;
	}

	@RequestMapping(value="/lookup", method=RequestMethod.POST)
	public ModelAndView select(HttpServletRequest request){
		ModelAndView model = new ModelAndView("address_lookup");
		
		String addr= request.getParameter("addr");
		String addr2= request.getParameter("addr2");
		
		if(addrdao.FindAddr(addr, addr2)!=null){
			model.addObject("addrLookup", addrdao.FindAddr(addr, addr2));
			System.out.println(addrdao.FindAddr(addr, addr2).getAddress());
		};
		
		return model;
	}

}
