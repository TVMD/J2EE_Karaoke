package vn.edu.uit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MHangDAO;
import vn.edu.uit.dao.TTinhTienDAO;
import vn.edu.uit.entity.MHang;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.service.TTinhTienService;

@Service
@Transactional
public class TTinhTienServiceImpl implements TTinhTienService {

	@Autowired
	private TTinhTienDAO dao;
	 
	@Override
	public MHoaDonDV tinhTien(long idhoadondv) {
		// TODO Auto-generated method stub
		
		return dao.tinhTien(idhoadondv);
	}

}
