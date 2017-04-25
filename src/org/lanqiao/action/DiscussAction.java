package org.lanqiao.action;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.lanqiao.biz.IDiscussBiz;
import org.lanqiao.po.Complain;
import org.lanqiao.po.Discuss;
import org.lanqiao.po.Goods;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiscussAction {
	@Resource
	private IDiscussBiz iDiscussBiz;

	@SuppressWarnings("unchecked")
	@RequestMapping("/getAllDiscuss")
	public String getAllDiscuss(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;
		Map<String ,Object>  map1=new HashMap<String ,Object>();
		map1.put("line", line);
		map1.put("page", page);
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iDiscussBiz.findAllFuzzy(map1);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Discuss> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCount")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allDiscuss") ){
				list = (List<Discuss>)me.getValue();
			}
		}
		System.out.println(list);
		request.setAttribute("list", list);
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "pages/back/admin/lookUpBuyerDiscuss.jsp";
	}
     
	@RequestMapping("/addDiscussInfo")
	public String addDiscussInfo(HttpServletRequest request,Discuss discuss){
		UserInfo userinfo = (UserInfo)request.getSession().getAttribute("UserInfo");
		String userid = userinfo.getUserid();
		String goonum = discuss.getGoonum();
		String distext = discuss.getDistext();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("userid", userid);
		map.put("goonum", goonum);
		map.put("distext", distext);
		Integer res = iDiscussBiz.addDiscussInfo(map);
		return "/pages/back/orderinfo/success.jsp";
	}
}
