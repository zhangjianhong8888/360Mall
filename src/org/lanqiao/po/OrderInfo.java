package org.lanqiao.po;

import java.io.Serializable;

public class OrderInfo implements Serializable {
	private String ordnumber;
	private String orddate;
	private String ordpaystate;
	private String ordhapstate;
	private String ordtradstate;
	private String userid;
	private String ordcount;
	private String goonum;
	private String addno;
	private String ordflag;
	private String ordsize;
	private String ordcolor;
	private String ordmoney;
	private String ordsite;
	private String logno;
	private UserInfo userinfo;
	private Goods goods;
	private Address address;
	private Logistics logistics;
	public OrderInfo(){}
	public String getOrdnumber() {
		return ordnumber;
	}
	public void setOrdnumber(String ordnumber) {
		this.ordnumber = ordnumber;
	}
	public String getOrddate() {
		return orddate;
	}
	public void setOrddate(String orddate) {
		this.orddate = orddate;
	}
	public String getOrdpaystate() {
		return ordpaystate;
	}
	public void setOrdpaystate(String ordpaystate) {
		this.ordpaystate = ordpaystate;
	}
	public String getOrdhapstate() {
		return ordhapstate;
	}
	public void setOrdhapstate(String ordhapstate) {
		this.ordhapstate = ordhapstate;
	}
	public String getOrdtradstate() {
		return ordtradstate;
	}
	public void setOrdtradstate(String ordtradstate) {
		this.ordtradstate = ordtradstate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getOrdcount() {
		return ordcount;
	}
	public void setOrdcount(String ordcount) {
		this.ordcount = ordcount;
	}
	public String getGoonum() {
		return goonum;
	}
	public void setGoonum(String goonum) {
		this.goonum = goonum;
	}
	public String getAddno() {
		return addno;
	}
	public void setAddno(String addno) {
		this.addno = addno;
	}
	public String getOrdflag() {
		return ordflag;
	}
	public void setOrdflag(String ordflag) {
		this.ordflag = ordflag;
	}
	public String getOrdsize() {
		return ordsize;
	}
	public void setOrdsize(String ordsize) {
		this.ordsize = ordsize;
	}
	public String getOrdcolor() {
		return ordcolor;
	}
	public void setOrdcolor(String ordcolor) {
		this.ordcolor = ordcolor;
	}
	public String getOrdmoney() {
		return ordmoney;
	}
	public void setOrdmoney(String ordmoney) {
		this.ordmoney = ordmoney;
	}
	public String getOrdsite() {
		return ordsite;
	}
	public void setOrdsite(String ordsite) {
		this.ordsite = ordsite;
	}
	public String getLogno() {
		return logno;
	}
	public void setLogno(String logno) {
		this.logno = logno;
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
	
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public Logistics getLogistics() {
		return logistics;
	}
	public void setLogistics(Logistics logistics) {
		this.logistics = logistics;
	}
	@Override
	public String toString() {
		return "OrderInfo [ordnumber=" + ordnumber + ", orddate=" + orddate
				+ ", ordpaystate=" + ordpaystate + ", ordhapstate="
				+ ordhapstate + ", ordtradstate=" + ordtradstate + ", userid="
				+ userid + ", ordcount=" + ordcount + ", goonum=" + goonum
				+ ", addno=" + addno + ", ordflag=" + ordflag + ", ordsize="
				+ ordsize + ", ordcolor=" + ordcolor + ", ordmoney=" + ordmoney
				+ ", ordsite=" + ordsite + ", logno=" + logno + ", userinfo="
				+ userinfo + ", goods=" + goods + "]";
	}
	
	
	
	
}
