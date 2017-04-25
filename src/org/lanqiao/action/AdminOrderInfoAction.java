package org.lanqiao.action;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.lanqiao.biz.IOrderInfoBiz;
import org.lanqiao.po.Goods;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdminOrderInfoAction {
	@Resource
	private IOrderInfoBiz iOrderInfoBiz;
	/**
	 * 查询全部未付款订单
	 */
	@RequestMapping("/findAllNoPaid")
	public String findAllNoPaid(HttpServletRequest request){
		Integer lineSize = 7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findAllNoPaid(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountNoPaid")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoNoPaid") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/noFinishPaid.jsp";

	}

	/**
	 * 查询全部已付款订单

	 */
	@RequestMapping("/findAllFinishPaid")
	public String findAllFinishPaid(HttpServletRequest request){
		Integer lineSize = 7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findAllFinishPaid(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountFinishPaid")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoFinishPaid") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/finishPaid.jsp";

	}

	/**
	 * 查询全部已发货订单

	 */
	@RequestMapping("/findAllFinishHappen")
	public String findAllFinishHappen(HttpServletRequest request){
		Integer lineSize = 7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findAllFinishHappen(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountishHappen")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoishHappen") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/finishHappen.jsp";

	}

	/**
	 * 查询全部未发货订单

	 */
	@RequestMapping("/findAllNoHappen")
	public String findAllNoHappen(HttpServletRequest request){
		Integer lineSize =7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findAllNoHappen(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountNoHappen")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoNoHappen") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/noFinishHappen.jsp";


	}

	/**
	 * 查询全部交易结束订单

	 */
	@RequestMapping("/findAllFinishTrad")
	public String findAllFinishTrad(HttpServletRequest request){
		Integer lineSize = 7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findAllFinishTrad(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountFinishTrad")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoFinishTrad") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/finishTrad.jsp";


	}

	/**
	 * 查询全部交易取消订单

	 */
	@RequestMapping("/findAllCloseTrad")
	public String findAllCloseTrad(HttpServletRequest request){
		Integer lineSize = 7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findAllCloseTrad(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountCloseTrad")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoCloseTrad") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/closeTrad.jsp";

	}

	/**
	 * 查询全部正在交易订单

	 */
	@RequestMapping("/findAllIsTrad")
	public String findAllIsTrad(HttpServletRequest request){
		Integer lineSize = 7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findAllIsTrad(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountIsTrad")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoIsTrad") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/isTrad.jsp";

	}
	/**
	 * 发货
	 * @param request
	 * @return
	 */
	@RequestMapping("/upDateHappen")
	public String upDateHappen(HttpServletRequest request){
		String id = request.getParameter("ordnumber");
		Integer res = iOrderInfoBiz.upDateHappen(id);
		return "findAllNoHappen.action?pageSize=1";
	}
	/**
	 * 查询全部正在交易订单

	 */
	@RequestMapping("/findBackMoneyByFlagAdmin")
	public String findBackMoneyByFlagAdmin(HttpServletRequest request){
		Integer lineSize = 7;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findBackMoneyByFlagAdmin(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountBackMoneyAdmin")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allfindBackMoneyAdmin") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "/pages/back/admin/backMoney.jsp";

	}
	/**
	 * 退款
	 * @param request
	 * @return
	 */
	@RequestMapping("/dealWithBackMoney")
	public String dealWithBackMoney(HttpServletRequest request){
		String id = request.getParameter("ordnumber");
		Integer res = iOrderInfoBiz.dealWithBackMoney(id);
		return "findBackMoneyByFlagAdmin.action?pageSize=1";
	}
}
