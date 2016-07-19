package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.Contacts;

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
	public Contacts FindCont(int id) {
		try {
			openSession();
			
			Contacts addr = (Contacts)session.get(Contacts.class, id);
			
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
	public void deleteCont(Contacts contact) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertCont(Contacts contact) {
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
	public List<Contacts> getAllCont() {
		try {
			openSession();;
			
			@SuppressWarnings("unchecked")
			List<Contacts> cont = session.createCriteria(Contacts.class).list();
			
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
		
//		doa.openSessionWithBeginTransaction();
//		muaxuandangden mxdd = new muaxuandangden();
//		mxdd.setHe("Tuan khung");
//		doa.session.save(mxdd);
//		doa.commit();
		
//		doa.closesession();
		
		Contacts cont = new Contacts("bap","weeekend");
		doa.insertCont(cont);
		
		List<Contacts> cot= doa.getAllCont();
		for (Contacts s : cot) {
			System.out.println(s.getFirstName());
		}
		
		if(doa.FindCont(1)!=null)System.out.println(doa.FindCont(1));
	}
	
}
