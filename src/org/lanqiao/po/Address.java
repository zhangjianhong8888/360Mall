package org.lanqiao.po;

import java.io.Serializable;

public class Address implements Serializable {
	private String addno;
	private String userid;
	private String addname;
	private String addtel;
	private String addphone;
	private String addcode;
	private String addprovince;
	private String addcity;
	private String addrea;
	private String addstreet;
	public Address(){}
	public String getAddno() {
		return addno;
	}
	public void setAddno(String addno) {
		this.addno = addno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getAddname() {
		return addname;
	}
	public void setAddname(String addname) {
		this.addname = addname;
	}
	public String getAddtel() {
		return addtel;
	}
	public void setAddtel(String addtel) {
		this.addtel = addtel;
	}
	public String getAddphone() {
		return addphone;
	}
	public void setAddphone(String addphone) {
		this.addphone = addphone;
	}
	public String getAddcode() {
		return addcode;
	}
	public void setAddcode(String addcode) {
		this.addcode = addcode;
	}
	public String getAddprovince() {
		return addprovince;
	}
	public void setAddprovince(String addprovince) {
		this.addprovince = addprovince;
	}
	public String getAddcity() {
		return addcity;
	}
	public void setAddcity(String addcity) {
		this.addcity = addcity;
	}
	public String getAddrea() {
		return addrea;
	}
	public void setAddrea(String addrea) {
		this.addrea = addrea;
	}
	public String getAddstreet() {
		return addstreet;
	}
	public void setAddstreet(String addstreet) {
		this.addstreet = addstreet;
	}
	@Override
	public String toString() {
		return "Address [addno=" + addno + ", userid=" + userid + ", addname="
				+ addname + ", addtel=" + addtel + ", addphone=" + addphone
				+ ", addcode=" + addcode + ", addprovince=" + addprovince
				+ ", addcity=" + addcity + ", addrea=" + addrea
				+ ", addstreet=" + addstreet + "]";
	}
	
}
