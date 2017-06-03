package vn.edu.uit.service;

import java.util.List;

import vn.edu.uit.entity.NguoiDung;
import vn.edu.uit.entity.Session;

public interface NguoiDungService {
	public long createNguoiDung(NguoiDung nguoiDung);
    public NguoiDung updateNguoiDung(NguoiDung nguoiDung);
    public void deleteNguoiDung(long id);
    public List<NguoiDung> getAllNguoiDungs();
    public NguoiDung getNguoiDung(long id);
    public List<NguoiDung> getAllNguoiDung(String maDangNhap, String matKhau);
    public boolean isValidUser(String maDangNhap, String matKhau);
	boolean isLogged(String session);
	public String createSession(Session session);
    public void deleteSession(String sessionkey);
}
