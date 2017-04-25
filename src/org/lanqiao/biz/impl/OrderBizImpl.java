package org.lanqiao.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.IOrderInfoBiz;
import org.lanqiao.dao.IOrderInfoMapper;
import org.lanqiao.po.OrderInfo;
import org.springframework.stereotype.Service;
@Service()
public class OrderBizImpl implements IOrderInfoBiz {
	@Resource
	private IOrderInfoMapper iOrderInfoMapper;	
	
	
	public List<Map<String,String>> findAllIOrderInfo(Map map) {
		return  iOrderInfoMapper.findAllIOrderInfo(map);
	}
	@Override
	public Integer getAllCount(Map map) {

		return iOrderInfoMapper.getAllCount(map);
	}
	
	
	
	/**
	 * 查询未付款的状态
	 * @param ordnumber
	 */
	public  List<Map<String,String>> findALLIOrderInfoByOrdpaystate(Map map){
		return iOrderInfoMapper.findALLIOrderInfoByOrdpaystate(map);
	}
	public Integer getAllCountpaystate(Map map){
		return iOrderInfoMapper.getAllCountpaystate(map);
	}


	/**
	 * 查询未发货的状态
	 * @param ordnumber
	 */
	public  List<Map<String ,String>> findALLIOrderInfoByOrdhapstate1(Map map){
		
		return iOrderInfoMapper.findALLIOrderInfoByOrdhapstate1(map);
	}
	public Integer getAllCounthapstate1(Map map){
		return iOrderInfoMapper.getAllCounthapstate1(map);
	}
	/**
	 * 查询已发货的状态
	 * @param ordnumber
	 */
	public  List<Map<String ,String>> findALLIOrderInfoByOrdhapstate2(Map map){
		return iOrderInfoMapper.findALLIOrderInfoByOrdhapstate2(map);
	}
	public Integer getAllCounthapstate2(Map map){
		return iOrderInfoMapper.getAllCounthapstate2(map);
	}
	/**
	 * 查询交易完成的状态
	 * @param ordnumber
	 */
	public  List<Map<String ,String>> findALLIOrderInfoByOrdtradstate(Map map){
		return iOrderInfoMapper.findALLIOrderInfoByOrdtradstate(map);
	}
	public Integer getAllCounttradstate(Map map){
		return iOrderInfoMapper.getAllCounttradstate(map);
	}
	/**
	 * 取消订单
	 */
	public Integer giveUpOrderInfo(String id){
		return iOrderInfoMapper.giveUpOrderInfo(id);
	}
	
	
	@Override
	public void deleteOrderInfo(String ordnumber) {
		iOrderInfoMapper.deleteOrderInfo(ordnumber);

	}
	@Override
	public Map<String, Object> findAllNoPaid(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allOrderInfoNoPaid",iOrderInfoMapper.findAllNoPaid(line, page));
			map.put("allCountNoPaid", iOrderInfoMapper.getAllCountNoPaid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public Map<String, Object> findAllFinishPaid(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allOrderInfoFinishPaid",iOrderInfoMapper.findAllFinishPaid(line, page));
			map.put("allCountFinishPaid", iOrderInfoMapper.getAllCountFinishPaid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public Map<String, Object> findAllFinishHappen(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allOrderInfoishHappen",iOrderInfoMapper.findAllFinishHappen(line, page));
			map.put("allCountishHappen", iOrderInfoMapper.getAllCountFinishHappen());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public Map<String, Object> findAllNoHappen(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allOrderInfoNoHappen",iOrderInfoMapper.findAllNoHappen(line, page));
			map.put("allCountNoHappen", iOrderInfoMapper.getAllCountNoHappen());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public Map<String, Object> findAllFinishTrad(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allOrderInfoFinishTrad",iOrderInfoMapper.findAllFinishTrad(line, page));
			map.put("allCountFinishTrad", iOrderInfoMapper.getAllCountFinishTrad());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public Map<String, Object> findAllCloseTrad(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allOrderInfoCloseTrad",iOrderInfoMapper.findAllCloseTrad(line, page));
			map.put("allCountCloseTrad", iOrderInfoMapper.getAllCountCloseTrad());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public Map<String, Object> findAllIsTrad(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allOrderInfoIsTrad",iOrderInfoMapper.findAllIsTrad(line, page));
			map.put("allCountIsTrad", iOrderInfoMapper.getAllCountIsTrad());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public List<Map<String, String>> updateOrderInfo(int a, int b) {
		
		return iOrderInfoMapper.updateOrderInfo(a, b);
	}
	@Override
	public int finishOrderInfo(OrderInfo orderInfo) {
		return iOrderInfoMapper.finishOrderInfo(orderInfo);
	}
	@Override
	public Integer updateOderInfo(String ordnumber) {
		// TODO Auto-generated method stub
		return iOrderInfoMapper.updateOderInfo(ordnumber);
	}
	@Override
	public List<Map<String, String>> findAllOrderInfoByordflag(Map map){
		return iOrderInfoMapper.findAllOrderInfoByordflag(map);
	}
	public Integer getAllCountPurge(Map map){
		return iOrderInfoMapper.getAllCountPurge(map);
	}
	@Override//更改标志
	public Integer updateOderInfo1(String ordnumber) {
		return iOrderInfoMapper.updateOderInfo1(ordnumber);
	}
	
	@Override
	public Integer upDateHappen(String id){
		Integer res = null;
		try{
			res = iOrderInfoMapper.upDateHappen(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return res;
	}
	@Override
	public Integer backMoney(String id) {
		Integer res = null;
		try{
			res = iOrderInfoMapper.backMoney(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return res;
	}
	@Override
	public Map<String,Object> findBackMoneyByFlag(Map map) {
		Map<String,Object> map1 = new HashMap<String,Object>();
		try {
			map1.put("allfindBackMoney",iOrderInfoMapper.findBackMoneyByFlag(map));
			map1.put("allCountBackMoney", iOrderInfoMapper.getAllCountBackMoney(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map1;
	}
	@Override
	public Map<String, Object> findBackMoneyByFlagAdmin(Integer line,
			Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allfindBackMoneyAdmin",iOrderInfoMapper.findBackMoneyByFlagAdmin(line,page));
			map.put("allCountBackMoneyAdmin", iOrderInfoMapper.getAllCountBackMoneyAdmin());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	@Override
	public Integer dealWithBackMoney(String id) {
		Integer res = null;
		try{
			res = iOrderInfoMapper.dealWithBackMoney(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return res;
	}
}
