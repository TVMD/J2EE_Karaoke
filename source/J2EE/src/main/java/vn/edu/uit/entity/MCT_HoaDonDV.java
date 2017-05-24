package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ct_hoadondv")
public class MCT_HoaDonDV implements Serializable {

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
    private long ID_HoaDonDV;
	
	@Column
	private Long ID_Hang;
	
	@Column
	private Long SoLuong;
	
	@Column
	private Long DonGia;
	
	@Column
	private Long ThanhTien;
	
	public Long getThanhTien() {
		return ThanhTien;
	}

	public void setThanhTien(Long thanhTien) {
		ThanhTien = thanhTien;
	}

	private String TenHang;

	public long getID_HoaDonDV() {
		return ID_HoaDonDV;
	}

	public void setID_HoaDonDV(long iD_HoaDonDV) {
		ID_HoaDonDV = iD_HoaDonDV;
	}

	public Long getID_Hang() {
		return ID_Hang;
	}

	public void setID_Hang(Long iD_Hang) {
		ID_Hang = iD_Hang;
	}

	public Long getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(Long soLuong) {
		SoLuong = soLuong;
	}

	public Long getDonGia() {
		return DonGia;
	}

	public void setDonGia(Long donGia) {
		DonGia = donGia;
	}

	

	public String getTenHang() {
		return TenHang;
	}

	public void setTenHang(String tenHang) {
		TenHang = tenHang;
	}


	public MCT_HoaDonDV(long iD, long iD_HoaDonDV, Long iD_Hang, Long soLuong, Long donGia, Long thanhTien,
			String tenHang) {
		super();
		ID = iD;
		ID_HoaDonDV = iD_HoaDonDV;
		ID_Hang = iD_Hang;
		SoLuong = soLuong;
		DonGia = donGia;
		ThanhTien = thanhTien;
		TenHang = tenHang;
	}

	@Override
	public String toString() {
		return "MCT_HoaDonDV [ID=" + ID + ", ID_HoaDonDV=" + ID_HoaDonDV + ", ID_Hang=" + ID_Hang + ", SoLuong="
				+ SoLuong + ", DonGia=" + DonGia + ", ThanhTien=" + ThanhTien + ", TenHang=" + TenHang + "]";
	}

	public MCT_HoaDonDV() {
		super();
	}
	
}
