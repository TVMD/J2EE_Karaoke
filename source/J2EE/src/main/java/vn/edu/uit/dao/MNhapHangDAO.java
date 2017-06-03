package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MCT_HDNhap;

public interface MNhapHangDAO {
	public long createcthoadonnhap(MCT_HDNhap model);
    public MCT_HDNhap updatecthoadonnhap(MCT_HDNhap model);
    public void deletecthoadonnhap(long id);
    public MCT_HDNhap getcthdnhap(long id);   
    public List<MCT_HDNhap> getcthoadonnhapbyhoadon(long idhoadon);   
    public Long TinhTien(long idhoadon);
    public Long createHoaDonNhap();
}
