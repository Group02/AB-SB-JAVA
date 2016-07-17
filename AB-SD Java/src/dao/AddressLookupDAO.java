package dao;

import java.util.List;

import org.hibernate.FetchMode;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.AddressLookup;
import model.AddressLookupID;

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
	public AddressLookupDAO() {
		
	}

	@Override
	public AddressLookup FindAddr(String address, String postcode) {
		try {
			openSession();
			
//			AddressLookup addr = (AddressLookup)session.get(AddressLookup.class, address);
			
			AddressLookup addr = (AddressLookup)session.get(AddressLookup .class, new AddressLookupID (address, postcode));
			
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

	@Override
	public List<AddressLookup> getAllAddr() {
		try {
			openSession();;
			
			List<AddressLookup> addr = session.createCriteria(AddressLookup.class).list();
			
//			for (AddressLookup addr2 : addr) {
//				System.out.println(addr2.getAddress()+addr2.getPostCode()+addr2.getAddress()+addr2.getPostCode()
//				+addr2.getCounty()+addr2.getCountry()+addr2.getTown());
//			}
			
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
//		for (AddressLookup addr2 : addr) {
//			System.out.println(addr2.getAddress()+addr2.getPostCode()+addr2.getAddress()+addr2.getPostCode()
//			+addr2.getCounty()+addr2.getCountry()+addr2.getTown());
//		}
		
		if(dao.FindAddr("bap","bap")!=null){
			System.out.println("co addr");
		}else System.out.println("k co addr");
	}
	
}
