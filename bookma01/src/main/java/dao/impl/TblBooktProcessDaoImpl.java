package dao.impl;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import dao.TblBooktProcessDao;
import model.Bookt;
/**
 *@author My
 *@date 2020/4/30
 */
public class TblBooktProcessDaoImpl implements TblBooktProcessDao{
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory()
	{
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void savebookinfos(String name, Integer id, String status) throws Exception {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Bookt bookt = new Bookt();
		bookt.setName(name);
		bookt.setId(id);
		bookt.setStatus(status);
		session.save(bookt);
		session.getTransaction().commit();
		session.close();
		
	}
}
