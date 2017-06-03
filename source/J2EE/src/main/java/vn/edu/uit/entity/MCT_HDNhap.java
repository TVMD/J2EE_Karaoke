package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ct_hdnhap")
public class MCT_HDNhap implements Serializable {

	private static final long serialVersionUID = 9106573531953482444L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;
	
	@Column
	private Long IDHang;
	
	@Column
	private Long IDHoaDon;
	
	@Column
	private Long SoLuong;
	
	@Column
	private Long DonGiaNhap;
	
	@Column
	private Long ThanhTien;

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public Long getIDHang() {
		return IDHang;
	}

	public void setIDHang(Long iDHang) {
		IDHang = iDHang;
	}

	public Long getIDHoaDon() {
		return IDHoaDon;
	}

	public void setIDHoaDon(Long iDHoaDon) {
		IDHoaDon = iDHoaDon;
	}

	public Long getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(Long soLuong) {
		SoLuong = soLuong;
	}

	public Long getDonGiaNhap() {
		return DonGiaNhap;
	}

	public void setDonGiaNhap(Long donGiaNhap) {
		DonGiaNhap = donGiaNhap;
	}

	public Long getThanhTien() {
		return ThanhTien;
	}

	public void setThanhTien(Long thanhTien) {
		ThanhTien = thanhTien;
	}

	@Override
	public String toString() {
		return "MCT_HDNhap [ID=" + ID + ", IDHang=" + IDHang + ", IDHoaDon=" + IDHoaDon + ", SoLuong=" + SoLuong
				+ ", DonGia=" + DonGiaNhap + ", ThanhTien=" + ThanhTien + "]";
	}

	public MCT_HDNhap(long iD, Long iDHang, Long iDHoaDon, Long soLuong, Long donGiaNhap, Long thanhTien) {
		super();
		ID = iD;
		IDHang = iDHang;
		IDHoaDon = iDHoaDon;
		SoLuong = soLuong;
		DonGiaNhap = donGiaNhap;
		ThanhTien = thanhTien;
	}

	public MCT_HDNhap() {
		super();
	}
	
}
