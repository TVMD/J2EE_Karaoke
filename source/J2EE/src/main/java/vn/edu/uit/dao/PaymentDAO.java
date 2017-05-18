package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.Payment;

public interface PaymentDAO {
	public long createPayment(Payment payment);
    public Payment updatePayment(Payment payment);
    public void deletePayment(long id);
    public List<Payment> getAllPayments();
    public Payment getPayment(long id);   
    public List<Payment> getAllPayments(String noiDung);
}
