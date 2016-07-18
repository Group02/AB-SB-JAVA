package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.Contact;

public class ContactDAO implements ContactInterface{

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
	public Contact FindCont(String address, String postcode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCont(Contact addressLookup) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertCont(Contact addressLookup) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Contact> getAllCont() {
		// TODO Auto-generated method stub
		return null;
	}

}
