package vn.edu.uit.dao.impl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.PaymentDAO;
import vn.edu.uit.entity.Payment;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createPayment(Payment payment) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(payment);
	}

	@Override
	public Payment updatePayment(Payment payment) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(payment);
	}

	@Override
	public void deletePayment(long id) {
		// TODO Auto-generated method stub
		Payment payment = new Payment();
		payment.setID(id);
		hibernateUtil.delete(payment);
	}

	@Override
	public List<Payment> getAllPayments() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(Payment.class);
	}

	@Override
	public Payment getPayment(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, Payment.class);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Payment> getAllPayments(String searchNoiDung) {
		// TODO Auto-generated method stub
		String query = "SELECT e.* FROM PhieuChi e WHERE e.NoiDung like '%"+ searchNoiDung +"%'";
		List<Object[]> paymentObjects = hibernateUtil.fetchAll(query);
		List<Payment> payments = new ArrayList<Payment>();
		for(Object[] paymentObject: paymentObjects) {
			Payment payment = new Payment();
            long ID = ((Integer) paymentObject[0]).longValue();         
            String ngayLap = (String) paymentObject[1].toString();
            String noiDung = (String) paymentObject[2];
            int tongTien = (int) paymentObject[3];
            String ghiChu = (String) paymentObject[4];
            int deleted = (int) paymentObject[5];
            payment.setID(ID);
            payment.setNgayLap(ngayLap);
            payment.setNoiDung(noiDung);
            payment.setTongTien(tongTien);
            payment.setGhiChu(ghiChu);
            payment.setDeleted(deleted);
            payments.add(payment);
        }
        System.out.println(payments);
        return payments;
	}

}
