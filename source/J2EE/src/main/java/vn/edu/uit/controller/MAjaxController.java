package vn.edu.uit.controller;

import java.util.List;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MCT_HoaDonDV;
import vn.edu.uit.entity.MHang;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.entity.MPhong;
import vn.edu.uit.entity.MThuePhong;
import vn.edu.uit.service.MCT_HoaDonDVService;
import vn.edu.uit.service.MHangService;
import vn.edu.uit.service.MHoaDonDVService;
import vn.edu.uit.service.MPhongService;
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
	
	@Autowired
	private MPhongService phongService;
	
	 
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
    
    @RequestMapping(value = "batdau", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    String addThuePhong(@RequestParam("idphong") String idphong,@RequestParam("tgbatdau") String tgbatdau) {
    	logger.info("adding hoadon dv, add thuephong , edit phong.status");
    	Long x= hoadondvService.createHoaDon(Long.parseLong(idphong), tgbatdau);
        return x.toString();
    }
    
    @RequestMapping(value = "addct_hoadondv", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    String addct_hoadondv(@RequestParam("idhoadon") String idhoadon,@RequestParam("idhang") String idhang,@RequestParam("soluong") String soluong) {
    	logger.info("adding ct_hoadon dv , update sl ton, tinh thanhtien");
    	Long x= cthoadonService.createCT_HoaDonDV(Long.parseLong(idhoadon), Long.parseLong(idhang),Long.parseLong(soluong));
        return x.toString();
    }
    
    @RequestMapping(value = "deletect_hoadondv", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    String delct_hoadondv(@RequestParam("idhoadon") String idhoadon,@RequestParam("idhang") String idhang) {
    	logger.info("adding ct_hoadon dv , update sl ton, tinh thanhtien");
    	cthoadonService.deleteCT_HoaDonDV(Long.parseLong(idhoadon), Long.parseLong(idhang));
    	Long x=Long.parseLong("1");
        return x.toString();
    }
    
    @RequestMapping(value = "updatect_hoadondv", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    String delct_hoadondv(@RequestParam("idhoadon") String idhoadon,@RequestParam("idhang") String idhang,@RequestParam("soluong") String soluong) {
    	logger.info("update ct_hoadon dv , update sl ton, tinh thanhtien");
    	Long x= cthoadonService.updateCT_HoaDonDV(Long.parseLong(idhoadon), Long.parseLong(idhang),Long.parseLong(soluong));
        return x.toString();
    }
    
    @RequestMapping(value = "ajax_getallPhong", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    ModelAndView ajxaxgetallphong() {
    	 List<MPhong> phongList = phongService.getAllPhong();
         return new ModelAndView("MAjaxResult", "dsphong", phongList);
    }
    
    @RequestMapping(value = "test", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    ModelAndView test() {
    	 List<MPhong> phongList = phongService.getAllPhong();
         return new ModelAndView("BaoCaoDoanhThu", "dsphong", phongList);
    }
    
    @RequestMapping(value = {"dsct_hoadondv_toan"})
    public ModelAndView getCT_HoaDonDVtoan(@RequestParam long idhoadondv) {
        logger.info("Getting ds ct_hoadondv");
        List<MCT_HoaDonDV> result = cthoadonService.getCT_HoaDonDVbyHoaDon(idhoadondv);
        return new ModelAndView("MAjaxResult", "dscthoadondv_toan", result);
    } 
}