package org.lanqiao.biz;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Goods;
import org.lanqiao.po.Shopping;
import org.lanqiao.po.UserInfo;

public interface ISearchGoodsBiz {

	/**
	 * 根据用户输入查询相关信息的商品
	 * @param inreseach
	 * @return
	 */
	public List<Goods> findAllGoodsByStr(Map<String, String> map);
	
	/**
	 * 查询数据库
	 * @param inreseach 
	 * @return
	 */
	public int findCount(String inreseach);
	/**
	 * 根据ID查询物品详细信息
	 * @param goods
	 * @return
	 */
	public Goods searchOneGood(Goods goods);
	/**
	 * 添加订单信息
	 * @param shopping
	 * @return 
	 */
	public int addGoodsToShopCar(Shopping shopping);
	/**
	 * 登录到本界面
	 * @param userInfo
	 * @return
	 */
	public UserInfo loginToShop(UserInfo userInfo);
	/**
	 * 查询所有商品分类
	 * @return
	 */
	public List<String> findAllgoodName();
	/**
	 * 根据用户输入查询相关信息的商品
	 * @param map
	 * @return
	 */
	public List<Goods> findAllGoodsByStrASC(Map<String, String> map);
	/**
	 * 查询购物车商品数
	 * @param userInfo
	 * @return
	 */
	public int selectCount(UserInfo userInfo);
}
