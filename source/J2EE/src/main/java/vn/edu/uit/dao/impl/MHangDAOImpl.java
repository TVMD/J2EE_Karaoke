package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.MHangDAO;
import vn.edu.uit.entity.MHang;
import vn.edu.uit.entity.MPhong;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class MHangDAOImpl implements MHangDAO {


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public MHang updateHang(MHang model) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(model);
	}

	@Override
	public MHang getHang(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MHang.class);
	}

	@Override
	public List<MHang> getAllHang() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(MHang.class);
	}
}
