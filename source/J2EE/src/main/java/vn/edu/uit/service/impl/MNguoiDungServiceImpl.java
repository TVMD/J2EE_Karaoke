package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MNguoiDungDAO;
import vn.edu.uit.entity.MNguoiDung;
import vn.edu.uit.service.MNguoiDungService;

@Service
@Transactional
public class MNguoiDungServiceImpl implements MNguoiDungService {

	public MNguoiDungServiceImpl() {
        System.out.println("MNguoiDungServiceImpl()");
    }
	
	 @Autowired
	private MNguoiDungDAO dao;
	 
	@Override
	public long createNguoiDung(MNguoiDung model) {
		// TODO Auto-generated method stub
		return dao.createNguoiDung(model);
	}
	

	@Override
	public MNguoiDung updateNguoiDung(MNguoiDung model) {
		// TODO Auto-generated method stub
		return dao.updateNguoiDung(model);
	}

	@Override
	public void deleteNguoiDung(long id) {
		// TODO Auto-generated method stub
		dao.deleteNguoiDung(id);
	}

	@Override
	public MNguoiDung getNguoiDung(long id) {
		// TODO Auto-generated method stub
		return dao.getNguoiDung(id);
	}

	@Override
	public List<MNguoiDung> getAllNguoiDung() {
		// TODO Auto-generated method stub
		return dao.getAllNguoiDung();
	}

}
