package org.lanqiao.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.IShoppingBiz;
import org.lanqiao.dao.IShoppingMapper;
import org.lanqiao.po.Address;
import org.lanqiao.po.Goods;
import org.lanqiao.po.Shopping;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Service;
@Service
public class ShoppingBizImpl implements IShoppingBiz {
	@Resource
	private IShoppingMapper  ishoppingmapper;

	@Override
	public List<Map<String,String>> findGoods(UserInfo userInfo) {
		List<Map<String,String>> list = ishoppingmapper.findGoods(userInfo);
		return list;
	}

	@Override
	public int jian(String num) {
		// TODO Auto-generated method stub
		return  ishoppingmapper.jian(num);
	}

	@Override
	public int add(String num) {
		// TODO Auto-generated method stub
		return  ishoppingmapper.add(num);
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return ishoppingmapper.delete(id);
	}

	@Override
	public  List<Address> findUserInfoById(String id) {
		// TODO Auto-generated method stub
		return ishoppingmapper.findUserInfoById(id) ;
	}

	@Override
	public List<Map<String, String>> orderlist(UserInfo userInfo) {
		// TODO Auto-generated method stub
		List<Map<String,String>> orderlist=ishoppingmapper.orderlist(userInfo);
		return orderlist;
	}

	public  int update(Shopping shopping){
		return ishoppingmapper.update(shopping);
		
	}

	@Override
	public void addShopping(Map map) {
		// TODO Auto-generated method stub
		ishoppingmapper.addShopping(map);
		}

	@Override
	public List<Map> findGoodsById(String id) {
		// TODO Auto-generated method stub
		return ishoppingmapper.findGoodsById(id);
	}
	public int deleteShopping(String id){
		return ishoppingmapper.deleteShopping(id);		
	}
	public Integer addAddressInfo(Address address) {		
		return ishoppingmapper.addAddressInfo(address);
	}

	 public int updateState(UserInfo userinfo){
		 return ishoppingmapper.updateState(userinfo);
	 }
}
