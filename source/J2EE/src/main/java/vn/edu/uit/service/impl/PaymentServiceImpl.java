package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.PaymentDAO;
import vn.edu.uit.entity.Payment;
import vn.edu.uit.service.PaymentService;

@Service
@Transactional
public class PaymentServiceImpl implements PaymentService {

	public PaymentServiceImpl() {
        System.out.println("PaymentServiceImpl()");
    }
    
    @Autowired
    private PaymentDAO paymentDAO;
	
	@Override
	public long createPayment(Payment payment) {
		// TODO Auto-generated method stub

        return paymentDAO.createPayment(payment);
	}

	@Override
	public Payment updatePayment(Payment payment) {
		// TODO Auto-generated method stub
		return paymentDAO.updatePayment(payment);
	}

	@Override
	public void deletePayment(long id) {
		// TODO Auto-generated method stub
		paymentDAO.deletePayment(id);
	}

	@Override
	public List<Payment> getAllPayments() {
		// TODO Auto-generated method stub
		return paymentDAO.getAllPayments();
	}

	@Override
	public Payment getPayment(long id) {
		// TODO Auto-generated method stub
		return paymentDAO.getPayment(id);
	}

	@Override
	public List<Payment> getAllPayments(String noiDung, String fromDate, String toDate) {
		// TODO Auto-generated method stub
		return paymentDAO.getAllPayments(noiDung, fromDate, toDate);
	}

}
