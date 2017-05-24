package vn.edu.uit.service;

import java.util.List;

import vn.edu.uit.entity.MHang;

public interface MHangService {
    public MHang updateHang(MHang model);
    public MHang getHang(long id);
    public List<MHang> getAllHang();
}
