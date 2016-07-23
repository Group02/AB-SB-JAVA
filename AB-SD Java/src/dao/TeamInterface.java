package dao;

import java.util.List;

import model.Team;

public interface TeamInterface {
	
		//return a Team with address
		public Team FindTeam(String teamName);
		
		//delete a Team
		public void deleteTeam(Team team);
		
		//insert a new Team
		public void insertTeam(Team team);
		
		//return list of Team
		public List<Team> getAllTeam();
		
		//return list Team with status active
		public List<Team> getTeam();
		
		//update team
		public void updateTeam(Team team);
}
