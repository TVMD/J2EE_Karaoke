package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MThuePhong;

public interface MThuePhongDAO {
	public long createThuePhong(MThuePhong model);
    public MThuePhong updateThuePhong(MThuePhong model);
    public void deleteThuePhong(long id);
    public MThuePhong getThuePhong(long id);  
    public MThuePhong getThuePhongbyPhong(long idphong);
}
