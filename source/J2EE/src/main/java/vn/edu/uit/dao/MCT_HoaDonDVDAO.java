package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MCT_HoaDonDV;

public interface MCT_HoaDonDVDAO {

	public long createCT_HoaDonDV(MCT_HoaDonDV model);
    public MCT_HoaDonDV updateCT_HoaDonDV(MCT_HoaDonDV model);
    public void deleteCT_HoaDonDV(long id);
    public void deleteCT_HoaDonDV(long idhoadon,long idhang);
    public MCT_HoaDonDV getCT_HoaDonDV(long id);   
    public MCT_HoaDonDV getCT_HoaDonDV(long idhoadon,long idhang); 
    public List<MCT_HoaDonDV> getCT_HoaDonDVbyHoaDon(long idhoadondv); 
}
