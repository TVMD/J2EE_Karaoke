package vn.edu.uit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "session")
public class Session implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6550648999523915048L;

	@Id
	private String sessionkey;
	
	@Column
	private String maDangNhap;

	public Session() {
		// TODO Auto-generated constructor stub
	}

	
	
	public Session(String sessionkey, String maDangNhap) {
		this.sessionkey = sessionkey;
		this.maDangNhap = maDangNhap;
	}


	public String getSessionkey() {
		return sessionkey;
	}

	public void setSessionkey(String sessionkey) {
		this.sessionkey = sessionkey;
	}



	public String getMaDangNhap() {
		return maDangNhap;
	}



	public void setMaDangNhap(String maDangNhap) {
		this.maDangNhap = maDangNhap;
	}

}
