package dao;

import java.util.List;

import hibernate.HibernateUtil;
import model.AddressLookup;
import model.Directorate;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DirectorateDAO implements DirectorateInterface{
	
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
	
//	public static void main(String args[]){
//		DirectorateDAO dao = new DirectorateDAO();
//		Directorate dir = new Directorate("123abc");
//		
//		dao.insertDir(dir);
//		System.out.println("Insert successfull");
//		
//	}
	public void closeSession () {
		session.close();
	}
	
	@Override
	public void deleteDir(Directorate directorate) {
		try {
			openSessionWithBeginTransaction();
			session.delete(directorate);
			commit();
		} catch (HibernateException e) {
			System.out.println("Failed when to delete Directorate!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

	@Override
	public void insertDir(Directorate directorate) {
		try {
			openSessionWithBeginTransaction();
			
			session.saveOrUpdate(directorate);
			
			commit();
		} catch (HibernateException e) {
			System.out.println("Failed when to insert Directorate!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
		
	}

	@Override
	public List<Directorate> getAllDir() {
		try {
			openSessionWithBeginTransaction();
			
			@SuppressWarnings("unchecked")
			List<Directorate> directorate = session.createCriteria(Directorate.class).list();
			
			for (Directorate dir : directorate) {
				System.out.println(dir.getDirectorateName());
				System.out.println(dir.getAddrLine1());
				System.out.println(dir.getLeadContact());
				System.out.println(dir.getPostcode());
				System.out.println(dir.isActive());
			}
			
			commit();
			return directorate;
		} catch (HibernateException e) {
			System.out.println("Failed when to get list directorate!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
		return null;
	}
	
	//upadte directorate
	public void updateDir(Directorate directorate){
		try {
			openSessionWithBeginTransaction();
			
			//Find directorate
			Directorate oldDir = (Directorate) session.get(Directorate.class, directorate.getDirectorateName());
			
			//set short description
			oldDir.setShortDescr(directorate.getShortDescr());
			
			//set lead contact 
			oldDir.setLeadContact(directorate.getLeadContact());
			
			//set copy address from organisation
			oldDir.setCpAddr(directorate.isCpAddr());
			
			//set address line 1
			oldDir.setAddrLine1(directorate.getAddrLine1());
			
			//set postcode
			oldDir.setPostcode(directorate.getPostcode());
			
			//set town
			oldDir.setTown(directorate.getTown());
			
			//set county
			oldDir.setCounty(directorate.getCounty());
			
			//set nation
			oldDir.setNation(directorate.getNation());
			
			//set type of business
			oldDir.setTypeBusiness(directorate.getTypeBusiness());
			
			//set SICCode
			oldDir.setSICcode(directorate.getSICcode());
			
			//set full decription
			oldDir.setFullDescr(directorate.getFullDescr());
			
			//set phone number
			oldDir.setPhoneNumber(directorate.getPhoneNumber());
			
			//set fax
			oldDir.setFax(directorate.getFax());
			
			//set email
			oldDir.setEmail(directorate.getEmail());
			
			//set web address
			oldDir.setWebAddress(directorate.getWebAddress());
			
			//set charity number
			oldDir.setCharNumber(directorate.getCharNumber());
			
			//set company number
			oldDir.setCompNumber(directorate.getCompNumber());
			
			commit(); 
		} catch (HibernateException e) {
			System.out.println("Failed when to update Directorate!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

	@Override
	public Directorate FindDir(String directorateName) {
		try {
			openSession();
			
			Directorate dir = (Directorate)session.get(Directorate.class, directorateName);
			
			return dir;
		} catch (HibernateException e) {
			System.out.println("Failed when to Find Directorate!");
			e.printStackTrace();
		} finally {
			closeSession();
		}
		return null;
	}

}
