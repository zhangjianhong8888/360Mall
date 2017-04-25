package org.lanqiao.action;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.lanqiao.biz.IGoodsBiz;
import org.lanqiao.biz.INoticeBiz;
import org.lanqiao.po.Goods;
import org.lanqiao.po.Notice;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class NoticeAction {
	@Resource
	private INoticeBiz ioticeBiz;
	@Resource
	private IGoodsBiz iGoodsBiz;
	@RequestMapping("/addNotice")
	public String addNotice(Notice po){
		int result = ioticeBiz.add(po);
		if(result>0){
			return "getNotice.action?pageSize=1";
		}else{
			return "pages/back/admin/login.jsp";
		}	
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
		return "pages/back/admin/hostoryNotice.jsp";
	}
	@RequestMapping("/getNoticePurge")
	public String getNoticePurge(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = ioticeBiz.fingAllPurge(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountPurge")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allNoticePurge") ){
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
		return "pages/back/admin/hostoryNoticePurge.jsp";
	}
	@RequestMapping("/addPurge")
	public String addPurge(HttpServletRequest request){
		String id = request.getParameter("notid");
		Integer res = ioticeBiz.doUpdate(id);
		return "redirect:getNotice.action?pageSize=1";
	}
	@RequestMapping("/restore")
	public String restore(HttpServletRequest request){
		String id = request.getParameter("notid");
		Integer res = ioticeBiz.doUpdateRestore(id);
		return "getNoticePurge.action?pageSize=1";
	}
	@RequestMapping("/remove")
	public String remove(HttpServletRequest request){
		String id = request.getParameter("notid");
		Integer res = ioticeBiz.doDelete(id);
		return "getNoticePurge.action?pageSize=1";
	}
	
	@RequestMapping("/findById")
	public String findById(HttpServletRequest request){
		String id = request.getParameter("notid");
		Notice notice = ioticeBiz.findById(id);
		request.setAttribute("notice",notice);
		return "pages/back/admin/lookUpNoticeText.jsp";
	}
	@RequestMapping("/emptyPurge")
	public String emptyPurge(){		
		Integer res = ioticeBiz.emptyPurge();
		Integer res1 = iGoodsBiz.emptyPurge();
		return "pages/back/admin/nullPurge.jsp";
	}
}
