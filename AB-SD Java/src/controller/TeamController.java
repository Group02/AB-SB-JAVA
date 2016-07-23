package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.TeamDAO;
import model.Team;

@Controller
@RequestMapping(value="/team")
public class TeamController {

	TeamDAO dao = new TeamDAO();
	
	@RequestMapping(value="/teamlist", method=RequestMethod.GET)
	public ModelAndView listteam(){
		ModelAndView model = new ModelAndView("TeamL","command",new Team());
		
		List<Team> listTeam = dao.getAllTeam();
		
		model.addObject("listTeam", listTeam);
		for (Team team : listTeam) {
			if(team.isStatus()){
				model.addObject("status", "Yes");
			}else{
				model.addObject("status", "No");
			}
		}
		return model;
	}
	
	@RequestMapping(value="/teamadd", method=RequestMethod.GET)
	public ModelAndView addteam(){
		ModelAndView model = new ModelAndView("TeamA", "command", new Team());
		
		return model;
	}
	
	@RequestMapping(value="/teamadd", method=RequestMethod.POST)
	public ModelAndView addteam(@ModelAttribute("command") Team team){
		ModelAndView model = new ModelAndView("TeamL");
		
		team.setStatus(true);
		
		dao.insertTeam(team);
		
//		add list team to model
		List<Team> listTeam = dao.getAllTeam();
		model.addObject("listTeam", listTeam);
		
		return model;
	}
	
	@RequestMapping(value="/teammo", method=RequestMethod.GET)
	public ModelAndView moteam(HttpServletRequest request){
		ModelAndView model = new ModelAndView("TeamM", "command", new Team());
		
		
		String teamName = request.getParameter("?()^&&bap$%%");
		model.addObject("teamName", teamName);
		
		//get a team with teamName
		if(dao.FindTeam(teamName)!=null){
			
			Team team = dao.FindTeam(teamName);
			model.addObject("shortDes", team.getShortDes());
			model.addObject("leadContact", team.getLeadContact());
			model.addObject("address", team.getAddress());
			model.addObject("postCode", team.getPostCode());
			model.addObject("town", team.getTown());
			model.addObject("county", team.getCounty());
			model.addObject("nation", team.getNation());
			model.addObject("typeOfBu", team.getTypeOfBu());
			model.addObject("sicCode", team.getSicCode());
			model.addObject("fullDes", team.getFullDes());
			model.addObject("phone", team.getPhone());
			model.addObject("fax", team.getFax());
			model.addObject("mail", team.getMail());
			model.addObject("WA", team.getWA());
			
		}
		return model;
	}
	
	@RequestMapping(value="/teammo", method=RequestMethod.POST)
	public ModelAndView moteam(@ModelAttribute("command") Team team){
		ModelAndView model = new ModelAndView("TeamL");
		
		team.setStatus(true);
		
		dao.updateTeam(team);
		
//		add list team to model
		List<Team> listTeam = dao.getAllTeam();
		model.addObject("listTeam", listTeam);
		
		return model;
	}

}
