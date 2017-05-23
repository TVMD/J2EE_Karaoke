package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.MHoaDonDVDAO;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class MHoaDonDVDAOImpl implements MHoaDonDVDAO {


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createHoaDon (MHoaDonDV model) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(model);
	}

	@Override
	public MHoaDonDV updateHoaDon (MHoaDonDV model) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(model);
	}

	@Override
	public void deleteHoaDon(long id) {
		// TODO Auto-generated method stub
		MHoaDonDV model = new MHoaDonDV();
		model.setID(id);
		hibernateUtil.delete(model);
	}

	@Override
	public MHoaDonDV getHoaDon(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MHoaDonDV.class);
	}
	
	@Override
	public MHoaDonDV getHoaDonbyPhong(long idphong) {
		// TODO lay tt thue phong cua phong co idphong
		String query="CALL getHoaDonDV("+idphong+");";
		
		//List<MHoaDonDV> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		//return x.size()==0?null:x.get(0);
		List<Object[]> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		MHoaDonDV re = new MHoaDonDV();
		re.setID(x.get(0)[0].toString()==null?null:Integer.parseInt(x.get(0)[0].toString()));
		re.setID_ThuePhong(x.get(0)[1].toString()==null?null:Long.parseLong(x.get(0)[1].toString()));
		re.setNgayGioLap(x.get(0)[2].toString()==null?null:x.get(0)[2].toString());
		re.setSoGio(x.get(0)[3].toString()==null?null:Float.parseFloat(x.get(0)[3].toString()));
		re.setTenKH(x.get(0)[4].toString()==null?null:x.get(0)[4].toString());
		
		return re;
	}

}
