package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hang")
public class MHang implements Serializable {

	private static final long serialVersionUID = 9106573531953482444L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;
	
	@Column
	private String Ten;
	
	@Column
	private Long DonGiaNhap;
	
	@Column
	private Long DonGiaBan;
	
	@Column
	private Long SLTon;
	
	@Column
	private String DonVi;
	
	@Column
	private Long Requested;

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public String getTen() {
		return Ten;
	}

	public void setTen(String ten) {
		Ten = ten;
	}

	public Long getDonGiaNhap() {
		return DonGiaNhap;
	}

	public void setDonGiaNhap(Long donGiaNhap) {
		DonGiaNhap = donGiaNhap;
	}

	public Long getDonGiaBan() {
		return DonGiaBan;
	}

	public void setDonGiaBan(Long donGiaBan) {
		DonGiaBan = donGiaBan;
	}

	public Long getSLTon() {
		return SLTon;
	}

	public void setSLTon(Long sLTon) {
		SLTon = sLTon;
	}

	public String getDonVi() {
		return DonVi;
	}

	public void setDonVi(String donVi) {
		DonVi = donVi;
	}

	public Long getRequested() {
		return Requested;
	}

	public void setRequested(Long requested) {
		Requested = requested;
	}

	@Override
	public String toString() {
		return "MHang [ID=" + ID + ", Ten=" + Ten + ", DonGiaNhap=" + DonGiaNhap + ", DonGiaBan=" + DonGiaBan
				+ ", SLTon=" + SLTon + ", DonVi=" + DonVi + ", Requested=" + Requested + "]";
	}

	public MHang(long iD, String ten, Long donGiaNhap, Long donGiaBan, Long sLTon, String donVi, Long requested) {
		super();
		ID = iD;
		Ten = ten;
		DonGiaNhap = donGiaNhap;
		DonGiaBan = donGiaBan;
		SLTon = sLTon;
		DonVi = donVi;
		Requested = requested;
	}

	public MHang() {
		super();
	}

	
}
