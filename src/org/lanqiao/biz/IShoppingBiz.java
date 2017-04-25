package org.lanqiao.biz;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Address;
import org.lanqiao.po.Goods;
import org.lanqiao.po.Shopping;
import org.lanqiao.po.UserInfo;

public interface IShoppingBiz {

	/**
	 * 查询购物车的信息
	 * @param id
	 * @return物品信息
	 */
         public List<Map<String,String>> findGoods(UserInfo userInfo);
         /**
          * 通过id删除商品信息
          * @param id
          * @return
          */
         public int delete(String id);
         /**
     	 * 通过id查找
     	 * @param id
     	 * @return
     	 */
         public  List<Address> findUserInfoById(String id);
     	public List<Map<String,String>>orderlist(UserInfo userInfo);
     	public  int update(Shopping shopping);
     	public void addShopping(Map map);
         public int jian(String num);
         public int add(String num);
         public List<Map> findGoodsById(String id);
         public int deleteShopping(String id);
     /**
      * 
      * @param address
      * @return
      */
        public Integer addAddressInfo(Address address);
        
        public int updateState(UserInfo userinfo);
        
}
