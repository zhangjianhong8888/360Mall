package org.lanqiao.biz;

import java.util.List;
import java.util.Map;



import org.lanqiao.po.OrderInfo;

public interface IOrderInfoBiz {
	/**
	 * 交易完成改变订单状态
	 * @param orderInfo
	 * @return
	 */
	public int finishOrderInfo(OrderInfo orderInfo); 

	//查询所有订单

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
	/**
	 * 取消订单
	 * @param id
	 * @return
	 */
	public Integer giveUpOrderInfo(String id);
	
	public  void deleteOrderInfo(String ordnumber);

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
	public Map<String,Object> findAllNoPaid(Integer line,Integer page);

	/**
	 * 查询全部已付款订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> findAllFinishPaid(Integer line,Integer page);

	/**
	 * 查询全部已发货订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> findAllFinishHappen(Integer line,Integer page);

	/**
	 * 查询全部未发货订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> findAllNoHappen(Integer line,Integer page);

	/**
	 * 查询全部交易结束订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> findAllFinishTrad(Integer line,Integer page);

	/**
	 * 查询全部交易取消订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> findAllCloseTrad(Integer line,Integer page);

	/**
	 * 查询全部正在交易订单
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> findAllIsTrad(Integer line,Integer page);
	/**
	 * 交易完成改变订单状态
	 */
	public List<Map<String, String>> updateOrderInfo(int a,int b);
	/**
	 * 发货
	 * @param id
	 * @return
	 */
	public Integer upDateHappen(String id);
	
	/**
	 * 退款和退货
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer backMoney(String id);
	/**
	 * 查询退款记录	
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> findBackMoneyByFlag(Map map);
	/**
	 * 管理员模块查询退款记录	
	 * @param line
	 * @param page
	 * @return
	 */
	public Map<String,Object> findBackMoneyByFlagAdmin(Integer line,Integer page);
	/**
	 * 处理退款
	 * @param id
	 * @return
	 */
	public Integer dealWithBackMoney(String id);

}
