package org.lanqiao.po;

import java.io.Serializable;

public class Discuss implements Serializable {
	private String disid;
	private String distext;
	private String dislevel;
	private String goonum;
	private String userid;
	private String disdate;
	private UserInfo userinfo;
	private Goods goods;
	public Discuss(){}
	public String getDistext() {
		return distext;
	}
	public void setDistext(String distext) {
		this.distext = distext;
	}
	public String getDislevel() {
		return dislevel;
	}
	public void setDislevel(String dislevel) {
		this.dislevel = dislevel;
	}
	public String getGoonum() {
		return goonum;
	}
	public void setGoonum(String goonum) {
		this.goonum = goonum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getDisid() {
		return disid;
	}
	public void setDisid(String disid) {
		this.disid = disid;
	}
	public String getDisdate() {
		return disdate;
	}
	public void setDisdate(String disdate) {
		this.disdate = disdate;
	}
	public UserInfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "Discuss [disid=" + disid + ", distext=" + distext
				+ ", dislevel=" + dislevel + ", goonum=" + goonum + ", userid="
				+ userid + ", disdate=" + disdate + ", userinfo=" + userinfo
				+ ", goods=" + goods + "]";
	}
	
}
