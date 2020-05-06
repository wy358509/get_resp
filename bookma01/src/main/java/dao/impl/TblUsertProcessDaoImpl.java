package dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import dao.TblUsertProcessDao;
import model.Usert;
/**
 *@author My
 *@date 2020/4/30
 */
public class TblUsertProcessDaoImpl implements TblUsertProcessDao{
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
	public void saveuserinfos(String name, String sex, String code,String role,String status) throws Exception {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Usert usert = new Usert();
		usert.setName(name);
		usert.setCode(code);
		usert.setSex(sex);
		usert.setStatus(status);
		usert.setRole(role);
		session.save(usert);
		session.getTransaction().commit();
		session.close();	
	}
}
