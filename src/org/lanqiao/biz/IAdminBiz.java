package org.lanqiao.biz;

import org.lanqiao.po.Admin;
import org.lanqiao.po.OrderInfo;

public interface IAdminBiz {
	/**
	 * 管理员登录验证
	 * @param po
	 * @return
	 */
	public Admin findByAdmnameAndPassword(Admin po);
	
	public OrderInfo findDealOrderInfo(String id);

}
