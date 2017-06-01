package vn.edu.uit.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MBCDoanhThu;
import vn.edu.uit.service.MBaoCaoService;

@Controller
public class MBaoCaoController {
	 
	private static final Logger logger = Logger.getLogger(MBaoCaoController.class);

	public MBaoCaoController() {
        System.out.println("MBaoCaoController()");
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
    private MBaoCaoService baocaoservice;
	

	@RequestMapping(value = "bcdoanhthux", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	    public @ResponseBody
	    ModelAndView baocaodoanhthux() {
	         return new ModelAndView("BaoCaoDoanhThu", "baocao", null);
	    }
	
	
	@RequestMapping(value = "bcdoanhthu", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	    public @ResponseBody
	    ModelAndView baocaodoanhthu(@RequestParam("thang") String thang,@RequestParam("nam") String nam) {
	    	MBCDoanhThu x = baocaoservice.getBCDoanhThu(Long.parseLong(thang),Long.parseLong(nam));
	        
	    	return new ModelAndView("BaoCaoDoanhThu", "baocao", x);
	    }
}
