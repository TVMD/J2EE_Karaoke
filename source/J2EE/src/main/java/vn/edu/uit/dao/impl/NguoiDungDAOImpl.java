package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.NguoiDungDAO;
import vn.edu.uit.entity.NguoiDung;
import vn.edu.uit.entity.Payment;
import vn.edu.uit.entity.Session;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class NguoiDungDAOImpl implements NguoiDungDAO {

	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createNguoiDung(NguoiDung nguoiDung) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(nguoiDung);
	}

	@Override
	public NguoiDung updateNguoiDung(NguoiDung nguoiDung) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(nguoiDung);
	}

	@Override
	public void deleteNguoiDung(long id) {
		// TODO Auto-generated method stub
		NguoiDung nguoiDung = new NguoiDung();
		nguoiDung.setID(id);
		hibernateUtil.delete(nguoiDung);
	}

	@Override
	public List<NguoiDung> getAllNguoiDungs() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(NguoiDung.class);
	}

	@Override
	public NguoiDung getNguoiDung(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, NguoiDung.class);
	}

	@Override
	public List<NguoiDung> getAllNguoiDung(String maDangNhap, String matKhau) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings({ "unchecked", "unused" })
	@Override
	public boolean isValidUser(String maDangNhapX, String matKhauX) {
		// TODO Auto-generated method stub
		String query = "SELECT e.* FROM nguoidung e WHERE ((e.madangnhap = '"+ maDangNhapX +"') AND (e.matkhau = '" + matKhauX + "'))";
		
		List<Object[]> nguoidungObjects = hibernateUtil.fetchAll(query);
		List<NguoiDung> nguoidungs = new ArrayList<NguoiDung>();
		for(Object[] nguoidungObject: nguoidungObjects) {
			NguoiDung nguoidung = new NguoiDung();
			long ID = ((Integer) nguoidungObject[0]).longValue();  
			String maDangNhap = (String) nguoidungObject[1].toString();
			String matKhau = (String) nguoidungObject[2].toString();
			String hoTen = (String) nguoidungObject[3].toString();
			String email = (String) nguoidungObject[4].toString();
			String soDT = (String) nguoidungObject[5].toString();
			int maNhomQuyen = (int) nguoidungObject[6];
			nguoidung.setID(ID);
			nguoidung.setMaDangNhap(maDangNhap);
			nguoidung.setMatKhau(matKhau);
			nguoidung.setHoTen(hoTen);
			nguoidung.setEmail(email);
			nguoidung.setSoDT(soDT);
			nguoidung.setMaNhomQuyen(maNhomQuyen);
			nguoidungs.add(nguoidung);
		}
		int count = nguoidungs.size();
		if (count !=0) {
			System.out.println(nguoidungs);
			return true;		
		}
		else return false;
	}
	
	
	@SuppressWarnings({ "unchecked", "unused" })
	@Override
	public boolean isLogged(String sessionkeyX) {
		// TODO Auto-generated method stub
		String query = "SELECT e.* FROM session e WHERE (e.sessionkey = '"+ sessionkeyX +"')";
		List<Object[]> sessionObjects = hibernateUtil.fetchAll(query);
		List<Session> sessions = new ArrayList<Session>();
		for(Object[] sessionObject: sessionObjects) {
			Session session = new Session();
			
			String sessionkey = (String) sessionObject[0].toString();
			String maDangNhap = (String) sessionObject[1];
			session.setSessionkey(sessionkey);
			session.setMaDangNhap(maDangNhap);
			sessions.add(session);
		}
		int count = sessions.size();
		if (count !=0) {
			System.out.println(sessions);
			return true;
		}
		else return false;
	}

	@Override
	public String createSession(Session session) {
		// TODO Auto-generated method stub
		return (String) hibernateUtil.create(session);
	}

	@Override
	public void deleteSession(String sessionkey) {
		// TODO Auto-generated method stub
		Session session = new Session();
		session.setSessionkey(sessionkey);
		hibernateUtil.delete(session);
	}

}
