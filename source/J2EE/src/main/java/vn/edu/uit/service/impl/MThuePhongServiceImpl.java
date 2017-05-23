package vn.edu.uit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MThuePhongDAO;
import vn.edu.uit.entity.MThuePhong;
import vn.edu.uit.service.MThuePhongService;

@Service
@Transactional
public class MThuePhongServiceImpl implements MThuePhongService {

	public MThuePhongServiceImpl() {
        System.out.println("MThuePhongServiceImpl()");
    }
	
	 @Autowired
	private MThuePhongDAO dao;
	 
	@Override
	public long createThuePhong(MThuePhong model) {
		// TODO Auto-generated method stub
		return dao.createThuePhong(model);
	}

	@Override
	public MThuePhong updateThuePhong(MThuePhong model) {
		// TODO Auto-generated method stub
		return dao.updateThuePhong(model);
	}

	@Override
	public void deleteThuePhong(long id) {
		// TODO Auto-generated method stub
		dao.deleteThuePhong(id);
	}

	@Override
	public MThuePhong getThuePhong(long id) {
		// TODO Auto-generated method stub
		return dao.getThuePhong(id);
	}

	@Override
	public MThuePhong getThuePhongbyPhong(long idphong) {
		// TODO Auto-generated method stub
		return dao.getThuePhongbyPhong(idphong);
	}

}
