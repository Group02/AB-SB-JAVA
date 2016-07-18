package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/menu")
public class MenuController {

	@RequestMapping(value = "/building")
	public String showBuildingPage() {
		
		return "Building";
	}
	
}
