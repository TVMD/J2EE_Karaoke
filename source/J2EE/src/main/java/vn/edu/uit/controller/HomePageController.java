package vn.edu.uit.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MPhong;

@Controller
public class HomePageController {
	private static final Logger logger = Logger.getLogger(MPhongController.class);
	
	
	@RequestMapping(value = {"index.html", "index"})
	public ModelAndView index() {
        logger.info("Getting index");
        return new ModelAndView("home");
    }
    
}
