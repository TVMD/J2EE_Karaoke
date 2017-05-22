package vn.edu.uit.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.Payment;
import vn.edu.uit.service.PaymentService;

@Controller
public class PaymentController {
	private static final Logger logger = Logger.getLogger(PaymentController.class);

	public PaymentController() {
        System.out.println("PaymentController()");
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
    private PaymentService paymentService;
	
	@RequestMapping("createPayment")
    public ModelAndView createPayment(@ModelAttribute Payment payment) {
        logger.info("Creating Payment. Data: "+payment);
        return new ModelAndView("paymentForm");
    }
    
    @RequestMapping("editPayment")
    public ModelAndView editEmployee(@RequestParam long id, @ModelAttribute Payment payment) {
        logger.info("Updating the Employee for the Id "+id);
        payment = paymentService.getPayment(id);
        return new ModelAndView("paymentForm", "paymentObject", payment);
    }
    
    @RequestMapping("savePayment")
    public ModelAndView savePayment(@ModelAttribute Payment payment) {
        logger.info("Saving the Payment. Data : "+payment);
        if(payment.getID() == 0){ // if employee id is 0 then creating the employee other updating the employee
            paymentService.createPayment(payment);
        } else {
            paymentService.updatePayment(payment);
        }
        return new ModelAndView("redirect:getAllPayments");
    }
    
    @RequestMapping("deletePayment")
    public ModelAndView deletePayment(@RequestParam long id) {
        logger.info("Deleting the Payment. Id : "+id);
        paymentService.deletePayment(id);
        return new ModelAndView("redirect:getAllPayments");
    }
    
    @RequestMapping(value = {"getAllPayments"})
    public ModelAndView getAllPayments() {
        logger.info("Getting the all Employees.");
        List<Payment> paymentList = paymentService.getAllPayments();
        return new ModelAndView("paymentList", "paymentList", paymentList);
    }
    
    @RequestMapping("searchPayment")
    public ModelAndView searchPayment(@RequestParam("searchNoiDung") String searchNoiDung) {  
        logger.info("Searching the Payment. Payment Names: "+searchNoiDung);
        List<Payment> paymentList = paymentService.getAllPayments(searchNoiDung);
        return new ModelAndView("paymentList", "paymentList", paymentList);      
    }
}