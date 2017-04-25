package org.lanqiao.biz.impl;

import javax.annotation.Resource;

import org.lanqiao.biz.IAdminBiz;
import org.lanqiao.dao.IAdminMapper;
import org.lanqiao.po.Admin;
import org.lanqiao.po.OrderInfo;
import org.springframework.stereotype.Service;
@Service
public class AdminBizImpl implements IAdminBiz {
	@Resource
	private IAdminMapper iAdminMapper;	
	public IAdminMapper getiAdminMapper() {
		return iAdminMapper;
	}


	public void setiAdminMapper(IAdminMapper iAdminMapper) {
		this.iAdminMapper = iAdminMapper;
	}


	@Override
	public Admin findByAdmnameAndPassword(Admin po) {
		Admin admin = null;
		try {
			admin = iAdminMapper.findByAdmnameAndPassword(po);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}


	@Override
	public OrderInfo findDealOrderInfo(String id) {
		OrderInfo po = null;
		try {
			po = iAdminMapper.findDealOrderInfo(id);
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return po;
	}

}
