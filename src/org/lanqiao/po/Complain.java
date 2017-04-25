package org.lanqiao.po;

import java.io.Serializable;

public class Complain implements Serializable {
	private String complainid;
	private String comrenson;
	private String comdate;
	private String userid;
	private String comresult;
	private String comstate;
	private String goonum;
	private UserInfo userinfo;
	public Complain(){}

	public String getComplainid() {
		return complainid;
	}

	public void setComplainid(String complainid) {
		this.complainid = complainid;
	}

	public String getComrenson() {
		return comrenson;
	}

	public void setComrenson(String comrenson) {
		this.comrenson = comrenson;
	}

	public String getComdate() {
		return comdate;
	}

	public void setComdate(String comdate) {
		this.comdate = comdate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getComresult() {
		return comresult;
	}

	public void setComresult(String comresult) {
		this.comresult = comresult;
	}

	public String getComstate() {
		return comstate;
	}

	public void setComstate(String comstate) {
		this.comstate = comstate;
	}

	public String getGoonum() {
		return goonum;
	}

	public void setGoonum(String goonum) {
		this.goonum = goonum;
	}

	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}

	@Override
	public String toString() {
		return "Complain [complainid=" + complainid + ", comrenson="
				+ comrenson + ", comdate=" + comdate + ", userid=" + userid
				+ ", comresult=" + comresult + ", comstate=" + comstate
				+ ", goonum=" + goonum + ", userinfo=" + userinfo + "]";
	}
	
	
}
