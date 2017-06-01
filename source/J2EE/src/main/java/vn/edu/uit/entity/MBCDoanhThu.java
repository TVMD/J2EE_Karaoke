package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

public class MBCDoanhThu implements Serializable {

	private static final long serialVersionUID = 9106573531953482444L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;
	
	
	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	@Column
    private Long Thang;
	
	@Column
	private Long Nam;
	
	@Column
	private Long DoanhThu;
	
	@Column
	private Long ChiPhi;

	public Long getThang() {
		return Thang;
	}

	public void setThang(Long thang) {
		Thang = thang;
	}

	public Long getNam() {
		return Nam;
	}

	public void setNam(Long nam) {
		Nam = nam;
	}

	public Long getDoanhThu() {
		return DoanhThu;
	}

	public void setDoanhThu(Long doanhThu) {
		DoanhThu = doanhThu;
	}

	public Long getChiPhi() {
		return ChiPhi;
	}

	public void setChiPhi(Long chiPhi) {
		ChiPhi = chiPhi;
	}

	@Override
	public String toString() {
		return "MBCDoanhThu [Thang=" + Thang + ", Nam=" + Nam + ", DoanhThu=" + DoanhThu + ", ChiPhi=" + ChiPhi + "]";
	}

	public MBCDoanhThu() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MBCDoanhThu(Long thang, Long nam, Long doanhThu, Long chiPhi) {
		super();
		Thang = thang;
		Nam = nam;
		DoanhThu = doanhThu;
		ChiPhi = chiPhi;
	}
	
}
