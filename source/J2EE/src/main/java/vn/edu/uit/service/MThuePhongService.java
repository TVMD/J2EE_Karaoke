package vn.edu.uit.service;

import vn.edu.uit.entity.MThuePhong;

public interface MThuePhongService {
	public long createThuePhong(MThuePhong model);
    public MThuePhong updateThuePhong(MThuePhong model);
    public void deleteThuePhong(long id);
    public MThuePhong getThuePhong(long id);   
    public MThuePhong getThuePhongbyPhong(long idphong);  
}