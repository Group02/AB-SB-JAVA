package controller;

import java.util.List;

import model.Directorate;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.DirectorateDAO;
@Controller
@RequestMapping(value="/directorate")

public class DirectorateController {
	
	DirectorateDAO dao = new DirectorateDAO();
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView setFormAddDirectorate(){
		ModelAndView model = new ModelAndView("AddDirectorate","he",new Directorate());
		
		return model;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView listForm(
			@ModelAttribute(value = "he") Directorate dir) {
		ModelAndView model = new ModelAndView("DirectorateList");

		dir.setActive(true);
		dao.insertDir(dir);

		List<Directorate> list = dao.getAllDir();
		model.addObject("list", list);

		return model;
	}

}
