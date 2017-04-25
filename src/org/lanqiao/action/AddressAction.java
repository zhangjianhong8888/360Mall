package org.lanqiao.action;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.lanqiao.biz.IAddressBiz;
import org.lanqiao.biz.IOrderInfoBiz;
import org.lanqiao.po.Address;
import org.lanqiao.po.PageBean;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("addressAction")
public class AddressAction {	 
	@Resource
	private   IAddressBiz  iAddressBiz;
	public IAddressBiz getiAddressBiz() {
		return iAddressBiz;
	}

	public void setiAddressBiz(IAddressBiz iAddressBiz) {
		this.iAddressBiz = iAddressBiz;
	}	
	  // 查询所有地址 	
		@RequestMapping("/findAllAddress")
		public String findAllAddress(HttpServletRequest req){	
//			UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");
//			if(userinfo==null){
//				return "/login.jsp";	
//			}else{
//			String userid = userinfo.getUserid();
//			List<Address> list=iAddressBiz.findAllAddress(userid);		
//			req.setAttribute("list", list);
//			return "/pages/back/orderinfo/oldAddress.jsp";				
//		}
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
			List<Address> list=  iAddressBiz.findAllAddress(map);;		
			Integer count = iAddressBiz.getAllCount(map);
			int pageCount = 0;
			if(count%ps==0){
				pageCount=count/ps;
			}else{
				pageCount=(count/ps)+1;
			}
			PageBean pb = new PageBean(pc,pageCount, ps, list);
			req.setAttribute("pb", pb);
			return "/pages/back/orderinfo/oldAddress.jsp";
		}	       			
	
//  编辑地址	
	@RequestMapping("/editAddress1")
	public String  editAddress1(HttpServletRequest req,String addno){
//		String addno=req.getParameter("addno");			
		Address address=iAddressBiz.editAddress1(addno);		
		req.setAttribute("address", address);
		return  "/pages/back/orderinfo/editAddress.jsp";
	}
	@RequestMapping("/editAddress")
	public String editAddress(Address address){
		System.out.println(address);
		Integer ln=iAddressBiz.editAddress(address);				
		return  "findAllAddress.action";
	}
		
//	删去地址						
	@RequestMapping("/deleteAddress")
	public  String deleteAddress(String addno){	
		System.out.println(addno);
		iAddressBiz.deleteAddress(addno);
		return "findAllAddress.action";
	}
	
	
//	 新增地址
	@RequestMapping("/addAddressInfo")
	public String addAddressInfo(Address address,HttpServletRequest req){
		UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");
		String userid = userinfo.getUserid();
		address.setUserid(userid);
		 System.out.println(address);
		 iAddressBiz.addAddressInfo(address);
		
		return "findAllAddress.action";
		
	   }	

	private int getPc(String str){

		if(str==null||str.trim().isEmpty()){
			return 1;
		}
		return Integer.parseInt(str);										
	}
	

}
