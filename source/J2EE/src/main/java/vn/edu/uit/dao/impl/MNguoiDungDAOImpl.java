package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.MNguoiDungDAO;
import vn.edu.uit.entity.MNguoiDung;
import vn.edu.uit.util.HibernateUtil;



@Repository
public class MNguoiDungDAOImpl implements MNguoiDungDAO {


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createNguoiDung (MNguoiDung model) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(model);
	}

	
	@Override
	public MNguoiDung updateNguoiDung (MNguoiDung model) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(model);
	}

	@Override
	public void deleteNguoiDung(long id) {
		// TODO Auto-generated method stub
		MNguoiDung model = new MNguoiDung();
		model.setID(id);
		hibernateUtil.delete(model);
	}

	@Override
	public MNguoiDung getNguoiDung(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MNguoiDung.class);
	}
	
	@Override
	public List<MNguoiDung> getAllNguoiDung() {
		// TODO lay tt thue phong cua phong co idphong
		return hibernateUtil.fetchAll(MNguoiDung.class);
	}

}
