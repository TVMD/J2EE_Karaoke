package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "phong")
public class MPhong implements Serializable {

	private static final long serialVersionUID = 9106573531953482444L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;
	
	@Column
	private String Ten;
	
	@Column
	private long StatusID;
	
	@Column
	private long GiaNgay;
	
	@Column
	private long GiaDem;
	
	public MPhong() {
		super();
	}

	public MPhong(long iD, String ten, long statusID, long giaNgay, long giaDem) {
		super();
		ID = iD;
		Ten = ten;
		StatusID = statusID;
		GiaNgay = giaNgay;
		GiaDem = giaDem;
	}

	@Override
	public String toString() {
		return "MPhong [ID=" + ID + ", Ten=" + Ten + ", StatusID=" + StatusID + ", GiaNgay=" + GiaNgay + ", GiaDem="
				+ GiaDem + "]";
	}

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

	public long getStatusID() {
		return StatusID;
	}

	public void setStatusID(long statusID) {
		StatusID = statusID;
	}

	public double getGiaNgay() {
		return GiaNgay;
	}

	public void setGiaNgay(long giaNgay) {
		GiaNgay = giaNgay;
	}

	public long getGiaDem() {
		return GiaDem;
	}

	public void setGiaDem(long giaDem) {
		GiaDem = giaDem;
	}

	
}
