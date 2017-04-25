package org.lanqiao.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.lanqiao.biz.IComplainBiz;
import org.lanqiao.po.Complain;
import org.lanqiao.po.Goods;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ComplainAction {
	@Resource
	private IComplainBiz iComplainBiz;

	@RequestMapping("/getAllComplain")
	public String getAllComplain(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iComplainBiz.findAll(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allComplainCount")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allComplain") ){
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
		return "pages/back/admin/lookComplain.jsp";
	}

	@RequestMapping("/getAllComplainFinish")
	public String getAllComplainFinish(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iComplainBiz.findAllFinish(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allComplainCountFinish")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allComplainFinish") ){
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
		return "pages/back/admin/lookFinishComplain.jsp";
	}
	@RequestMapping("/getAllComplainNoFinish")
	public String getAllComplainNoFinish(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iComplainBiz.findAllNoFinish(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allComplainCountNoFinish")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allComplainNoFinish") ){
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
		return "pages/back/admin/dealWithComplain.jsp";
	}
	@RequestMapping("/dealWith")
	public String dealWith(Complain po){		
		Integer res = iComplainBiz.doUpdateNoFinish(po);
		return "getAllComplainFinish.action?pageSize=1";
	}
	/**
	 * 全部
	 * @param request
	 * @return
	 */
	@RequestMapping("/lookUpDate")
	public String lookUpDate(HttpServletRequest request){		
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize);
		String date1 = (String)request.getParameter("comdate1");
		String date2 = (String)request.getParameter("comdate2");
		if(date1!=null&&date1!=""&&date2!=null&&date2!=""){
			request.setAttribute("comdate3", date1);
			request.setAttribute("comdate4", date2);
			Date date3 = null;
			try {
				date3 = new SimpleDateFormat("yyyy-MM-dd").parse(date2);
			} catch (ParseException e) {			
				e.printStackTrace();
			}		 
			long num = date3.getTime();
			long num1 = num+86400000;
			Date date4 = new Date(num1);
			String date5 = new SimpleDateFormat("yyyy-MM-dd").format(date4);			
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("line", line);
			map.put("page", page);
			map.put("date1", date1);
			map.put("date2", date5);
			Map<String ,Object>  map1=new HashMap<String ,Object>();
			map1 = iComplainBiz.lookUpDate(map);
			Set<Map.Entry<String,Object>> set = map1.entrySet();
			Iterator<Map.Entry<String,Object>> it = set.iterator();
			List<Goods> list = null;
			Integer count = 0;
			while(it.hasNext()){
				Map.Entry<String,Object> me = it.next();
				if(me.getKey().equals("allComplainCountlookUpDate")){
					count = (Integer)me.getValue();
					request.setAttribute("count", count);		
				}if(me.getKey().equals("allComplainlookUpDate") ){
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
			return "pages/back/admin/lookComplainByDate.jsp";
		}else{
			return "getAllComplain.action?pageSize=1";
		}

	}
	/**
	 * 已处理
	 * @param request
	 * @return
	 */
	@RequestMapping("/lookUpDateFinish")
	public String lookUpDateFinish(HttpServletRequest request){		
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize);
		String date1 = (String)request.getParameter("comdate1");
		String date2 = (String)request.getParameter("comdate2");
		if(date1!=null&&date1!=""&&date2!=null&&date2!=""){
			request.setAttribute("comdate3", date1);
			request.setAttribute("comdate4", date2);
			Date date3 = null;
			try {
				date3 = new SimpleDateFormat("yyyy-MM-dd").parse(date2);
			} catch (ParseException e) {			
				e.printStackTrace();
			}		 
			long num = date3.getTime();
			long num1 = num+86400000;
			Date date4 = new Date(num1);
			String date5 = new SimpleDateFormat("yyyy-MM-dd").format(date4);	
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("line", line);
			map.put("page", page);
			map.put("date1", date1);
			map.put("date2", date5);
			Map<String ,Object>  map1=new HashMap<String ,Object>();
			map1 = iComplainBiz.lookUpDateFinish(map);
			Set<Map.Entry<String,Object>> set = map1.entrySet();
			Iterator<Map.Entry<String,Object>> it = set.iterator();
			List<Goods> list = null;
			Integer count = 0;
			while(it.hasNext()){
				Map.Entry<String,Object> me = it.next();
				if(me.getKey().equals("allComplainCountlookUpDateFinish")){
					count = (Integer)me.getValue();
					request.setAttribute("count", count);		
				}if(me.getKey().equals("allComplainlookUpDateFinish") ){
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
			return "pages/back/admin/lookComplainFinishByDate.jsp";
		}else{
			return "getAllComplainFinish.action?pageSize=1";
		}
	}
	/**
	 * 未处理
	 * @param request
	 * @return
	 */
	@RequestMapping("/lookUpDateNoFinish")
	public String lookUpDateNoFinish(HttpServletRequest request){		
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize);
		String date1 = request.getParameter("comdate1");
		String date2 = request.getParameter("comdate2");
		if(date1!=null&&date1!=""&&date2!=null&&date2!=""){
			request.setAttribute("comdate3", date1);
			request.setAttribute("comdate4", date2);
			Date date3 = null;
			try {
				date3 = new SimpleDateFormat("yyyy-MM-dd").parse(date2);
			} catch (ParseException e) {			
				e.printStackTrace();
			}		 
			long num = date3.getTime();
			long num1 = num+86400000;
			Date date4 = new Date(num1);
			String date5 = new SimpleDateFormat("yyyy-MM-dd").format(date4);	
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("line", line);
			map.put("page", page);
			map.put("date1", date1);
			map.put("date2", date5);
			Map<String ,Object>  map1=new HashMap<String ,Object>();
			map1 = iComplainBiz.lookUpDateNoFinish(map);
			Set<Map.Entry<String,Object>> set = map1.entrySet();
			Iterator<Map.Entry<String,Object>> it = set.iterator();
			List<Goods> list = null;
			Integer count = 0;
			while(it.hasNext()){
				Map.Entry<String,Object> me = it.next();
				if(me.getKey().equals("allComplainCountlookUpDateNoFinish")){
					count = (Integer)me.getValue();
					request.setAttribute("count", count);		
				}if(me.getKey().equals("allComplainlookUpDateNoFinish") ){
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
			return "pages/back/admin/lookComplainNoFinishByDate.jsp";
		}else{
			return "getAllComplainNoFinish.action?pageSize=1";
		}
	}

	@RequestMapping("/addComplainInfo")
	public String addComplainInfo(HttpServletRequest request,Complain complain){
		UserInfo userinfo = (UserInfo)request.getSession().getAttribute("UserInfo");
		String userid = userinfo.getUserid();
		String goonum = complain.getGoonum();
		String comrenson = complain.getComrenson();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("userid", userid);
		map.put("goonum", goonum);
		map.put("comrenson", comrenson);
		Integer res = iComplainBiz.addComplainInfo(map);
		return "orderInfoAction/findAllOrder.action";



	}
	
	@RequestMapping("/findhuifuInfo")
	public String findhuifuInfo(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		List<Complain> s=null;
		Integer count = null;
		Map<String,Object> map = new HashMap<String,Object>();
		UserInfo userInfo = (UserInfo)request.getSession().getAttribute("UserInfo");		
		map.put("line",line);
		map.put("page",page);
		map.put("userid",userInfo.getUserid());
		try {
			s = iComplainBiz.findhuifuInfo(map);
			count = iComplainBiz.getAllHuiFuCount(map);
		} catch (Exception e) {
			
			e.printStackTrace();
		}				
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("count", count);
		request.setAttribute("list", s);
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "pages/back/orderinfo/huifu.jsp";
	}
}