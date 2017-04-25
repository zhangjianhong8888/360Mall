package org.lanqiao.po;

import java.io.Serializable;

public class Notice implements Serializable {
	private String notid;
	private String notdate;
	private String notext;
	private String notitle;
	private String notkeyword;
	private String notpeople;
	public Notice(){}

	public String getNotid() {
		return notid;
	}

	public void setNotid(String notid) {
		this.notid = notid;
	}

	public String getNotdate() {
		return notdate;
	}

	public void setNotdate(String notdate) {
		this.notdate = notdate;
	}

	public String getNotext() {
		return notext;
	}

	public void setNotext(String notext) {
		this.notext = notext;
	}

	public String getNotitle() {
		return notitle;
	}

	public void setNotitle(String notitle) {
		this.notitle = notitle;
	}

	public String getNotkeyword() {
		return notkeyword;
	}

	public void setNotkeyword(String notkeyword) {
		this.notkeyword = notkeyword;
	}

	public String getNotpeople() {
		return notpeople;
	}

	public void setNotpeople(String notpeople) {
		this.notpeople = notpeople;
	}
	
	
}
