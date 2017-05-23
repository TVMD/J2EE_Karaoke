package vn.edu.uit.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.entity.MThuePhong;
import vn.edu.uit.service.MHoaDonDVService;
import vn.edu.uit.service.MThuePhongService;

@Controller
public class MAjaxController {
	private static final Logger logger = Logger.getLogger(MPhongController.class);

	public MAjaxController() {
        System.out.println("MAjaxController()");
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
    private MThuePhongService thuephongService;
	
	@Autowired
    private MHoaDonDVService hoadondvService;
	
	 
    @RequestMapping(value = {"thuephong"})
    public ModelAndView getThuePhong(@RequestParam long idphong) {
        logger.info("Getting thuephong");
        MThuePhong thuephong = thuephongService.getThuePhongbyPhong(idphong);
        return new ModelAndView("MAjaxResult", "thuephong", thuephong);
    }
    
    @RequestMapping(value = {"hoadondv"})
    public ModelAndView getHoaDonDV(@RequestParam long idphong) {
        logger.info("Getting hoadondv");
        MHoaDonDV hoadondv = hoadondvService.getHoaDonbyPhong(idphong);
        return new ModelAndView("MAjaxResult", "hoadondv", hoadondv);
    } 
}