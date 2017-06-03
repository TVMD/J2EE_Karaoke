package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MNhapHangDAO;
import vn.edu.uit.entity.MCT_HDNhap;
import vn.edu.uit.service.MNhapHangService;

@Service
@Transactional
public class MNhapHangServiceImpl implements MNhapHangService {

	 @Autowired
		private MNhapHangDAO dao;
	 
	@Override
	public long createcthoadonnhap(MCT_HDNhap model) {
		// TODO Auto-generated method stub
		return dao.createcthoadonnhap(model);
	}

	@Override
	public MCT_HDNhap updatecthoadonnhap(MCT_HDNhap model) {
		// TODO Auto-generated method stub
		return dao.updatecthoadonnhap(model);
	}

	@Override
	public void deletecthoadonnhap(long id) {
		// TODO Auto-generated method stub
		dao.deletecthoadonnhap(id);
	}

	@Override
	public MCT_HDNhap getcthdnhap(long id) {
		// TODO Auto-generated method stub
		return dao.getcthdnhap(id);
	}

	@Override
	public List<MCT_HDNhap> getcthoadonnhapbyhoadon(long idhoadon) {
		// TODO Auto-generated method stub
		return dao.getcthoadonnhapbyhoadon(idhoadon);
	}

	@Override
	public Long TinhTien(long idhoadon) {
		// TODO Auto-generated method stub
		return dao.TinhTien(idhoadon);
	}

	@Override
	public Long createHoaDonNhap() {
		// TODO Auto-generated method stub
		return dao.createHoaDonNhap();
	}

}
