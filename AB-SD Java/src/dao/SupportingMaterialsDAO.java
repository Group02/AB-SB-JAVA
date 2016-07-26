package dao;

import hibernate.HibernateUtil;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import model.SupportingMaterial;

public class SupportingMaterialsDAO implements SupportingMaterialsInterface {

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

	public void closeSession() {
		session.close();
	}

	@Override
	public void insertSM(SupportingMaterial SM) {
		try {
			openSessionWithBeginTransaction();
			session.saveOrUpdate(SM);
			commit();
		} catch (HibernateException e) {
			System.out
					.println("Failed when to try insert Supporting Materials!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

	@Override
	public void updateSM(SupportingMaterial SM) {
		try {
			openSessionWithBeginTransaction();
			session.update(SM);
			commit();
		} catch (HibernateException e) {
			System.out
					.println("Failed when to try update Supporting Materials!");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public SupportingMaterial getSMByURL(String URL) {
		List<SupportingMaterial> list;
		
		try {
			openSession();
			
			// Get all SM which have "url" is URL to list
			list = session.createCriteria(SupportingMaterial.class)
					.add(Restrictions.like("url", URL))
					.list();
			
			// If list is not empty then return first SM form list
			if(!list.isEmpty()) return list.get(0);
			
		} catch (HibernateException e) {
			System.out
					.println("Failed when to try get Supporting Materials by URL!");
			e.printStackTrace();
		} finally {
			closeSession();
		}
		
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SupportingMaterial> getAllActiveSM() {
		List<SupportingMaterial> list;
		
		try {
			openSession();
			
			// Get all SM is active:
			list = session.createCriteria(SupportingMaterial.class)
					.add(Restrictions.like("isActive", true))
					.list();
			
			// If list is not empty then return list
			if(!list.isEmpty()) return list;
			
		} catch (HibernateException e) {
			System.out
					.println("Failed when to try get Active Supporting Materials!");
			e.printStackTrace();
		} finally {
			closeSession();
		}
		
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SupportingMaterial> getAllSM() {
		List<SupportingMaterial> list;
		
		try {
			openSession();
			
			// Get all SM:
			list = session.createCriteria(SupportingMaterial.class).list();
			
			// If list is not empty then return list
			if(!list.isEmpty()) return list;
			
		} catch (HibernateException e) {
			System.out
					.println("Failed when to try get All Supporting Materials!");
			e.printStackTrace();
		} finally {
			closeSession();
		}
		
		return null;
	}

	@Override
	public void deleteSM(SupportingMaterial SM) {
		try {
			openSessionWithBeginTransaction();
			session.delete(SM);
			commit();
		} catch (HibernateException e) {
			System.out.println("Failed when to delete Supporting Materials");
			e.printStackTrace();
			rollback();
		} finally {
			closeSession();
		}
	}

}
