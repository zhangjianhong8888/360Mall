package org.lanqiao.po;

import java.io.Serializable;

public class Goods implements Serializable {
	private String goonum;
	private String gooprice;
	private String gooname;
	private String goocount;
	private String goosite;
	private String goodescribe;	
	private String gooflag;
	private String goocolor;
	private String goosize;
	private String goobrand;
	public Goods(){}
	public String getGoonum() {
		return goonum;
	}
	public void setGoonum(String goonum) {
		this.goonum = goonum;
	}
	public String getGooprice() {
		return gooprice;
	}
	public void setGooprice(String gooprice) {
		this.gooprice = gooprice;
	}
	public String getGooname() {
		return gooname;
	}
	public void setGooname(String gooname) {
		this.gooname = gooname;
	}
	public String getGoocount() {
		return goocount;
	}
	public void setGoocount(String goocount) {
		this.goocount = goocount;
	}
	public String getGoosite() {
		return goosite;
	}
	public void setGoosite(String goosite) {
		this.goosite = goosite;
	}
	public String getGoodescribe() {
		return goodescribe;
	}
	public void setGoodescribe(String goodescribe) {
		this.goodescribe = goodescribe;
	}
	public String getGooflag() {
		return gooflag;
	}
	public void setGooflag(String gooflag) {
		this.gooflag = gooflag;
	}
	public String getGoocolor() {
		return goocolor;
	}
	public void setGoocolor(String goocolor) {
		this.goocolor = goocolor;
	}
	public String getGoosize() {
		return goosize;
	}
	public void setGoosize(String goosize) {
		this.goosize = goosize;
	}
	public String getGoobrand() {
		return goobrand;
	}
	public void setGoobrand(String goobrand) {
		this.goobrand = goobrand;
	}
	@Override
	public String toString() {
		return "Goods [goonum=" + goonum + ", gooprice=" + gooprice
				+ ", gooname=" + gooname + ", goocount=" + goocount
				+ ", goosite=" + goosite + ", goodescribe=" + goodescribe
				+ ", gooflag=" + gooflag + ", goocolor=" + goocolor
				+ ", goosize=" + goosize + ", goobrand=" + goobrand + "]";
	}
	
}
