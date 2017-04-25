package org.lanqiao.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.lanqiao.biz.ISearchGoodsBiz;
import org.lanqiao.po.Goods;
import org.lanqiao.po.Shopping;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("searchGoodsAction")
public class SearchGoodsAction {

	@Resource
	private ISearchGoodsBiz isgb;
	
	@RequestMapping("/searchGoods")
	public String searchGoods(String inreseach,String pagenum,HttpServletRequest request) throws  Exception{
		Map<String, String> map = new HashMap<String, String>();
		map.put("string", inreseach);
		map.put("pagenum", pagenum);
		List<Goods> list = isgb.findAllGoodsByStr(map);
		int count = isgb.findCount(inreseach);
		if(count%20>0){
			request.setAttribute("count", (int)count/20+1);
		}else{
			request.setAttribute("count", (int)count/20);
		}
		List<String> typname = isgb.findAllgoodName();
		System.out.println(typname);
		request.setAttribute("listOfGoods", list);
		request.setAttribute("inreseach", inreseach);
		request.setAttribute("pagenum", pagenum);
		request.setAttribute("typename", typname);
		return "forward:/pages/back/Common/paging/paging.jsp";

	}
	@RequestMapping("/searchGoodsASC")
	public String searchGoodsASC(String inreseach,String pagenum,HttpServletRequest request) throws  Exception{
		Map<String, String> map = new HashMap<String, String>();
		map.put("string", inreseach);
		map.put("pagenum", pagenum);
		List<Goods> list = isgb.findAllGoodsByStrASC(map);
		int count = isgb.findCount(inreseach);
		if(count%20>0){
			request.setAttribute("count", (int)count/20+1);
		}else{
			request.setAttribute("count", (int)count/20);
		}
		List<String> typname = isgb.findAllgoodName();
		System.out.println(typname);
		request.setAttribute("listOfGoods", list);
		request.setAttribute("inreseach", inreseach);
		request.setAttribute("pagenum", pagenum);
		request.setAttribute("typename", typname);
		return "forward:/pages/back/Common/paging/paging.jsp";

	}
	@RequestMapping("/searchOneGood")
	public String searchOneGood(Goods goods,HttpServletRequest request) throws  Exception{
		
		Goods good = isgb.searchOneGood(goods);
		request.setAttribute("good", good);
		return "forward:/pages/back/Common/details/details.jsp";

	}
	
	@RequestMapping("/addGoodsToShopCar")
	public String addGoodsToShopCar(Shopping shopping,HttpServletRequest request) throws  Exception{
		int num = isgb.addGoodsToShopCar(shopping);
		HttpSession session = request.getSession();
		session.setAttribute("Count",(Integer)session.getAttribute("Count")+num);
		return "redirect:/shoppingAction/findGoods.action";

	}
	
	@RequestMapping("/loginToShop")
	public void loginToShop(UserInfo userInfo,HttpServletResponse response,HttpServletRequest request) throws IOException{
		PrintWriter out = response.getWriter();
		userInfo = isgb.loginToShop(userInfo);
		try {	
			  if(userInfo!=null){
				request.getSession().setAttribute("UserInfo", userInfo);
				request.getSession().setAttribute("Count", isgb.selectCount(userInfo));
				request.getRequestDispatcher("/pages/back/Common/menu.jsp").forward(request, response);
			  }else{
				  out.print("no");
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			out.flush();
			out.close();
		}
	}

	
}
