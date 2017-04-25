package org.lanqiao.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.lanqiao.po.Address;

import org.lanqiao.biz.IAddressBiz;
import org.lanqiao.dao.IAddressMapper;
import org.springframework.stereotype.Service;
@Service
public class AddressBizImpl implements IAddressBiz {
	@Resource
    private IAddressMapper iaddressmapper;
	
    public IAddressMapper getIaddressmapper() {
		return iaddressmapper;
	}

    public void setIaddressmapper(IAddressMapper iaddressmapper) {
		this.iaddressmapper = iaddressmapper;
	}

    // 查询所有地址  
	@Override
	public List<Address>findAllAddress(String userid) {
		
		return  iaddressmapper.findAllAddress(userid);
	}
//    编辑地址
	@Override
	public Address editAddress1(String addno){		
		return iaddressmapper.editAddress1(addno);
	}
    public Integer editAddress(Address address){
    	  return iaddressmapper.editAddress( address);   	   	
    }

	
	
//	删去地址
	@Override
	public Integer deleteAddress(String addno) {
	  return iaddressmapper.deleteAddress(addno);		
	}
	
	
//	 新增地址
	@Override
	public Integer addAddressInfo(Address address) {		
		return iaddressmapper.addAddressInfo(address);
	}

	@Override
	public List<Address> findAllAddress(Map map) {
		return iaddressmapper.findAllAddress(map);
	}

	@Override
	public Integer getAllCount(Map map) {
		// TODO Auto-generated method stub
		return iaddressmapper.getAllCount(map);
	}


}
