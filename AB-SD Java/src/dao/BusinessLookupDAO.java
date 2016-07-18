package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;
import model.BusinessLookup;

public class BusinessLookupDAO implements BusinessLookupInterface{
	
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
	public BusinessLookup FindBusi(String SIC_Code) {
		try {
			openSession();
			
			BusinessLookup busi = (BusinessLookup)session.get(BusinessLookup.class, SIC_Code);
			
			return busi;
		} catch (HibernateException e) {
			System.out.println("Failed when to Find BusinessLookup!");
			e.printStackTrace();
		} finally {
			closeSession();
		}
		return null;
	}

	@Override
	public void deleteBusi(BusinessLookup businessLookup) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertBusi(BusinessLookup businessLookup) {
		
		try {
			openSessionWithBeginTransaction();
			
			session.saveOrUpdate(businessLookup);
			
			commit();
		} catch (HibernateException e) {
			System.out.println("Failed when to insert business Lookup!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

	@Override
	public List<BusinessLookup> getAllBusi() {
		
		try {
			openSession();;
			
			@SuppressWarnings("unchecked")
			List<BusinessLookup> busi = session.createCriteria(BusinessLookup.class).list();
			
			return busi;
		} catch (HibernateException e) {
			System.out.println("Failed when to get list Business Lookup!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
		return null;
	}

}
