package org.lanqiao.po;

import java.io.Serializable;

public class Admin implements Serializable {
	private String admno;
	private String admname;
	private String admalias;
	private String admtel;
	private String password;
	
	public Admin(){}

	public String getAdmno() {
		return admno;
	}

	public void setAdmno(String admno) {
		this.admno = admno;
	}

	public String getAdmname() {
		return admname;
	}

	public void setAdmname(String admname) {
		this.admname = admname;
	}

	public String getAdmalias() {
		return admalias;
	}

	public void setAdmalias(String admalias) {
		this.admalias = admalias;
	}

	public String getAdmtel() {
		return admtel;
	}

	public void setAdmtel(String admtel) {
		this.admtel = admtel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
