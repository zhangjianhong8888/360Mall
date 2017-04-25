package org.lanqiao.po;

import java.io.Serializable;

public class Shopping implements Serializable {
	private String shoppingid;
	private String shonumber;
	private String userid;
	private String goonum;

	public Shopping(){}

	public String getShoppingid() {
		return shoppingid;
	}

	public void setShoppingid(String shoppingid) {
		this.shoppingid = shoppingid;
	}

	public String getShonumber() {
		return shonumber;
	}

	public void setShonumber(String shonumber) {
		this.shonumber = shonumber;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getGoonum() {
		return goonum;
	}

	public void setGoonum(String goonum) {
		this.goonum = goonum;
	}
	
	
}
