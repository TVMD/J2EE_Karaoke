package vn.edu.uit.service;

import vn.edu.uit.entity.MHoaDonDV;

public interface MHoaDonDVService {
	public long createHoaDon(MHoaDonDV model);
    public MHoaDonDV updateHoaDon(MHoaDonDV model);
    public void deleteHoaDon(long id);
    public MHoaDonDV getHoaDon(long id);   
    public MHoaDonDV getHoaDonbyPhong(long idphong);  
}
