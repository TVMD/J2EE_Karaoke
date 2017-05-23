package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.MThuePhongDAO;
import vn.edu.uit.entity.MThuePhong;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class MThuePhongDAOImpl implements MThuePhongDAO {


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createThuePhong (MThuePhong model) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(model);
	}

	@Override
	public MThuePhong updateThuePhong (MThuePhong model) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(model);
	}

	@Override
	public void deleteThuePhong(long id) {
		// TODO Auto-generated method stub
		MThuePhong model = new MThuePhong();
		model.setID(id);
		hibernateUtil.delete(model);
	}

	@Override
	public MThuePhong getThuePhong(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MThuePhong.class);
	}
	
	@Override
	public MThuePhong getThuePhongbyPhong(long idphong) {
		// TODO lay tt thue phong cua phong co idphong
		List<MThuePhong> x = hibernateUtil.GetSessionFactory().getCurrentSession()
				 .createQuery(" FROM MThuePhong a where (select max(ID) from MThuePhong where ID_Phong="+idphong+")=a.ID "
				 		+ "and (select StatusID from MPhong where ID="+idphong+")=1"
				 		+ "and ID_Phong="+idphong).list();
		return x.size()==0?null:x.get(0);
	}

}
