package org.lanqiao.po;

import java.io.Serializable;

public class Logistics implements Serializable {
	private String logno;
	private String logname;
	public Logistics(){}
	public String getLogno() {
		return logno;
	}
	public void setLogno(String logno) {
		this.logno = logno;
	}
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	
}
