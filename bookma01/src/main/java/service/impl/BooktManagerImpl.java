package service.impl;

import org.apache.log4j.Logger;

import dao.TblBooktProcessDao;
import service.BooktManager;
/**
 *@author My
 *@date 2020/4/30
 */
public class BooktManagerImpl implements BooktManager{
private TblBooktProcessDao tblBooktProcessDao;
private static Logger logger = Logger.getLogger("BookManagerImpl.class");

public TblBooktProcessDao getTblBooktProcessDao() {
	return tblBooktProcessDao;
}

public void setTblBooktProcessDao(TblBooktProcessDao tblBooktProcessDao) {
	this.tblBooktProcessDao = tblBooktProcessDao;
}

@Override
public void savebookinfos(String name, Integer id, String status) {
	try{
		tblBooktProcessDao.savebookinfos(name,id,status);
	}catch(Exception e)
	{
		logger.error("数据库保存错误",e);
	}
}

}
