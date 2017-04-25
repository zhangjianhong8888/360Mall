package org.lanqiao.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;

import org.aspectj.weaver.ArrayAnnotationValue;
import org.lanqiao.biz.IShoppingBiz;
import org.lanqiao.biz.impl.ShoppingBizImpl;
import org.lanqiao.po.Address;
import org.lanqiao.po.Goods;
import org.lanqiao.po.OrderInfo;
import org.lanqiao.po.Shopping;
import org.lanqiao.po.UserInfo;
import org.lanqiao.tools.PaymentUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shoppingAction")
public class ShoppingAction {
	
	@Resource
	private IShoppingBiz ishoppingBiz ; 
	@RequestMapping("/findGoods")
	public String findGoods(HttpServletRequest request){	
		HttpSession session=request.getSession();
		UserInfo userInfo= (UserInfo) session.getAttribute("UserInfo");
		List<Map<String, String>> list=ishoppingBiz.findGoods(userInfo);
		request.setAttribute("list",list );
        double sum = 0;
        request.setAttribute("summoney", sum);
		if(list.isEmpty()){
			return "../pages/back/shopping/enptyCar.jsp";
		}else{
			return "../pages/back/shopping/shopcar.jsp";
		}	

	}
	@RequestMapping("orderlist")
	public String orderlist(HttpServletRequest request){		
		HttpSession session=request.getSession();
		UserInfo userInfo= (UserInfo) session.getAttribute("UserInfo");
		List<Map<String, String>> orderlist=ishoppingBiz.orderlist(userInfo);
		request.setAttribute("orderlist", orderlist);
		double sum=0;
		request.setAttribute("summoney", sum);
		return "../pages/back/shopping/orderInfo.jsp";
	}
	
	@RequestMapping("/delete")
	public String delete(Shopping shop){
		String id =shop.getShoppingid();
		int row=ishoppingBiz.delete(id);
		return "findGoods.action";
	}
	
	 @RequestMapping("/findUserById")
	 public String findUserById(HttpServletRequest request,HttpSession session){
	UserInfo userinfo=	(UserInfo) session.getAttribute("UserInfo");
		 List<Address> userlist=ishoppingBiz.findUserInfoById(userinfo.getUserid());
		 request.setAttribute("userlist", userlist);
//		 if(userlist.isEmpty()){
//			 return "../pages/back/shopping/address.jsp";
//		 }
		 return "orderlist.action";
	 } 
	 @RequestMapping("addShopping")
	 public String addShopping(String val,HttpServletRequest request){
		 UserInfo userinfo = (UserInfo) request.getSession().getAttribute("UserInfo");
		 List<Map> list = ishoppingBiz.findGoodsById(userinfo.getUserid());
		 for (Map map : list) {
			BigDecimal bd = (BigDecimal)map.get("GOOPRICE");
			BigDecimal integer = (BigDecimal)map.get("SHONUMBER");
			map.put("ORDMONEY", bd.multiply(integer)+"");	
			map.put("ADDNO", val);
			 ishoppingBiz.addShopping(map);		
		}
		 ishoppingBiz.deleteShopping(userinfo.getUserid());
		 HttpSession session=request.getSession();
		 session.setAttribute("Count", 0);
		 return "doPayMoney.action"; 
	 }
	 @RequestMapping("doPayMoney")
	 public  void doPayMoney(HttpSession session,HttpServletResponse response) throws IOException{
		  UserInfo userInfo =  (UserInfo) session.getAttribute("UserInfo");
		  String userid=userInfo.getUserid();
		  String str = "";
			for(int i = 0; i <10; i++){
			str += (int)(Math.random()*10);
			}
		    String p0_Cmd = "Buy"; // 业务类型:
			String p1_MerId ="10001126856";// 商户编号:
			String p2_Order = str;// 订单编号:
			String p3_Amt = "0.01"; // 付款金额:
			String p4_Cur = "CNY"; // 交易币种:
			String p5_Pid = "note3"; // 商品名称:
			String p6_Pcat = "phone"; // 商品种类:
			String p7_Pdesc = "white"; // 商品描述:
			String p8_Url = "http://localhost:8080/360Mall/shoppingAction/updateSate.action?"+userid; // 商户接收支付成功数据的地址:
			String p9_SAF = "0"; // 送货地址:
			String pa_MP = "right"; // 商户扩展信息:
			String pd_FrpId = "";// 支付通道编码:
			String pr_NeedResponse = "1"; // 应答机制:
			String keyValue = "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl"; // 秘钥
			String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt,
					p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
					pd_FrpId, pr_NeedResponse, keyValue); // hmac
			// 向易宝发送请求:
			StringBuffer sb = new StringBuffer("https://www.yeepay.com/app-merchant-proxy/node?");
			sb.append("p0_Cmd=").append(p0_Cmd).append("&");
			sb.append("p1_MerId=").append(p1_MerId).append("&");
			sb.append("p2_Order=").append(p2_Order).append("&");
			sb.append("p3_Amt=").append(p3_Amt).append("&");
			sb.append("p4_Cur=").append(p4_Cur).append("&");
			sb.append("p5_Pid=").append(p5_Pid).append("&");
			sb.append("p6_Pcat=").append(p6_Pcat).append("&");
			sb.append("p7_Pdesc=").append(p7_Pdesc).append("&");
			sb.append("p8_Url=").append(p8_Url).append("&");
			sb.append("p9_SAF=").append(p9_SAF).append("&");
			sb.append("pa_MP=").append(pa_MP).append("&");
			sb.append("pd_FrpId=").append(pd_FrpId).append("&");
			sb.append("pr_NeedResponse=").append(pr_NeedResponse).append("&");
			sb.append("hmac=").append(hmac);
			// 重定向:向易宝出发:
			response.sendRedirect(sb.toString());
			
	 }
	 @RequestMapping("updateShopping")
	 public void updateShopping(Shopping shopping){
		 ishoppingBiz.update(shopping);
	 }
	 @RequestMapping("addAddressInfo")
	 public String addAddressInfo(Address address,HttpServletRequest req){
			UserInfo userinfo = (UserInfo)req.getSession().getAttribute("UserInfo");
			String userid = userinfo.getUserid();
			address.setUserid(userid);
			 ishoppingBiz.addAddressInfo(address);			
			return "findUserById.action";
			
		   }
	 @RequestMapping("updateSate")
 public String updateSate(HttpServletRequest request,HttpSession session){
		UserInfo userinfo=	(UserInfo) session.getAttribute("UserInfo");		
		int i=ishoppingBiz.updateState(userinfo);
	 return "../pages/back/orderinfo/frame.jsp ";
 }
	
}

