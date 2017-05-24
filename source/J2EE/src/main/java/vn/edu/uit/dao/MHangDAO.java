package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MHang;

public interface MHangDAO {
    public MHang updateHang(MHang model);
    public MHang getHang(long id);  
    public List<MHang> getAllHang();
}
