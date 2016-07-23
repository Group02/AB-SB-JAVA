package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import hibernate.HibernateUtil;
import model.Team;

public class TeamDAO implements TeamInterface{
	
	private Session session;
	private Transaction transaction;
	
	public void openSession() {
		session = HibernateUtil.getSessionFactory().openSession();
	}
	
	public void openSessionWithBeginTransaction() {
		session = HibernateUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();
	}
	
	public void commit() {
		transaction.commit();
	}
	
	public void rollback() {
		transaction.rollback();
	}
	
	public void closeSession () {
		session.close();
	}
	
	@Override
	public Team FindTeam(String teamName) {
		try {
			openSession();
			
			Team team = (Team)session.get(Team.class, teamName);
			
			return team;
		} catch (HibernateException e) {
			System.out.println("Failed when to Find Team!");
			e.printStackTrace();
		} finally {
			closeSession();
		}
		return null;
	}

	@Override
	public void deleteTeam(Team team) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertTeam(Team team) {
		try {
			openSessionWithBeginTransaction();
			
			session.saveOrUpdate(team);
			
			commit();
		} catch (HibernateException e) {
			System.out.println("Failed when to insert Address Lookup!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

	@Override
	public List<Team> getAllTeam() {
		try {
			openSession();;
			
			@SuppressWarnings("unchecked")
			List<Team> team = session.createCriteria(Team.class).list();
			
			return team;
		} catch (HibernateException e) {
			System.out.println("Failed when to get list Address Lookup!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
		return null;
	}

	public List<Team> getTeam(){
		try {
			openSession();;
			
			@SuppressWarnings("unchecked")
			List<Team> team = session.createCriteria(Team.class)
			.add(Restrictions.eq("status", true)).list();
			
			return team;
		} catch (HibernateException e) {
			System.out.println("Failed when to get list Address Lookup!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
		return null;
	}
	
	@Override
	public void updateTeam(Team team) {
		try {
			openSessionWithBeginTransaction();
			
				Team oldTeam = (Team)session.get(Team.class, team.getTeamName());
				
				oldTeam.setTeamName(team.getTeamName());
				oldTeam.setShortDes(team.getShortDes());
				oldTeam.setLeadContact(team.getLeadContact());
				oldTeam.setAddress(team.getAddress());
				oldTeam.setStatus(team.isStatus());
				oldTeam.setPostCode(team.getPostCode());
				oldTeam.setTown(team.getTown());
				oldTeam.setCounty(team.getCounty());
				oldTeam.setNation(team.getNation());
				oldTeam.setTypeOfBu(team.getTypeOfBu());
				oldTeam.setSicCode(team.getSicCode());
				oldTeam.setFullDes(team.getFullDes());
				oldTeam.setPhone(team.getPhone());
				oldTeam.setFax(team.getFax());
				oldTeam.setMail(team.getMail());
				oldTeam.setWA(team.getWA());
			
				commit();
		} catch (Exception e) {
			try {
				session.saveOrUpdate(team);
				commit();
			} catch (Exception e2) {
				System.out.println("Failed when to insert Address Lookup!");
				e2.printStackTrace();
				rollback();
			}
		} finally {
			closeSession();
		}
	}

}
