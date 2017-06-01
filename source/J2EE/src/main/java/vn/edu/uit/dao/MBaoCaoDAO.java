package vn.edu.uit.dao;

import java.util.List;

import vn.edu.uit.entity.MBCDoanhThu;

public interface MBaoCaoDAO {
  public MBCDoanhThu getBCDoanhThu(long thang,long nam); 
  public MBCDoanhThu getBaoCaoTon(long thang,long nam); 
}
