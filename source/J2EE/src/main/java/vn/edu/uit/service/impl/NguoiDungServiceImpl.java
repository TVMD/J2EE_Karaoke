package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.NguoiDungDAO;
import vn.edu.uit.entity.NguoiDung;
import vn.edu.uit.entity.Payment;
import vn.edu.uit.entity.Session;
import vn.edu.uit.service.NguoiDungService;

@Service
@Transactional
public class NguoiDungServiceImpl implements NguoiDungService {

	@Autowired
	NguoiDungDAO nguoiDungDao;
	
	public NguoiDungServiceImpl() {
        System.out.println("NguoiDungServiceImpl()");
    }
	
	
	@Override
	public long createNguoiDung(NguoiDung nguoiDung) {
		// TODO Auto-generated method stub
		return nguoiDungDao.createNguoiDung(nguoiDung);
	}

	@Override
	public NguoiDung updateNguoiDung(NguoiDung nguoiDung) {
		// TODO Auto-generated method stub
		return nguoiDungDao.updateNguoiDung(nguoiDung);
	}

	@Override
	public void deleteNguoiDung(long id) {
		// TODO Auto-generated method stub
		nguoiDungDao.deleteNguoiDung(id);
		
	}

	@Override
	public List<NguoiDung> getAllNguoiDungs() {
		// TODO Auto-generated method stub
		return nguoiDungDao.getAllNguoiDungs();
	}

	@Override
	public NguoiDung getNguoiDung(long id) {
		// TODO Auto-generated method stub
		return nguoiDungDao.getNguoiDung(id);
	}

	@Override
	public List<NguoiDung> getAllNguoiDung(String maDangNhap, String matKhau) {
		// TODO Auto-generated method stub
		return nguoiDungDao.getAllNguoiDung(maDangNhap, matKhau);
	}

	@Override
	public boolean isValidUser(String maDangNhap, String matKhau) {
		// TODO Auto-generated method stub
		return nguoiDungDao.isValidUser(maDangNhap, matKhau);
	}


	@Override
	public boolean isLogged(String session) {
		// TODO Auto-generated method stub
		return nguoiDungDao.isLogged(session);
	}


	@Override
	public String createSession(Session session) {
		// TODO Auto-generated method stub
		return nguoiDungDao.createSession(session);
	}


	@Override
	public void deleteSession(String sessionkey) {
		// TODO Auto-generated method stub
		nguoiDungDao.deleteSession(sessionkey);
	}

	
}
