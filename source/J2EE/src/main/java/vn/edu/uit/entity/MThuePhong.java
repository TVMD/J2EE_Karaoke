package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "thuephong")
public class MThuePhong implements Serializable {

	private static final long serialVersionUID = 9106573531953482444L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long ID;
	
	@Column
	private Long ID_Phong;
	
	@Column
	private String TGStart;
	
	@Column
	private String TGEnd;
	
	public MThuePhong(long iD, Long iD_Phong, String tGStart, String tGEnd) {
		super();
		ID = iD;
		ID_Phong = iD_Phong;
		TGStart = tGStart;
		TGEnd = tGEnd;
	}

	@Override
	public String toString() {
		return "MThuePhong [ID=" + ID + ", ID_Phong=" + ID_Phong + ", TGStart=" + TGStart + ", TGEnd=" + TGEnd + "]";
	}

	public MThuePhong() {
		super();
	}

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public long getID_Phong() {
		return ID_Phong;
	}

	public void setID_Phong(Long iD_Phong) {
		ID_Phong = iD_Phong;
	}

	public String getTGStart() {
		return TGStart;
	}

	public void setTGStart(String tGStart) {
		TGStart = tGStart;
	}

	public String getTGEnd() {
		return TGEnd;
	}

	public void setTGEnd(String tGEnd) {
		TGEnd = tGEnd;
	}

}
