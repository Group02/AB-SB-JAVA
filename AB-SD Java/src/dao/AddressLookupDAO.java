package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.AddressLookup;
import sun.tools.jar.Main;

public class AddressLookupDAO implements AddressLookupInterface{
	
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
	public AddressLookup FindAddr(String postcode) {
		try {
			openSession();
			
			AddressLookup addr = (AddressLookup)session.get(AddressLookup.class, postcode);
			
			return addr;
		} catch (HibernateException e) {
			System.out.println("Failed when to Find AddressLookup!");
			e.printStackTrace();
		} finally {
			closeSession();
		}
		return null;
	}

	@Override
	public void deleteAddr(AddressLookup addressLookup) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertAddr(AddressLookup addressLookup) {
		try {
			openSessionWithBeginTransaction();
			
			session.saveOrUpdate(addressLookup);
			
			commit();
		} catch (HibernateException e) {
			System.out.println("Failed when to insert Address Lookup!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AddressLookup> getAllAddr() {
		try {
			openSession();;
			
			List<AddressLookup> addr = session.createCriteria(AddressLookup.class).list();
			
			return addr;
		} catch (HibernateException e) {
			System.out.println("Failed when to get list Address Lookup!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
		return null;
	}
	
	public static void main(String[] args) {
		AddressLookupDAO dao = new AddressLookupDAO();
		List<AddressLookup> list = dao.getAllAddr();
		for (AddressLookup string : list) {
			System.out.println(string.getAddress()+" Postcode "+string.getPostCode());
		}
	}
}
