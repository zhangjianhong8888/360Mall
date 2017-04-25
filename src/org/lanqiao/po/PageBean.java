package org.lanqiao.po;

import java.util.List;

public class PageBean {
	private int pc;  //pageCode 当前页数
	private int tc;  //totalCode总的页数
	private int tr;  //totalRecord总的纪录数
	private int ps=10;  //pageSize每页纪录数
	private List list;
	
	public PageBean() {
	}
	public PageBean(int pc, int tc, int ps, List list) {
		this.pc = pc;
		this.tc = tc;
		this.ps = ps;
		this.list = list;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = pc;
	}
	public int getTc() {
		return tc;
	}
	public void setTc(int tc) {
		this.tc = tc;
	}
	public int getTr() {
		return tr;
	}
	public void setTr(int tr) {
		this.tr = tr;
	}
	public int getPs() {
		return ps;
	}
	public void setPs(int ps) {
		this.ps = ps;
	}
		

}
