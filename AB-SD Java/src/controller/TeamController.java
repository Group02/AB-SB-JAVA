package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/team")
public class TeamController {

	@RequestMapping(value="/teamadd", method=RequestMethod.GET)
	public ModelAndView teamadd(){
		
		ModelAndView model = new ModelAndView("TeamA");
		
		return model;
	}

	@RequestMapping(value="/teamlist", method=RequestMethod.GET)
	public ModelAndView teamlist(){
		
		ModelAndView model = new ModelAndView("TeamL");
		
		return model;
	}
}
