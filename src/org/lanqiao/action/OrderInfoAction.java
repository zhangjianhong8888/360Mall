package org.lanqiao.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.biz.INoticeBiz;
import org.lanqiao.biz.IOrderInfoBiz;
import org.lanqiao.po.Goods;
import org.lanqiao.po.Notice;
import org.lanqiao.po.OrderInfo;
import org.lanqiao.po.PageBean;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("orderInfoAction")
public class OrderInfoAction {
	@Resource
	private   IOrderInfoBiz  iOrderInfoBiz;
	@Resource
	private INoticeBiz ioticeBiz;
	@RequestMapping("/findAllOrder")
	public String findAllOrder(HttpServletRequest req){		
		int pc=getPc(req.getParameter("pc"));
		int ps=5;
		int a=pc*ps;
		int b=ps*(pc-1);
		UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");
		if(userinfo==null)
			return "/login.jsp";	
		String userid = userinfo.getUserid();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("a", a);
		map.put("b", b);
		map.put("userid", userid);		
		List<Map<String,String>> list=  iOrderInfoBiz.findAllIOrderInfo(map);
		Integer count = iOrderInfoBiz.getAllCount(map);
		int pageCount = 0;
		if(count%ps==0){
			pageCount=count/ps;
		}else{
			pageCount=(count/ps)+1;
		}
		PageBean pb = new PageBean(pc,pageCount, ps, list);
		req.setAttribute("pb", pb);
		return "/pages/back/orderinfo/selectAll.jsp";
	}	       			
	private int getPc(String str){

		if(str==null||str.trim().isEmpty()){
			return 1;
		}
		return Integer.parseInt(str);										
	}
	/**
	 * 未付款
	 * @param req
	 * @return
	 */
	@RequestMapping("/findALLIOrderInfoByOrdpaystate")
	public String findALLIOrderInfoByOrdpaystate(HttpServletRequest req){
		int pc=getPc(req.getParameter("pc"));
		int ps=5;
		int a=pc*ps;
		int b=ps*(pc-1);
		UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");

		String userid = userinfo.getUserid();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("a", a);
		map.put("b", b);
		map.put("userid", userid);		
		List<Map<String,String>> list=  iOrderInfoBiz.findALLIOrderInfoByOrdpaystate(map);
		Integer count = iOrderInfoBiz.getAllCountpaystate(map);
		int pageCount = 0;
		if(count%ps==0){
			pageCount=count/ps;
		}else{
			pageCount=(count/ps)+1;
		}
		PageBean pb = new PageBean(pc,pageCount, ps, list);
		req.setAttribute("pb", pb);
		return "/pages/back/orderinfo/right.jsp";
	}	 
	/**
	 * 未发货
	 * @param req
	 * @return
	 */
	@RequestMapping("/findALLIOrderInfoByOrdhapstate1")
	public String  findALLIOrderInfoByOrdhapstate1(HttpServletRequest req){
		int pc=getPc(req.getParameter("pc"));
		int ps=5;
		int a=pc*ps;
		int b=ps*(pc-1);
		UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");
		if(userinfo==null)
			return "/login.jsp";	
		String userid = userinfo.getUserid();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("a", a);
		map.put("b", b);
		map.put("userid", userid);		
		List<Map<String,String>> list=  iOrderInfoBiz.findALLIOrderInfoByOrdhapstate1(map);
		Integer count = iOrderInfoBiz.getAllCounthapstate1(map);
		int pageCount = 0;
		if(count%ps==0){
			pageCount=count/ps;
		}else{
			pageCount=(count/ps)+1;
		}
		PageBean pb = new PageBean(pc,pageCount, ps, list);
		req.setAttribute("pb", pb);
		return "/pages/back/orderinfo/right1.jsp";
	}	       			
	/**
	 * 已发货
	 * @param req
	 * @return
	 */
	@RequestMapping("/findALLIOrderInfoByOrdhapstate2")
	public String findALLIOrderInfoByOrdhapstate2(HttpServletRequest req){
		int pc=getPc(req.getParameter("pc"));
		int ps=5;
		int a=pc*ps;
		int b=ps*(pc-1);
		UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");
		if(userinfo==null)
			return "/login.jsp";	
		String userid = userinfo.getUserid();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("a", a);
		map.put("b", b);
		map.put("userid", userid);		
		List<Map<String,String>> list=  iOrderInfoBiz.findALLIOrderInfoByOrdhapstate2(map);
		Integer count = iOrderInfoBiz.getAllCounthapstate2(map);
		int pageCount = 0;
		if(count%ps==0){
			pageCount=count/ps;
		}else{
			pageCount=(count/ps)+1;
		}
		PageBean pb = new PageBean(pc,pageCount, ps, list);
		req.setAttribute("pb", pb);
		return "/pages/back/orderinfo/right1.jsp";
	}	       			
	/**
	 * 交易完成
	 * @param req
	 * @return
	 */
	@RequestMapping("/findALLIOrderInfoByOrdtradstate")
	public String findALLIOrderInfoByOrdtradstate(HttpServletRequest req){
		int pc=getPc(req.getParameter("pc"));
		int ps=5;
		int a=pc*ps;
		int b=ps*(pc-1);
		UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");
		if(userinfo==null)
			return "/login.jsp";	
		String userid = userinfo.getUserid();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("a", a);
		map.put("b", b);
		map.put("userid", userid);		
		List<Map<String,String>> list=  iOrderInfoBiz.findALLIOrderInfoByOrdtradstate(map);
		Integer count = iOrderInfoBiz.getAllCounttradstate(map);
		int pageCount = 0;
		if(count%ps==0){
			pageCount=count/ps;
		}else{
			pageCount=(count/ps)+1;
		}
		PageBean pb = new PageBean(pc,pageCount, ps, list);
		req.setAttribute("pb", pb);
		return "/pages/back/orderinfo/right2.jsp";
	}	   


	/**
	 * 查询全部已付款订单

	 */
	@RequestMapping("/findAllFinishPaid")
	public String findAllFinishPaid(HttpServletRequest request){
		Integer lineSize = 5;
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
		Integer lineSize = 5;
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
			if(me.getKey().equals("allCountFinishHappen")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoFinishHappen") ){
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
		Integer lineSize = 5;
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
		Integer lineSize = 5;
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
			if(me.getKey().equals("allCountishTrad")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allOrderInfoishTrad") ){
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
		Integer lineSize = 5;
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
		Integer lineSize = 5;
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

	@RequestMapping("/finishAction")
	public void finishAction(OrderInfo orderInfo,HttpServletResponse response) throws IOException{
		PrintWriter pw = response.getWriter();
		int num = iOrderInfoBiz.finishOrderInfo(orderInfo);
		if(num>0){
			pw.write("yes");
		}else{
			pw.write("no");
		}
		pw.flush();
	}

	/**
	 * 把订单放入回收站
	 * @param req
	 * @return
	 */
	@RequestMapping("/updateOrderInf")
	public String updateOrderInf(HttpServletRequest req){
		String  ordnumber=req.getParameter("ordnumber");
		iOrderInfoBiz.updateOderInfo(ordnumber);
		return  "/orderInfoAction/findAllOrder.action";		
	}
	@RequestMapping("/updateOrderInfNoHappen")
	public String updateOrderInfNoHappen(HttpServletRequest req){
		String  ordnumber=req.getParameter("ordnumber");
		iOrderInfoBiz.updateOderInfo(ordnumber);
		return  "/orderInfoAction/findALLIOrderInfoByOrdhapstate1.action";		
	}
	@RequestMapping("/updateOrderInfHappen")
	public String updateOrderInfHappen(HttpServletRequest req){
		String  ordnumber=req.getParameter("ordnumber");
		iOrderInfoBiz.updateOderInfo(ordnumber);
		return  "/orderInfoAction/findALLIOrderInfoByOrdhapstate2.action";		
	}
	@RequestMapping("/updateOrderInfNoPaid")
	public String updateOrderInfNoPaid(HttpServletRequest req){
		String  ordnumber=req.getParameter("ordnumber");
		iOrderInfoBiz.updateOderInfo(ordnumber);
		return  "/orderInfoAction/findALLIOrderInfoByOrdpaystate.action";		
	}
	@RequestMapping("/updateOrderInfFinishTrad")
	public String updateOrderInfFinishTrad(HttpServletRequest req){
		String  ordnumber=req.getParameter("ordnumber");
		iOrderInfoBiz.updateOderInfo(ordnumber);
		return  "/orderInfoAction/findALLIOrderInfoByOrdtradstate.action";		
	}
	/**
	 * 查询回收站数据
	 * @param req
	 * @return
	 */
	@RequestMapping("/findAllOrderInfoByordflag")
	public String findAllOrderInfoByordflag(HttpServletRequest req){
		int pc=getPc(req.getParameter("pc"));
		int ps=5;
		int a=pc*ps;
		int b=ps*(pc-1);
		UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");

		String userid = userinfo.getUserid();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("a", a);
		map.put("b", b);
		map.put("userid", userid);		
		List<Map<String,String>> list=  iOrderInfoBiz.findAllOrderInfoByordflag(map);
		Integer count = iOrderInfoBiz.getAllCountPurge(map);
		int pageCount = 0;
		if(count%ps==0){
			pageCount=count/ps;
		}else{
			pageCount=(count/ps)+1;
		}
		PageBean pb = new PageBean(pc,pageCount, ps, list);
		req.setAttribute("pb", pb);
		return "/pages/back/orderinfo/recycle.jsp";
	}	

	/**
	 * 从回收站删除
	 * @param req
	 * @return
	 */
	@RequestMapping("/deleteOrderInfo")
	public  String deleteOrderInfo(HttpServletRequest req){
		String ordnumber=req.getParameter("ordnumber");	
		System.out.println(ordnumber);
		iOrderInfoBiz.deleteOrderInfo(ordnumber);
		return "/orderInfoAction/findAllOrderInfoByordflag.action";
	}
	/**
	 * 回收站恢复功能
	 * @param req
	 * @return
	 */
	@RequestMapping("/updateOrderInf1")
	public String updateOrderInf1(HttpServletRequest req){
		String  ordnumber=req.getParameter("ordnumber");
		iOrderInfoBiz.updateOderInfo1(ordnumber);
		return  "/orderInfoAction/findAllOrderInfoByordflag.action";	

	}
	/**
	 * 取消订单
	 * @param request
	 * @return
	 */
	@RequestMapping("/giveUpOrderInfo")
	public String giveUpOrderInfo(HttpServletRequest request){
		String id = request.getParameter("ordnumber");
		Integer res = iOrderInfoBiz.giveUpOrderInfo(id);
		return "/orderInfoAction/findAllOrder.action";
	}
	/**
	 * 查询全部未付款订单
	 */
	@RequestMapping("/findAllNoPaid")
	public String findAllNoPaid(HttpServletRequest request){
		Integer lineSize = 5;
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
	@RequestMapping("/getNotice")
	public String getNotice(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = ioticeBiz.fingAll(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCount")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allNotice") ){
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
		return "/pages/back/orderinfo/message.jsp";
	}
	@RequestMapping("/findById")
	public String findById(HttpServletRequest request){
		String id = request.getParameter("notid");
		Notice notice = ioticeBiz.findById(id);
		request.setAttribute("notice",notice);
		return "/pages/back/orderinfo/dealMessage.jsp";

	}
	/**
	 * 退款
	 * @param request
	 * @return
	 */
	@RequestMapping("/backMoney")
	public String backMoney(HttpServletRequest request){
		String id = request.getParameter("ordnumber");
		Integer res = iOrderInfoBiz.backMoney(id);
		System.out.println(res);
		return "/orderInfoAction/findAllOrder.action";
	}
	/**
	 * 查询退款记录
	 * @param request
	 * @return
	 */
	@RequestMapping("/findBackMoneyByFlag")
	public String findBackMoneyByFlag(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize);
		UserInfo userinfo = (UserInfo)request.getSession().getAttribute("UserInfo");
		String userid = userinfo.getUserid();
		Map<String ,Object>  map1=new HashMap<String ,Object>();
		map1.put("line", line);
		map1.put("page", page);
		map1.put("userid", userid);
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iOrderInfoBiz.findBackMoneyByFlag(map1);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountBackMoney")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allfindBackMoney") ){
				list = (List)me.getValue();
			}
		}		
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		PageBean pb = new PageBean(page,count, line, list);
		request.setAttribute("pb", pb);
		
		return "/pages/back/orderinfo/returnGood.jsp";
	}
}
