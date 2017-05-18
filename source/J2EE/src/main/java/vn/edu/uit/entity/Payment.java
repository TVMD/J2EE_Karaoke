package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "phieuchi")
public class Payment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9106573531953482444L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;
	
	@Column
	private String NgayLap;
	
	@Column
	private String NoiDung;
	
	@Column
	private double TongTien;
	
	@Column
	private String GhiChu;
	
	@Column
	private int Deleted;

	public Payment(long iD, String ngayLap, String noiDung, float tongTien, String ghiChu, int deleted) {
		super();
		ID = iD;
		NgayLap = ngayLap;
		NoiDung = noiDung;
		TongTien = tongTien;
		GhiChu = ghiChu;
		Deleted = deleted;
	}

	public Payment() {
		// TODO Auto-generated constructor stub
	}

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public String getNgayLap() {
		return NgayLap;
	}

	public void setNgayLap(String ngayLap) {
		NgayLap = ngayLap;
	}

	public String getNoiDung() {
		return NoiDung;
	}

	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}

	public double getTongTien() {
		return TongTien;
	}

	public void setTongTien(double tongTien) {
		TongTien = tongTien;
	}

	public String getGhiChu() {
		return GhiChu;
	}

	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}

	public int getDeleted() {
		return Deleted;
	}

	public void setDeleted(int deleted) {
		Deleted = deleted;
	}

	@Override
	public String toString() {
		return "Payment [ID=" + ID + ", NgayLap=" + NgayLap + ", NoiDung=" + NoiDung + ", TongTien=" + TongTien
				+ ", GhiChu=" + GhiChu + ", Deleted=" + Deleted + "]";
	}
	
	
}
