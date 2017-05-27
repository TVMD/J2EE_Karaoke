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
	private Long StatusID;
	
	@Column
	private Long GiaNgay;
	
	@Column
	private Long GiaDem;
	
	public MPhong() {
		super();
	}

	public MPhong(long iD, String ten, Long statusID, Long giaNgay, Long giaDem) {
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

	public void setStatusID(Long statusID) {
		StatusID = statusID;
	}

	public long getGiaNgay() {
		return GiaNgay;
	}

	public void setGiaNgay(Long giaNgay) {
		GiaNgay = giaNgay;
	}

	public long getGiaDem() {
		return GiaDem;
	}

	public void setGiaDem(Long giaDem) {
		GiaDem = giaDem;
	}

	
}
