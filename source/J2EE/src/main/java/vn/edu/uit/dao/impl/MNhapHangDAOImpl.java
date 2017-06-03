package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import vn.edu.uit.dao.MNhapHangDAO;
import vn.edu.uit.entity.MBCDoanhThu;
import vn.edu.uit.entity.MCT_HDNhap;
import vn.edu.uit.entity.MCT_HoaDonDV;
import vn.edu.uit.util.HibernateUtil;



@Repository
public class MNhapHangDAOImpl implements MNhapHangDAO{


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createcthoadonnhap(MCT_HDNhap model) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(model);
	}

	
	@Override
	public MCT_HDNhap updatecthoadonnhap (MCT_HDNhap model) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(model);
	}

	@Override
	public void deletecthoadonnhap(long id) {
		// TODO Auto-generated method stub
		MCT_HDNhap model = new MCT_HDNhap();
		model.setID(id);
		hibernateUtil.delete(model);
	}

	@Override
	public MCT_HDNhap getcthdnhap(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MCT_HDNhap.class);
	}

	@Override
	public List<MCT_HDNhap> getcthoadonnhapbyhoadon(long idhoadon) {
		// TODO Auto-generated method stub
		String query="select * from ct_hdnhap where IDHoaDon="+idhoadon;
		List<Object []> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		if (x ==null )
			return null;
		
		List<MCT_HDNhap> list = new ArrayList<MCT_HDNhap>();
		MCT_HDNhap re;
		
		for(Object[] item: x){
			re = new MCT_HDNhap();
			re.setID(item[0].toString()==null?null:Integer.parseInt(item[0].toString()));
			re.setIDHang(item[1].toString()==null?null:Long.parseLong(item[1].toString()));
			re.setIDHoaDon(item[2].toString()==null?null:Long.parseLong(item[2].toString()));
			re.setSoLuong(item[3].toString()==null?null:Long.parseLong(item[3].toString()));
			re.setDonGiaNhap(item[4].toString()==null?null:Long.parseLong(item[4].toString()));
			re.setThanhTien(item[5].toString()==null?null:Long.parseLong(item[5].toString()));
			list.add(re);
		}
		return list;

	}


	@Override
	public Long TinhTien(long idhoadon) {
		
		String query="call tinhtienhdnhap("+idhoadon+");";
		List<Object> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		if (x ==null )
			return (long) 0;
		return Long.parseLong(x.get(0).toString());
	}


	@Override
	public Long createHoaDonNhap() {

		String query="call `createHoaDonNhap`();";
		List<Object> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		if (x ==null )
			return (long) 0;
		return Long.parseLong(x.get(0).toString());
	}
	
	

}
