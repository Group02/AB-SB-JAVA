package controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import hibernate.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_ADDPeer;

import dao.AddressLookupDAO;
import dao.BusinessLookupDAO;
import dao.ContactDAO;
import dao.TeamDAO;
import model.*;
import hibernate.*;

import java.util.*;

@Controller
@RequestMapping (value = "/web")
public class DepartmentController {
	
	TeamDAO teamDao = new TeamDAO();
	AddressLookupDAO addrdao= new AddressLookupDAO();
	ContactDAO cont = new ContactDAO();
	BusinessLookupDAO busidao = new BusinessLookupDAO();
	
	private static int turn = 0;
	private static SessionFactory factory = HibernateUtil.getSessionFactory();
	private static Session session;
	private static Transaction tx;
	private static List<Department> list;
	private static List<Department> listBusiness;
	private static int[] number;
	private static int[] view;
	private static int[] array;
	private static LinkedList<Department> listTrue;
	private static LinkedList<Department> listAll;
	private static LinkedList<Department> variable; //declare here
	private static int check=1;
	private static int index = 0;
	private static int checkButton;
	
	public static void update(Department dept){
		session = factory.openSession();
		tx = session.beginTransaction();
		session.saveOrUpdate(dept);
		tx.commit();
		session.close();
	}
	
	public static Department findDepartment(String departmentName){
		session = factory.openSession();
		Department dept;
		try{
			dept = (Department) session.createCriteria(Department.class).add(Restrictions.like("departmentName", departmentName)).list().iterator().next();
		}
		catch(Exception e){
			return null;
		}
		session.close();
		return dept;
	}
	
	//return a list from the specified start end specified end
	static LinkedList<Department> viewList(List<Department> arrange, int start, int end){
	   if (end > arrange.size()) end = arrange.size();
	   int i;
	   LinkedList<Department> temp = new LinkedList<Department>();
	   for (i=start; i< end; i++)
		   temp.add(arrange.get(i));
	   return temp;
	}
	
	
	public static void setNumber(List<Department> arrange){
		int k = 0;
		if (arrange.size()%15!=0) k = 1;
		number = new int[arrange.size()/15 + k];
		for (int i=0;i<number.length;i++)
			number[i] = i;
		int button;
		if ((index + 5) > number.length) button = number.length - index;
		else button = 5;
		int index1 = index;
		view = new int[button];
		for (int i = 0; i < button; i++){
			view[i] = number[index1];
			index1++;
		}
	}
	
	// set values for lists
	@SuppressWarnings("unchecked")
	public static void listAllDepartment(List<Department> l1, LinkedList<Department> l2, LinkedList<Department> l3){
		session = factory.openSession();
		l1 = session.createCriteria(Department.class).list();
		session.close();
		l2 = new LinkedList<Department>();
		l3 = new LinkedList<Department>();
		int i;
		for (i=0; i<l1.size(); i++){
			if (l1.get(i).getIsActive().equals("yes")) 
				l2.add(l1.get(i));
			l3.add(l1.get(i));
		}
		variable = new LinkedList<Department>();
		if (check == 1) variable = l2;
		else variable = l3;
		setNumber(variable);
	}
	
	public static void setView(Model model, int in, int num){
		if (in != 0){
			model.addAttribute("previous", "display: block;");
			if ((in + 5)<num) model.addAttribute("next", "display: block;");
			else model.addAttribute("next", "display: none;");
		}
		else{
			model.addAttribute("previous", "display: none;");
			if (num <= 5) model.addAttribute("next", "display: none;");
			else model.addAttribute("next", "display: block;");
		}
	}
	
	public static void setConfig(Model model, LinkedList<Department> list1, int[] list2){
		 if (check == 1) model.addAttribute("check","");
		 else model.addAttribute("check","checked");
		 model.addAttribute("result", list1);
		 model.addAttribute("NumberOfButton", list2);
	}
	
	@RequestMapping(value = "/wrap")
	public String wrap(Model model, HttpServletRequest request){
		String url = request.getParameter("url");
		int k = 0, kt = 0;
		if (url.equals("previous")){
			checkButton--; 
			if ((checkButton < view[0])) {
				index-=5;
				kt = 1;
			}
		}
		else{
			checkButton++;
			if ((checkButton > view[view.length-1])){
				index+=5;
				kt = 2;
			}
		}
		setNumber(variable);
		if (kt == 1) checkButton = view[view.length -1];
		else 
			if (k == 2) checkButton = view[0];
		
		model.addAttribute("checkButton", checkButton);
		model.addAttribute("style","background: yellow;");
		
	    setConfig(model,viewList(variable, array[checkButton], array[checkButton] + 15) , view);
	    setView(model, index, number.length);
	    model.addAttribute("search",OrganisationController.searchBU);
		return "AmendDirectorate2";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping( value = "/index")
	public String department(Model model, HttpServletRequest request){
		checkButton = 0;
		if (turn == 0){
			index = 0;
			System.out.println("list contact");
			listAll = new LinkedList<Department>();
			listTrue = new LinkedList<Department>();
			session = factory.openSession();
			list = session.createCriteria(Department.class).list();
			int i;
			for (i=0; i<list.size(); i++){
				if (list.get(i).getIsActive().equals("yes")) 
					listTrue.add(list.get(i));
				listAll.add(list.get(i));
			}
			array = new int[255];
			int j = 0;
			for (i=0; i < 255; i++){
				array[i] = j;
				j+=15;
			}
			variable = new LinkedList<Department>();
			if (check == 1) variable = listTrue;
			else variable = listAll;
			setNumber(variable);
			session.close();
			turn++;
		}
		else{
			checkButton = Integer.parseInt(request.getParameter("pageNumber"))-1;
		}
		model.addAttribute("search",OrganisationController.searchBU);
		model.addAttribute("style","background: yellow;");
		model.addAttribute("checkButton", checkButton);
		setConfig(model, viewList(variable, array[checkButton], array[checkButton]+15), view);
		setView(model, index, number.length);
		return "AmendDirectorate2";
	}
	
	@RequestMapping(value = "/activateDept")
	public String changeStatus(Model model, HttpServletRequest request){
		String nameDept = request.getParameter("departmentName");
		String isActive = request.getParameter("status");
		Department dept = findDepartment(nameDept);
		if (isActive.equals("no")) dept.setIsActive("yes");
		else dept.setIsActive("no");
		update(dept);
		list.clear();
		index = 0;
		listAllDepartment(list, listTrue, listAll);
		setConfig(model, viewList(variable, array[checkButton],array[checkButton] + 15), view);
		setView(model, index, number.length);
		model.addAttribute("style","background: yellow;");
		model.addAttribute("checkButton", checkButton);
		model.addAttribute("search",OrganisationController.searchBU);
		return "AmendDirectorate2";
	}
	
	public static void setCheckboxList(Model model){
		variable = new LinkedList<Department>();
		if (check == 1)	variable = listTrue;
		else variable =  listAll;
		index = 0;
		setNumber(variable);
		checkButton = 0;
		model.addAttribute("style","background: yellow;");
		setConfig(model, viewList(variable, array[checkButton],array[checkButton] + 15), view);
		model.addAttribute("style","background: yellow;");
		model.addAttribute("checkButton", checkButton);
		setView(model, index, number.length);
	}
	
	@RequestMapping(value = "/listAll")
	public String viewAll(Model model){
		check = 2;
		variable = new LinkedList<Department>();
		setCheckboxList(model);
		//variable =  listAll;
		//setNumber(variable);
		/*index = 0;
		setNumber(variable);
		checkButton = 0;
		setConfig(model, viewList(variable, 0, 15), view);
		model.addAttribute("style","background: yellow;");
		setConfig(model, viewList(variable, array[checkButton],array[checkButton] + 15), view);
		model.addAttribute("style","background: yellow;");
		model.addAttribute("checkButton", checkButton);
		setView(model, index, number.length);*/
		model.addAttribute("search",OrganisationController.searchBU);
		return "AmendDirectorate2";
	}
	
	@RequestMapping(value = "/listOnlyTrue")
	public String viewOnlyTrue(Model model){
		check = 1;
		variable = new LinkedList<Department>();
		setCheckboxList(model);
		/*variable = listTrue;
		//setNumber(variable);
		index = 0;
		setNumber(variable);
		//setConfig(model, viewList(variable, 0, 15), view);
		setConfig(model, viewList(variable, array[checkButton],array[checkButton] + 15), view);
		checkButton = 0;
		model.addAttribute("style","background: yellow;");
		model.addAttribute("checkButton", checkButton);
		setView(model, index, number.length);*/
		model.addAttribute("search",OrganisationController.searchBU);
		return "AmendDirectorate2";
	}
	
	@RequestMapping(value = "/filter")
	public String search(Model model, HttpServletRequest request){
		String[] part = request.getParameter("search").split(" ");
		variable = new LinkedList<Department>();
		if (check == 1) variable = listTrue;
		else variable = listAll;
		String name;
		
		if (part.length!=1){
			LinkedList<Department> s = new LinkedList<Department>();
			int i, variableSize = variable.size();
			char start = part[0].charAt(0), end = part[1].charAt(0);
			Department dept = new Department();
			for (i = 0; i<variableSize; i++){
				dept = variable.get(i);
				name = dept.getDepartmentName();
				if (!name.equals("")){
					name = name.toUpperCase();
					if ((name.charAt(0)>=start) && (name.charAt(0)<=end)){
						s.add(dept);
					}
				}
			}
			variable = new LinkedList<Department>();
			variable = s;
		}
		index = 0;
		setNumber(variable);
		//setConfig(model, viewList(variable, 0, 15), view);
		setConfig(model, viewList(variable, array[checkButton],array[checkButton] + 15), view);
		setView(model, index, number.length);
		checkButton = 0;
		model.addAttribute("style","background: yellow;");
		model.addAttribute("checkButton", checkButton);
		model.addAttribute("search",OrganisationController.searchBU);
		return "AmendDirectorate2";
	}
	
	
//---------------------------------------------------------------------------------------------------------------
	
	private static int kt;
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addDepartment(){
		kt = 1;
		ModelAndView model = new ModelAndView("AddDepartments", "command", new Department());
		turn = 0;
		model.addObject("readonly", "false");
		
		return model;
	}
	
	//return page amend department with details tab, teams tab
	@RequestMapping(value="/viewDepartment", method=RequestMethod.GET)
	public ModelAndView viewDepartment(HttpServletRequest request){
		kt = 2;
		String deptName = request.getParameter("departmentName");
		ModelAndView model = new ModelAndView("AmendDepartment", "command", findDepartment(deptName));
		
		//get list team
		List<Team> listTeam = teamDao.getAllTeam();
		model.addObject("listTeam", listTeam);
		
		//code lookup
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
		
		turn = 0;
		model.addObject("readonly", "true");
		model.addObject("departmentName", deptName);
		
		return model;
	}
	
//	change status active
	@RequestMapping(value="/teamlist2", method=RequestMethod.GET)
	public ModelAndView active(HttpServletRequest request){
		kt = 2;
		String deptName = request.getParameter("departmentName");
		ModelAndView model = new ModelAndView("AmendDepartment", "command", findDepartment(deptName));
		
		Team team = teamDao.FindTeam(request.getParameter("teamName"));
		team.setStatus(true);
		System.out.println("chage status" +deptName + team);
		teamDao.updateTeam(team);

		List<Team> listTeam = teamDao.getAllTeam();
		
		model.addObject("listTeam", listTeam);
		
		turn = 0;
		model.addObject("readonly", "true");
		model.addObject("departmentName", deptName);
		
		return model;
	}
	
	//return page team add
	@RequestMapping(value="/teamadd", method=RequestMethod.GET)
	public ModelAndView addteam(HttpServletRequest request){
		
		String deptName = request.getParameter("departmentName");
		ModelAndView model = new ModelAndView("AddTeam", "teamadd", new Team());
		
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
		
		model.addObject("departmentName", deptName);
		
		return model;
	}
	
	//add a new team
	@RequestMapping(value="/teamadd", method=RequestMethod.POST)
	public ModelAndView addteam(@ModelAttribute("teamadd") Team team, HttpServletRequest request){
			kt = 2;
			String deptName = request.getParameter("departmentName");
			ModelAndView model = new ModelAndView("AmendDepartment", "command", findDepartment(deptName));
		
			team.setStatus(true);
			
			teamDao.insertTeam(team);
			
//			add list team to model
			List<Team> listTeam = teamDao.getAllTeam();
			model.addObject("listTeam", listTeam);
			
			turn = 0;
			model.addObject("readonly", "true");
			model.addObject("departmentName", deptName);
			return model;
	}
	
//	return page team modify
	@RequestMapping(value="/teammo", method=RequestMethod.GET)
	public ModelAndView moteam(HttpServletRequest request){
		ModelAndView model = new ModelAndView("AmendTeam", "teammodi", new Team());
		String deptName = request.getParameter("departmentName");
		
		String teamName = request.getParameter("teamName");
		model.addObject("teamName", teamName);
		
		//get a team with teamName
		if(teamDao.FindTeam(teamName)!=null){
			
			Team team = teamDao.FindTeam(teamName);
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
		
		model.addObject("departmentName", deptName);
			
		return model;
	}
	
	//amend team
	@RequestMapping(value="/teammo", method=RequestMethod.POST)
	public ModelAndView moteam(@ModelAttribute("teammodi") Team team, HttpServletRequest request){
		kt = 2;
		String deptName = request.getParameter("departmentName");
		ModelAndView model = new ModelAndView("AmendDepartment", "command", findDepartment(deptName));

		team.setStatus(true);
		
		teamDao.updateTeam(team);
		
//		add list team to model
		List<Team> listTeam = teamDao.getAllTeam();
		model.addObject("listTeam", listTeam);
		
		turn = 0;
		model.addObject("readonly", "true");
		model.addObject("departmentName", deptName);
		return model;
	}

	//mark in-active
	@RequestMapping(value="/teammo2", method=RequestMethod.GET)
	public ModelAndView inactive(HttpServletRequest request){
		kt = 2;
		String deptName = request.getParameter("departmentName");
		ModelAndView model = new ModelAndView("AmendDepartment", "command", findDepartment(deptName));
		
		
		Team team = teamDao.FindTeam(request.getParameter("teamName"));
		team.setStatus(false);
		
		teamDao.updateTeam(team);

		List<Team> listTeam = teamDao.getAllTeam();
		System.out.println("mark in active"+deptName +team);
		model.addObject("listTeam", listTeam);
		
		turn = 0;
		model.addObject("readonly", "true");
		model.addObject("departmentName", deptName);
		
		model.addObject("style", "background: grey;");
		return model;
	}
	

	
	
	@RequestMapping(value="/addDepartment", method=RequestMethod.POST)
	public ModelAndView addDepartment(@ModelAttribute("command") Department dept, HttpServletRequest request){
		ModelAndView model = new ModelAndView("addDepartment");
		if (findDepartment(dept.getDepartmentName()) != null) {
			if (kt == 1) model.addObject("checkDept", "1");
			else update(dept);
		}
		else{
			model.addObject("style", "background: grey;");
			model.addObject("readonly", "true");
			dept.setIsActive("yes");
			update(dept);
			kt = 2;
		}
		list.clear();
		return model;
	}
}
