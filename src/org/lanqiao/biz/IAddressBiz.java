package org.lanqiao.biz;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Address;



public interface IAddressBiz {
	
	/*
	 * 查询原有地址
	 */
	public List<Address> findAllAddress(String userid);
  
   /*
    * 编辑原有地址
    */
	public Address editAddress1(String addno);
    public Integer editAddress(Address address);
    /*
     * 删除原有地址
     */
    public Integer deleteAddress(String addno);
    /*
     * 增加新地址
     */
    public Integer addAddressInfo(Address address);
    /*
	 * 查询原有地址
	 */
	public List<Address> findAllAddress(Map map);
  
    
    public Integer getAllCount(Map map);
}
