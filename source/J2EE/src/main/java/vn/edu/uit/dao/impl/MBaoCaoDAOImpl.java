package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.MBaoCaoDAO;
import vn.edu.uit.entity.MBCDoanhThu;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class MBaoCaoDAOImpl implements MBaoCaoDAO {


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public MBCDoanhThu getBCDoanhThu(long thang, long nam) {
		// TODO Auto-generated method stub
		String query="call baocaodoanhso("+thang+","+nam+");";
		List<Object []> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		if (x ==null )
			return null;
		MBCDoanhThu re = new MBCDoanhThu();
		re.setThang(x.get(0)[0]!=null?Long.parseLong(x.get(0)[0].toString()):0);
		re.setNam(x.get(0)[1]!=null?Long.parseLong(x.get(0)[1].toString()):0);
		re.setDoanhThu(x.get(0)[2]!=null?Long.parseLong(x.get(0)[2].toString()):0);
		re.setChiPhi(x.get(0)[3]!=null?Long.parseLong(x.get(0)[3].toString()):0);
		return re;
	}
	
	@Override
	public MBCDoanhThu getBaoCaoTon(long thang, long nam) {
		
		return null;
	}

}
