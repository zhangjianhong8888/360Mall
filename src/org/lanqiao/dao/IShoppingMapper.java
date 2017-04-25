package org.lanqiao.dao;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Address;
import org.lanqiao.po.Goods;
import org.lanqiao.po.Shopping;
import org.lanqiao.po.UserInfo;

public interface IShoppingMapper {
	/**
	 * 通过用户id购物车的信息
	 * @param 
	 * @return物品信息
	 */
         public List<Map<String,String>> findGoods(UserInfo userInfo);
         /**
          * 通过id删除商品信息
          * @param String
          * @return
          */
         public int delete(String id);
         public int jian(String num);
         public int add(String num);
         /**
     	 * 通过id查找
     	 * @param id
     	 * @return
     	 */
     	public  List<Address> findUserInfoById(String id);
     	
     	public List<Map<String,String>>orderlist(UserInfo userInfo);
     	
     	public void addShopping(Map map);
     	
     	public  int update(Shopping shopping);
     	public List<Map> findGoodsById(String id);
        public int deleteShopping(String id);
    
       public Integer addAddressInfo(Address address);
       
       public int updateState(UserInfo userinfo);
       

}
