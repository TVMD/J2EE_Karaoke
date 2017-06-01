package vn.edu.uit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.uit.dao.MBaoCaoDAO;
import vn.edu.uit.entity.MBCDoanhThu;
import vn.edu.uit.service.MBaoCaoService;

@Service
@Transactional
public class MBaoCaoServiceImpl implements MBaoCaoService {

	public MBaoCaoServiceImpl() {
        System.out.println("MBaoCaoServiceImpl()");
    }
	
	 @Autowired
	private MBaoCaoDAO dao;

	@Override
	public MBCDoanhThu getBCDoanhThu(long thang, long nam) {
		// TODO Auto-generated method stub
		return dao.getBCDoanhThu(thang, nam);
	}

}
