package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MHangDAO;
import vn.edu.uit.entity.MHang;
import vn.edu.uit.service.MHangService;



@Service
@Transactional
public class MHangServiceImpl implements MHangService {

	public MHangServiceImpl() {
        System.out.println("MHangServiceImpl()");
    }
	
	 @Autowired
	private MHangDAO dao;
	 
	@Override
	public MHang updateHang(MHang model) {
		// TODO Auto-generated method stub
		return dao.updateHang(model);
	}

	@Override
	public MHang getHang(long id) {
		// TODO Auto-generated method stub
		return dao.getHang(id);
	}

	@Override
	public List<MHang> getAllHang() {
		// TODO Auto-generated method stub
		return dao.getAllHang();
	}
}
