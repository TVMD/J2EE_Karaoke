package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MHoaDonDV;

public interface MHoaDonDVDAO {

	public long createHoaDon(MHoaDonDV model);
    public MHoaDonDV updateHoaDon(MHoaDonDV model);
    public void deleteHoaDon(long id);
    public MHoaDonDV getHoaDon(long id);   
    public MHoaDonDV getHoaDonbyPhong(long idphong);   
}
