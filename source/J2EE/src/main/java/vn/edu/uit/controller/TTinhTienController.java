package vn.edu.uit.controller;

import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.entity.Payment;
import vn.edu.uit.service.PaymentService;
import vn.edu.uit.service.TTinhTienService;

@Controller
public class TTinhTienController {
	@Autowired
    private TTinhTienService service;

	   @RequestMapping("tinhtien")
	    public ModelAndView T_tinhtien(@RequestParam long idhoadondv, @RequestParam String tenphong) {
	        //logger.info("Updating the Employee for the Id "+id);
	        MHoaDonDV r = service.tinhTien(idhoadondv);
	        return new ModelAndView("TTinhTienForm", "result_tinhtien", r);
	    }
}
