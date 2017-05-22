package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.MPhongDAO;
import vn.edu.uit.entity.MPhong;
import vn.edu.uit.entity.Payment;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class MPhongDAOImpl implements MPhongDAO {


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createPhong (MPhong phong) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(phong);
	}

	@Override
	public MPhong updatePhong (MPhong phong) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(phong);
	}

	@Override
	public void deletePhong(long id) {
		// TODO Auto-generated method stub
		MPhong phong = new MPhong();
		phong.setID(id);
		hibernateUtil.delete(phong);
	}

	@Override
	public List<MPhong> getAllPhong() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(MPhong.class);
	}

	@Override
	public MPhong getPhong(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MPhong.class);
	}

}
