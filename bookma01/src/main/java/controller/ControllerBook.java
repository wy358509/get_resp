package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import service.BooktManager;

public class ControllerBook implements Controller {	
	private BooktManager booktmanager;
	private static Logger logger = Logger.getLogger(ControllerBook.class);  
	
	
	public BooktManager getBooktmanager() {
		return booktmanager;
	}


	public void setBooktmanager(BooktManager booktmanager) {
		this.booktmanager = booktmanager;
	}


	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
	{
		String action = request.getParameter("action");
		if(action != null && action.equals("insert"))	{
			String name = request.getParameter("logname");
			Integer id = Integer.parseInt(request.getParameter("logid"));
			String status = request.getParameter("status");
			try {
				booktmanager.savebookinfos(name,id,status);
			}catch(Exception e){
				logger.error("出错",e);
			}
				
			}return new ModelAndView("bookmng");
	}

		
	}


