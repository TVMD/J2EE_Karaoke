package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MPhong;

public interface MPhongDAO {

	public long createPhong(MPhong phong);
    public MPhong updatePhong(MPhong phong);
    public void deletePhong(long id);
    public List<MPhong> getAllPhong();
    public MPhong getPhong(long id);   
}
