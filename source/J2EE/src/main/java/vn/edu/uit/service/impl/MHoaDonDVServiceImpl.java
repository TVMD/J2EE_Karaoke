package vn.edu.uit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MHoaDonDVDAO;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.service.MHoaDonDVService;

@Service
@Transactional
public class MHoaDonDVServiceImpl implements MHoaDonDVService {

	public MHoaDonDVServiceImpl() {
        System.out.println("MHoaDonDVImpl()");
    }
	
	 @Autowired
	private MHoaDonDVDAO dao;
	 
	@Override
	public long createHoaDon(MHoaDonDV model) {
		// TODO Auto-generated method stub
		return dao.createHoaDon(model);
	}
	
	
	@Override
	public long createHoaDon(long idphong, String tgbatdau) {
		// TODO Auto-generated method stub
		return dao.createHoaDon(idphong, tgbatdau);
	}

	@Override
	public MHoaDonDV updateHoaDon(MHoaDonDV model) {
		// TODO Auto-generated method stub
		return dao.updateHoaDon(model);
	}

	@Override
	public void deleteHoaDon(long id) {
		// TODO Auto-generated method stub
		dao.deleteHoaDon(id);
	}

	@Override
	public MHoaDonDV getHoaDon(long id) {
		// TODO Auto-generated method stub
		return dao.getHoaDon(id);
	}

	@Override
	public MHoaDonDV getHoaDonbyPhong(long idphong) {
		// TODO Auto-generated method stub
		return dao.getHoaDonbyPhong(idphong);
	}

}
