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
import javax.servlet.http.HttpSession;

import org.lanqiao.biz.IUserInfoBiz;

import org.lanqiao.po.Goods;

import org.lanqiao.po.UserInfo;
import org.lanqiao.sendemail.SengEmail;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("userInfoAction")
public class UserInfoAction {
    
	@Resource
	private IUserInfoBiz uib;
	@Resource
	private SengEmail sendEmail;
	
	@RequestMapping("/addNewIUserInfo")
	public String addNewIUserInfo(UserInfo userInfo,Model model,HttpServletRequest request,HttpSession session){
		
		uib.addNewIUserInfo(userInfo);
		if("".equals(userInfo.getUserid())){
			model.addAttribute("message", "注册失败请重新注册");
			return "/360Mall/pages/back/userinfo/register.jsp";
		}else{
			return "/360Mall/login.jsp";
		}	
		
	}
	@RequestMapping("/isRegister")
	public void isRegister(UserInfo userInfo,HttpServletResponse response) throws IOException{
		userInfo = uib.findUserInfoByEmail(userInfo);
		PrintWriter pw = response.getWriter();
		String msg = "";
		if(userInfo==null){
			msg = "yes";
		}else{
			msg = "no";
		}
		pw.print(msg);
		pw.flush();
	}
	@RequestMapping("/isRegisterName")
	public void isRegisterName(UserInfo userInfo,HttpServletResponse response) throws IOException{
		userInfo = uib.findUserInfoByName(userInfo);
		PrintWriter pw = response.getWriter();
		String msg = "";
		if(userInfo==null){
			msg = "yes";
		}else{
			msg = "no";
		}
		pw.print(msg);
		pw.flush();
	}
	@RequestMapping("/sendEmail")
	public void sendEmail(UserInfo userInfo,HttpServletResponse response,HttpServletRequest request) throws IOException{
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		String msg = "";
		for(int i=0;i<6;i++){
			msg+=(int)(Math.random()*10);
		}
		try {
			sendEmail.sendEmail(userInfo.getUseremail(), msg);
			session.setAttribute("emailNum", msg);
			pw.print(msg);
		} catch (Exception e) {
			e.printStackTrace();
			pw.print("no");
		}
		pw.flush();
	}
	@RequestMapping("/sendPassword")
	public String sendPassword(UserInfo userInfo,HttpSession session) throws IOException{
		uib.updatePassword(userInfo);
		userInfo = uib.findUserInfoByEmail(userInfo);
		session.setAttribute("UserInfo", userInfo);
		return "/360Mall/index.jsp";
	}
	public IUserInfoBiz getUib() {
		return uib;
	}

	public void setUib(IUserInfoBiz uib) {
		this.uib = uib;
	}
	public SengEmail getSendEmail() {
		return sendEmail;
	}
	public void setSendEmail(SengEmail sendEmail) {
		this.sendEmail = sendEmail;
	}
	@RequestMapping("/userLogin")
	 public String userLogin(UserInfo userInfo,HttpServletRequest request){
		UserInfo user= uib.findUserByPasswordAnduserNameOruserEmail(userInfo);
		
		if(user!=null){
		int userCount= uib.findAllCount(user);
		HttpSession session = request.getSession();
		session.setAttribute("UserInfo",user);
		session.setAttribute("Count", userCount);
		     return "/index.jsp";
		}else{
			request.setAttribute("mesg", "用户名或密码错误");
			 return "/login.jsp";
		}
		
	 } 
	@RequestMapping("/findAllFuzzy")
	public String findAllFuzzy(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = uib.findAllFuzzy(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCount")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allUserInfo") ){
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
		return "/pages/back/admin/lookUpBuyerInfo.jsp";
	}
	/**
	 * 修改个人信息
	 * @param request
	 * @param userinfo
	 * @return
	 */
	@RequestMapping("/doUpdateInfo")
	public String doUpdateInfo(HttpServletRequest request,UserInfo userinfo){
		UserInfo user = (UserInfo) request.getSession().getAttribute("UserInfo");
		userinfo.setUserid(user.getUserid());
		System.out.println(userinfo);
		Integer res = uib.doUpdateInfo(userinfo);
		
		if(res!=null){
			request.setAttribute("msg","恭喜你，修改成功" );
			return "/pages/back/orderinfo/msg.jsp";	
		}else{
			request.setAttribute("msg","很遗憾，修改信息失败" );
			return "/pages/back/orderinfo/msg.jsp";	
		}
			
	}
}
