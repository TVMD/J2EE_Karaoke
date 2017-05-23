package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hoadondv")
public class MHoaDonDV implements Serializable {

	private static final long serialVersionUID = 9106573531953482444L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;
	
	@Column
	private Long ID_ThuePhong;
	
	@Column
	private String NgayGioLap;
	
	@Column
	private Float SoGio;
	
	@Column
	private String TenKH;
	
	@Column
	private Long TongTien;
	
	@Column
	private Long TienPhong;

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public Long getID_ThuePhong() {
		return ID_ThuePhong;
	}

	public void setID_ThuePhong(Long iD_ThuePhong) {
		ID_ThuePhong = iD_ThuePhong;
	}

	public String getNgayGioLap() {
		return NgayGioLap;
	}

	public void setNgayGioLap(String ngayGioLap) {
		NgayGioLap = ngayGioLap;
	}

	public Float getSoGio() {
		return SoGio;
	}

	public void setSoGio(Float soGio) {
		SoGio = soGio;
	}

	public String getTenKH() {
		return TenKH;
	}

	public void setTenKH(String tenKH) {
		TenKH = tenKH;
	}

	public Long getTongTien() {
		return TongTien;
	}

	public void setTongTien(Long tongTien) {
		TongTien = tongTien;
	}

	public Long getTienPhong() {
		return TienPhong;
	}

	public void setTienPhong(Long tienPhong) {
		TienPhong = tienPhong;
	}

	@Override
	public String toString() {
		return "MHD [ID=" + ID + ", ID_ThuePhong=" + ID_ThuePhong + ", NgayGioLap=" + NgayGioLap + ", SoGio=" + SoGio
				+ ", TenKH=" + TenKH + ", TongTien=" + TongTien + ", TienPhong=" + TienPhong + "]";
	}

	public MHoaDonDV(long iD, Long iD_ThuePhong, String ngayGioLap, Float soGio, String tenKH, Long tongTien,
			Long tienPhong) {
		super();
		ID = iD;
		ID_ThuePhong = iD_ThuePhong;
		NgayGioLap = ngayGioLap;
		SoGio = soGio;
		TenKH = tenKH;
		TongTien = tongTien;
		TienPhong = tienPhong;
	}

	public MHoaDonDV() {
		super();
	}
	
}
