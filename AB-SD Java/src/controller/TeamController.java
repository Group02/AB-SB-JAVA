
package controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.AddressLookupDAO;
import dao.BusinessLookupDAO;
import dao.ContactDAO;
import dao.TeamDAO;
import model.AddressLookup;
import model.BusinessLookup;
import model.Contacts;
import model.Team;

@Controller
@RequestMapping(value="/team")
public class TeamController {

	TeamDAO dao = new TeamDAO();
	AddressLookupDAO addrdao= new AddressLookupDAO();
	ContactDAO cont = new ContactDAO();
	BusinessLookupDAO busidao = new BusinessLookupDAO();
	
	private static LinkedList<Team> listAll;
	private static LinkedList<Team> variable; //declare here
	
	@RequestMapping(value="/teamlist", method=RequestMethod.GET)
	public ModelAndView listteam(){
		ModelAndView model = new ModelAndView("TeamL");
		
		List<Team> listTeam = dao.getAllTeam();
		
		model.addObject("listTeam", listTeam);
		
		
		return model;
	}
	
	@RequestMapping(value="/teamlist2", method=RequestMethod.GET)
	public ModelAndView active(HttpServletRequest request){
		ModelAndView model = new ModelAndView("TeamL");
		
		Team team = dao.FindTeam(request.getParameter("teamName"));
		team.setStatus(true);
		
		dao.updateTeam(team);

		List<Team> listTeam = dao.getAllTeam();
		
		model.addObject("listTeam", listTeam);
		return model;
	}
	
	@RequestMapping(value="/teamadd", method=RequestMethod.GET)
	public ModelAndView addteam(){
		ModelAndView model = new ModelAndView("TeamA", "command", new Team());
		
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
	
	@RequestMapping(value="/teamadd", method=RequestMethod.POST)
	public ModelAndView addteam(@ModelAttribute("command") Team team){
		ModelAndView model = new ModelAndView("TeamL");
		
			team.setStatus(true);
			
			dao.insertTeam(team);
			
//			add list team to model
			List<Team> listTeam = dao.getAllTeam();
			model.addObject("listTeam", listTeam);
			
			return model;
	}
	
	@RequestMapping(value="/teammo", method=RequestMethod.GET)
	public ModelAndView moteam(HttpServletRequest request){
		ModelAndView model = new ModelAndView("TeamM", "command", new Team());
		
		
		String teamName = request.getParameter("teamName");
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

	@RequestMapping(value="/teammo2", method=RequestMethod.GET)
	public ModelAndView inactive(HttpServletRequest request){
		ModelAndView model = new ModelAndView("TeamL");
		
		Team team = dao.FindTeam(request.getParameter("teamName"));
		team.setStatus(false);
		
		dao.updateTeam(team);

		List<Team> listTeam = dao.getAllTeam();
		
		model.addObject("listTeam", listTeam);
		return model;
	}
	
	
	//filter
		@RequestMapping(value = "/filter")
		public ModelAndView search(HttpServletRequest request){
			ModelAndView model = new ModelAndView("TeamL");
			variable = new LinkedList<Team>();
			listAll = new LinkedList<Team>();
			String name;
			
			//get string request
			String[] part = request.getParameter("search").split(" ");
			
			List<Team> listTeam = dao.getAllTeam();
			
			//get list variable from list all
			for(int i =0 ; i< listTeam.size();i++){
				listAll.add(listTeam.get(i));
			}
			variable = listAll;
			
			//get team correct from variable
			if (part.length!=1){
				LinkedList<Team> s = new LinkedList<Team>();
				int i, variableSize = variable.size();
				char start = part[0].charAt(0), end = part[1].charAt(0);
				Team team = new Team();
				for (i = 0; i<variableSize; i++){
					//dept = new Department();
					team = variable.get(i);
					name = team.getTeamName();
					if (!name.equals("")){
						name = name.toUpperCase();
						if ((name.charAt(0)>=start) && (name.charAt(0)<=end)){
							s.add(team);
						}
					}
				}
				variable = new LinkedList<Team>();
				variable = s;
			}
			
			model.addObject("listTeam", variable);
			return model;
		}
	
}


