package org.lanqiao.dao;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.OrderInfo;


public interface IOrderInfoMapper {
	/**
	 * 
	 * @param a
	 * @param b
	 * @return
	 */

	//查询所有的订单
	public List<Map<String,String>> findAllIOrderInfo(Map map);

	public Integer getAllCount(Map map);

	/**
	 * 查询未付款的状态
	 * @param ordnumber
	 */
	public  List<Map<String,String>> findALLIOrderInfoByOrdpaystate(Map map);
	public Integer getAllCountpaystate(Map map);


	/**
	 * 查询未发货的状态
	 * @param ordnumber
	 */
	public  List<Map<String ,String>> findALLIOrderInfoByOrdhapstate1(Map map);
	public Integer getAllCounthapstate1(Map map);
	/**
	 * 查询已发货的状态
	 * @param ordnumber
	 */
	public  List<Map<String ,String>> findALLIOrderInfoByOrdhapstate2(Map map);
	public Integer getAllCounthapstate2(Map map);
	/**
	 * 查询交易完成的状态
	 * @param ordnumber
	 */
	public  List<Map<String ,String>> findALLIOrderInfoByOrdtradstate(Map map);
	public Integer getAllCounttradstate(Map map);

	
	public Integer giveUpOrderInfo(String id);
	
	public  void deleteOrderInfo(String ordnumber);	 
	/*
	 * 回收
	 */

	public Integer updateOderInfo(String ordnumber);
	/**
	 * 查询回收站数据
	 * @param map
	 * @return
	 */
	public List<Map<String, String>> findAllOrderInfoByordflag(Map map);
	public Integer getAllCountPurge(Map map);
	
	public Integer updateOderInfo1(String ordnumber);
	/**
	 * 查询全部未付款订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<OrderInfo> findAllNoPaid(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部未付款订单总数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountNoPaid()throws Exception;
	/**
	 * 查询全部已付款订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<OrderInfo> findAllFinishPaid(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部已付款订单总数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountFinishPaid()throws Exception;
	/**
	 * 查询全部已发货订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<OrderInfo> findAllFinishHappen(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部已发货订单总数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountFinishHappen()throws Exception;
	/**
	 * 查询全部未发货订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<OrderInfo> findAllNoHappen(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部未发货订单总数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountNoHappen()throws Exception;
	/**
	 * 查询全部交易结束订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<OrderInfo> findAllFinishTrad(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部交易结束订单总数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountFinishTrad()throws Exception;
	/**
	 * 查询全部交易取消订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<OrderInfo> findAllCloseTrad(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部交易取消订单总数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountCloseTrad()throws Exception;
	/**
	 * 查询全部正在交易订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<OrderInfo> findAllIsTrad(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部正在交易订单总数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountIsTrad()throws Exception;
	/**
	 * 交易完成改变订单状态
	 */
	public List<Map<String, String>> updateOrderInfo(int a,int b);
	/**
	 * 交易完成改变订单状态
	 */
	public int finishOrderInfo(OrderInfo orderInfo);
	/**
	 * 发货
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer upDateHappen(String id)throws Exception;
	/**
	 * 退款和退货
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer backMoney(String id)throws Exception;
	/**
	 * 查询退款记录	
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findBackMoneyByFlag(Map map)throws Exception;
	/**
	 * 获取退款总数据量
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountBackMoney(Map map)throws Exception;
	
	/**
	 * 管理员模块查询退款记录	
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findBackMoneyByFlagAdmin(Integer line,Integer page)throws Exception;
	/**
	 * 管理员模块获取退款总数据量
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountBackMoneyAdmin()throws Exception;
	
	/**
	 * 处理退款
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer dealWithBackMoney(String id)throws Exception;
}
