package controller;
import service.UsertManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class ControllerReg implements Controller {
	private UsertManager usertmanager;
	private static Logger logger = Logger.getLogger(ControllerReg.class);  


public UsertManager getUsertmanager() {
		return usertmanager;
	}


	public void setUsertmanager(UsertManager usertmanager) {
		this.usertmanager = usertmanager;
	}



@Override
public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
		 {
	String action = request.getParameter("action");
	if(action != null && action.equals("insert"))	{
		String name = request.getParameter("user_name");
		String sex = request.getParameter("sex");
		String code = request.getParameter("code");
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		try {
			usertmanager.saveuserinfos(name,sex,bCryptPasswordEncoder.encode(code));
		}catch(Exception e){
			logger.error("出错",e);
		}
			
		}return new ModelAndView("userreg");
}

}









