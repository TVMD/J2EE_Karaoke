package vn.edu.uit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.TTinhTienDAO;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class TTinhTienDAOImpl implements TTinhTienDAO{

	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public MHoaDonDV tinhTien(long idhoadondv) {
		// TODO Auto-generated method stub
		String query="CALL getTienPhong(" + idhoadondv + ");";
		List<Object[]> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		
		MHoaDonDV re = new MHoaDonDV();
		re.setID(Long.parseLong(x.get(0)[0].toString()));
		re.setID_ThuePhong(Long.parseLong(x.get(0)[1].toString()));
		re.setNgayGioLap(x.get(0)[2].toString());
		re.setSoGio(Float.parseFloat(x.get(0)[3].toString()));
		re.setTenKH(x.get(0)[4].toString());
		re.setTongTien(Long.parseLong(x.get(0)[5].toString()));
		re.setTienPhong(Long.parseLong(x.get(0)[6].toString()));
		
		return re;
		
	}
}
