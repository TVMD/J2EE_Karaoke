package vn.edu.uit.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MCT_HoaDonDV;
import vn.edu.uit.entity.MHang;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.entity.MThuePhong;
import vn.edu.uit.service.MCT_HoaDonDVService;
import vn.edu.uit.service.MHangService;
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
	
	@Autowired
    private MHangService hangService;
	
	@Autowired
	private MCT_HoaDonDVService cthoadonService;
	
	 
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
    
    @RequestMapping(value = {"dshang"})
    public ModelAndView getHang() {
        logger.info("Getting dshang");
        List<MHang> dshang = hangService.getAllHang();
        return new ModelAndView("MAjaxResult", "dshang", dshang);
    } 
    
    @RequestMapping(value = {"dsct_hoadondv"})
    public ModelAndView getCT_HoaDonDV(@RequestParam long idhoadondv) {
        logger.info("Getting ds ct_hoadondv");
        List<MCT_HoaDonDV> result = cthoadonService.getCT_HoaDonDVbyHoaDon(idhoadondv);
        return new ModelAndView("MAjaxResult", "dscthoadondv", result);
    } 
}