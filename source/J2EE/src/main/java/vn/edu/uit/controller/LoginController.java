package vn.edu.uit.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.Session;
import vn.edu.uit.service.NguoiDungService;

@Controller
public class LoginController {
	

	private static final Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	private NguoiDungService nguoiDungService;
	
	@RequestMapping(value = {"/", "login"})
	public ModelAndView login(){
        logger.info("Getting login page");
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = {"checkUser"}, method = RequestMethod.POST)
	public ModelAndView index(
			@RequestParam("madangnhap") String maDangNhap,
    		@RequestParam("matkhau") String matKhau,
    		HttpServletRequest request) {
        boolean valid = nguoiDungService.isValidUser(maDangNhap, matKhau);
        System.out.println(valid + "," + maDangNhap + ", "+matKhau);
        if (valid){
            String sessionkey = request.getSession().getId();
            Session session = new Session(sessionkey, maDangNhap);
            nguoiDungService.createSession(session);
            return new ModelAndView("home");
        	}
        else
        	return new ModelAndView("login");
	}
	
	
	
	@RequestMapping(value = {"logout"})
	public ModelAndView logout(HttpServletRequest request) {
		String sessionkey = request.getSession().getId();
        boolean valid = nguoiDungService.isLogged(sessionkey);
        System.out.println(valid);
        if (valid){
            //Session session = new Session(sessionkey, maDangNhap);
        	//nguoiDungService.createSession(session);
        	nguoiDungService.deleteSession(sessionkey);
            return new ModelAndView("login");
        	}
        else
        	return new ModelAndView("login");
	}
	
	
	@RequestMapping(value = {"header"})
	public ModelAndView notLogin(HttpServletRequest request) {
		String sessionkey = request.getSession().getId();
        boolean valid = nguoiDungService.isLogged(sessionkey);
        System.out.println(valid);
        if (!valid){
            return new ModelAndView("login");
        	}
        else
        	return new ModelAndView("home");
	}
}
