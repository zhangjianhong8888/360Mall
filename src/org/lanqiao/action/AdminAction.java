package org.lanqiao.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.lanqiao.biz.IAdminBiz;
import org.lanqiao.po.Admin;
import org.lanqiao.po.OrderInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdminAction {
	@Resource
	private IAdminBiz iAdminBiz;

	public IAdminBiz getiAdminBiz() {
		return iAdminBiz;
	}

	public void setiAdminBiz(IAdminBiz iAdminBiz) {
		this.iAdminBiz = iAdminBiz;
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request,Admin po){
		Admin admin = iAdminBiz.findByAdmnameAndPassword(po);
		if(admin!=null){
			request.getSession().setAttribute("adminInfo",admin);
			return "redirect:pages/back/admin/main.jsp";
		}else{
			request.setAttribute("msg","用户名或密码错误");
			return "pages/back/admin/login.jsp";
		}		
	}
	@RequestMapping("/findDealOrderInfo")
	public String findDealOrderInfo(HttpServletRequest request){
		String id = request.getParameter("ordnumber");
		OrderInfo orderInfo = iAdminBiz.findDealOrderInfo(id);
		request.setAttribute("orderInfo", orderInfo);
		return "pages/back/admin/buyerDealGoodsInfo.jsp";
	}
	
}
