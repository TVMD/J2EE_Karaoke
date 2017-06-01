package vn.edu.uit.service;

import java.util.List;

import vn.edu.uit.entity.MNguoiDung;

public interface MNguoiDungService {
	public long createNguoiDung(MNguoiDung model);
    public MNguoiDung updateNguoiDung(MNguoiDung model);
    public void deleteNguoiDung(long id);
    public List<MNguoiDung> getAllNguoiDung();
    public MNguoiDung getNguoiDung(long id);
}
