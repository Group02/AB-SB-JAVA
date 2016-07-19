package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.AddressLookup;
import model.Contact;
import sun.tools.jar.Main;

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
	public Contact FindCont(int id) {
		try {
			openSession();
			
			Contact addr = (Contact)session.get(Contact.class, id);
			
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
	public void deleteCont(Contact contact) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertCont(Contact contact) {
		try {
			openSessionWithBeginTransaction();
			
			session.saveOrUpdate(contact);
			
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
	public List<Contact> getAllCont() {
		try {
			openSession();;
			
			List<Contact> cont = session.createCriteria(Contact.class).list();
			
			return cont;
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
		ContactDAO  doa = new ContactDAO();
		
	}
}
