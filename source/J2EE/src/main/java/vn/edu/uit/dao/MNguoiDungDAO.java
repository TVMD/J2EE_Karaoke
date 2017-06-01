package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MNguoiDung;
import vn.edu.uit.entity.MPhong;

public interface MNguoiDungDAO {
	public long createNguoiDung(MNguoiDung model);
    public MNguoiDung updateNguoiDung(MNguoiDung model);
    public void deleteNguoiDung(long id);
    public List<MNguoiDung> getAllNguoiDung();
    public MNguoiDung getNguoiDung(long id);   
}
