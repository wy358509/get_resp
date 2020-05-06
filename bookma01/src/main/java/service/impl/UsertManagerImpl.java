package service.impl;

import dao.TblUsertProcessDao;
import util.Constants;
import service.UsertManager;
import org.apache.log4j.Logger;
/**
 *@author My
 *@date 2020/4/30
 */
public class UsertManagerImpl implements UsertManager{
private TblUsertProcessDao tblUsertProcessDao;
private static Logger logger = Logger.getLogger(UsertManagerImpl.class); 

public TblUsertProcessDao getTblUsertProcessDao() {
	return tblUsertProcessDao;
}

public void setTblUsertProcessDao(TblUsertProcessDao tblUsertProcessDao) {
	this.tblUsertProcessDao = tblUsertProcessDao;
}

@Override
public void saveuserinfos(String name, String sex, String code)  {
	String status = Constants.user_status;
	String role ="user";	
	try{
		tblUsertProcessDao.saveuserinfos(name,sex,code,role,status);
	}catch(Exception e)
	{
		logger.error("数据库保存错误",e);
	}
}

}
