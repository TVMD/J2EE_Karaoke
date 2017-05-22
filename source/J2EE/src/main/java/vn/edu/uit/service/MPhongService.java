package vn.edu.uit.service;

import java.util.List;

import vn.edu.uit.entity.MPhong;
import vn.edu.uit.entity.Payment;

public interface MPhongService {
	public long createPhong(MPhong phong);
    public MPhong updatePhong(MPhong phong);
    public void deletePhong(long id);
    public List<MPhong> getAllPhong();
    public MPhong getPhong(long id);   
}
