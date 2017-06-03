package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "nguoidung")
public class NguoiDung  implements Serializable {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private long ID;
	
	@Column
	private String MaDangNhap;
	
	@Column
	private String MatKhau;
	
	@Column
	private String HoTen;
	
	@Column
	private String Email;
	
	@Column
	private String SoDT;
	
	@Column
	private int MaNhomQuyen;

	public NguoiDung() {
		// TODO Auto-generated constructor stub
	}

	public NguoiDung(long iD, String maDangNhap, String matKhau, String hoTen, String email, String soDT,
			int maNhomQuyen) {
		ID = iD;
		MaDangNhap = maDangNhap;
		MatKhau = matKhau;
		HoTen = hoTen;
		Email = email;
		SoDT = soDT;
		MaNhomQuyen = maNhomQuyen;
	}

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public String getMaDangNhap() {
		return MaDangNhap;
	}

	public void setMaDangNhap(String maDangNhap) {
		MaDangNhap = maDangNhap;
	}

	public String getMatKhau() {
		return MatKhau;
	}

	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}

	public String getHoTen() {
		return HoTen;
	}

	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getSoDT() {
		return SoDT;
	}

	public void setSoDT(String soDT) {
		SoDT = soDT;
	}

	public int getMaNhomQuyen() {
		return MaNhomQuyen;
	}

	public void setMaNhomQuyen(int maNhomQuyen) {
		MaNhomQuyen = maNhomQuyen;
	} 
	
	

	@Override
	public String toString() {
		return "NguoiDung [ID=" + ID + ", MaDangNhap=" + MaDangNhap + ", MatKhau=" + MatKhau + ", HoTen=" + HoTen
				+ ", Email=" + Email + ", SoDT=" + SoDT + ", MaNhomQuyen=" + MaNhomQuyen + "]";
	}

}
