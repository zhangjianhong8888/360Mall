package org.lanqiao.dao;

import org.lanqiao.po.Address;
import org.lanqiao.po.Admin;
import org.lanqiao.po.OrderInfo;

public interface IAdminMapper {
	/**
	 * 管理员登录验证
	 * @param po
	 * @return
	 * @throws Exception
	 */
	public Admin findByAdmnameAndPassword(Admin po)throws Exception;
	
	public OrderInfo findDealOrderInfo(String id)throws Exception;
}
