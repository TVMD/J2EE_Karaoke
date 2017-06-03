package vn.edu.uit.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MCT_HDNhap;
import vn.edu.uit.entity.MNguoiDung;
import vn.edu.uit.service.MNhapHangService;

@Controller
public class MNhapHangController {
	private static final Logger logger = Logger.getLogger(MNhapHangController.class);

	public MNhapHangController() {
        System.out.println("PhongController()");
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
    private MNhapHangService nhaphangservice;
	
	@RequestMapping("nhaphang")
    public ModelAndView firstcome() {
		 Long idhoadon = nhaphangservice.createHoaDonNhap();
	     return new ModelAndView("Nhaphang", "idhoadon", idhoadon);
    }
	
	@RequestMapping(value = "createupnhaphang", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView creaup(@RequestParam long id,@RequestParam long idhoadon,@RequestParam long idhang,@RequestParam long soluong) {
		MCT_HDNhap x = new MCT_HDNhap();
	
		if(idhoadon!=0)
			x.setIDHoaDon(idhoadon);
		if(idhang!=0)
			x.setIDHang(idhang);
		if(soluong!=0)
			x.setSoLuong(soluong);
		
		x.setDonGiaNhap((long)0);
		x.setThanhTien((long)0);
		if(id!=0){
			x.setID(id);
			nhaphangservice.updatecthoadonnhap(x);
		}else
		{
			x.setID((long) 0);
			nhaphangservice.createcthoadonnhap(x);
		}
		
		List<MCT_HDNhap> ds = nhaphangservice.getcthoadonnhapbyhoadon(idhoadon);
	    return new ModelAndView("MAjaxResult", "dsctnhaphang", ds);
    }
	
	 @RequestMapping(value= "deletectnhaphang", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	    public ModelAndView dlet(@RequestParam long id,@RequestParam long idhoadon) {
		 nhaphangservice.deletecthoadonnhap(id);
		 List<MCT_HDNhap> ds = nhaphangservice.getcthoadonnhapbyhoadon(idhoadon);
		 return new ModelAndView("MAjaxResult", "dsctnhaphang", ds);
	    }
	
	 @RequestMapping(value= "listctnhanhang", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	    public ModelAndView sdfsdf(@RequestParam long idhoadon) {
		 List<MCT_HDNhap> ds = nhaphangservice.getcthoadonnhapbyhoadon(idhoadon);
		 return new ModelAndView("MAjaxResult", "dsctnhaphang", ds);
	    }
	 
	 @RequestMapping(value= "tinhtienhoadonnhap", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	    public ModelAndView ss(@RequestParam long idhoadon) {
		 Long ds = nhaphangservice.TinhTien(idhoadon);
		 return new ModelAndView("MAjaxResult", "tongtien", ds);
	    }
}