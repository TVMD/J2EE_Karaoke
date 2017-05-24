package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MCT_HoaDonDVDAO;
import vn.edu.uit.entity.MCT_HoaDonDV;
import vn.edu.uit.service.MCT_HoaDonDVService;

@Service
@Transactional
public class MCT_HoaDonDVServiceImpl implements MCT_HoaDonDVService {

	public MCT_HoaDonDVServiceImpl() {
        System.out.println("MCT_HoaDonDVServiceImpl()");
    }
	
	 @Autowired
	private MCT_HoaDonDVDAO dao;
	 
	@Override
	public long createCT_HoaDonDV(MCT_HoaDonDV model) {
		// TODO Auto-generated method stub
		return dao.createCT_HoaDonDV(model);
	}

	@Override
	public MCT_HoaDonDV updateCT_HoaDonDV(MCT_HoaDonDV model) {
		// TODO Auto-generated method stub
		return dao.updateCT_HoaDonDV(model);
	}

	@Override
	public void deleteCT_HoaDonDV(long id) {
		// TODO Auto-generated method stub
		dao.deleteCT_HoaDonDV(id);
	}

	@Override
	public void deleteCT_HoaDonDV(long idhoadon, long idhang) {
		// TODO Auto-generated method stub
		dao.deleteCT_HoaDonDV(idhoadon, idhang);
	}

	@Override
	public MCT_HoaDonDV getCT_HoaDonDV(long id) {
		// TODO Auto-generated method stub
		return dao.getCT_HoaDonDV(id);
	}

	@Override
	public MCT_HoaDonDV getCT_HoaDonDV(long idhoadon, long idhang) {
		// TODO Auto-generated method stub
		return dao.getCT_HoaDonDV(idhoadon, idhang);
	}

	@Override
	public List<MCT_HoaDonDV> getCT_HoaDonDVbyHoaDon(long idhoadondv) {
		// TODO Auto-generated method stub
		return dao.getCT_HoaDonDVbyHoaDon(idhoadondv);
	}

}
