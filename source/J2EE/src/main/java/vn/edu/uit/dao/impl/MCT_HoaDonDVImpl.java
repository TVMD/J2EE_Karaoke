package vn.edu.uit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.edu.uit.dao.MCT_HoaDonDVDAO;
import vn.edu.uit.entity.MCT_HoaDonDV;
import vn.edu.uit.entity.MHoaDonDV;
import vn.edu.uit.util.HibernateUtil;

@Repository
public class MCT_HoaDonDVImpl implements MCT_HoaDonDVDAO {


	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createCT_HoaDonDV (MCT_HoaDonDV model) {
		// TODO Auto-generated method stub
		return (Long) hibernateUtil.create(model);
	}

	@Override
	public long createCT_HoaDonDV(long idhoadon, long idhang, long sl) {
		// TODO Auto-generated method stub
		String query="call addct_hoadondv("+idhoadon+","+idhang+","+sl+");";
		List<Object[]> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		
		return Long.parseLong(x.get(0)[0].toString());
	}

	@Override
	public MCT_HoaDonDV updateCT_HoaDonDV (MCT_HoaDonDV model) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(model);
	}

	@Override
	public long updateCT_HoaDonDV(long idhoadon, long idhang, long soluong) {
		// TODO Auto-generated method stub
		String query="call updatect_hoadondv("+idhoadon+","+idhang+","+soluong+");";
		List<Object> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		
		return Long.parseLong(x.get(0).toString());
	}

	@Override
	public void deleteCT_HoaDonDV(long id) {
		// TODO Auto-generated method stub
		MCT_HoaDonDV model = new MCT_HoaDonDV();
		model.setID(id);
		hibernateUtil.delete(model);
	}
	
	@Override
	public void deleteCT_HoaDonDV(long idhoadon, long idhang) {
		// TODO Auto-generated method stub
		String query="call deletect_hoadondv("+idhoadon+","+idhang+");";
		List<Object[]> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		
	}
	
	@Override
	public MCT_HoaDonDV getCT_HoaDonDV(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MCT_HoaDonDV.class);
	}
	
	@Override
	public MCT_HoaDonDV getCT_HoaDonDV(long idhoadon, long idhang) {
		// TODO Auto-generated method stub
		List<MCT_HoaDonDV> x = hibernateUtil.GetSessionFactory().getCurrentSession()
				 .createQuery("from MCT_HoaDonDV where ID_HoaDonDV="+idhoadon+"and ID_Hang="+idhang).list();
		return x.size()==0?null:x.get(0);
	}
	
	@Override
	public List<MCT_HoaDonDV> getCT_HoaDonDVbyHoaDon(long idhoadon) {
		String query="CALL getListCT_HoaDonDV("+idhoadon+");";
		List<Object[]> x = hibernateUtil.GetSessionFactory().getCurrentSession().createSQLQuery(query).list();
		List<MCT_HoaDonDV> list = new ArrayList<MCT_HoaDonDV>();
		MCT_HoaDonDV re;
		
		for(Object[] item: x){
			re = new MCT_HoaDonDV();
			re.setID(item[0].toString()==null?null:Integer.parseInt(item[0].toString()));
			re.setID_Hang(item[2].toString()==null?null:Long.parseLong(item[2].toString()));
			re.setSoLuong(item[3].toString()==null?null:Long.parseLong(item[3].toString()));
			re.setDonGia(item[4].toString()==null?null:Long.parseLong(item[4].toString()));
			re.setThanhTien(item[5].toString()==null?null:Long.parseLong(item[5].toString()));
			re.setTenHang(item[6].toString()==null?null:item[6].toString());
			list.add(re);
		}

		return list;
	}

}
