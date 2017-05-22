package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MPhongDAO;
import vn.edu.uit.entity.MPhong;
import vn.edu.uit.service.MPhongService;


@Service
@Transactional
public class MPhongServiceImpl implements MPhongService {

	public MPhongServiceImpl() {
        System.out.println("MPhongServiceImpl()");
    }
    
    @Autowired
    private MPhongDAO dao;
	
	@Override
	public long createPhong(MPhong phong) {
		// TODO Auto-generated method stub

        return dao.createPhong(phong);
	}

	@Override
	public MPhong updatePhong(MPhong phong) {
		// TODO Auto-generated method stub
		return dao.updatePhong(phong);
	}

	@Override
	public void deletePhong(long id) {
		// TODO Auto-generated method stub
		dao.deletePhong(id);
	}

	@Override
	public List<MPhong> getAllPhong() {
		// TODO Auto-generated method stub
		return dao.getAllPhong();
	}

	@Override
	public MPhong getPhong(long id) {
		// TODO Auto-generated method stub
		return dao.getPhong(id);
	}

}
