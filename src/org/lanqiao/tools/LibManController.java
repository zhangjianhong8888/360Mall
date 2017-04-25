package org.lanqiao.tools;

import cat.pojo.*;
import cat.service.LibManService;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class LibManController {
	@Resource
	private LibManService libManServiceImpl;

	/**
	 * 关键词搜索，模糊查询
	 * 
	 * @param request
	 * @param reponse
	 * @return
	 */
	@RequestMapping("LibSearch")
	@ResponseBody
	public String LibSearch(HttpServletRequest request,
			HttpServletResponse reponse) {
		String search = request.getParameter("search");
		List<Book> list = libManServiceImpl.search(search);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;
	}

	/**
	 * 查询图书馆公告
	 * 
	 * @param request
	 * @param response
	 * @return json list
	 */
	@RequestMapping("selLibManNotice")
	@ResponseBody
	public String selLibManNotice(HttpServletRequest request,
			HttpServletResponse response) {

		List<Notice> list = new ArrayList<Notice>();
		list = libManServiceImpl.selLibGgService();
		// System.out.println("controller"+list);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;
	}

	/**
	 * 查询所有图书信息
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selBook")
	@ResponseBody
	public String selBook(HttpServletRequest request,
			HttpServletResponse response) {

		List<Book> list = new ArrayList<Book>();
		list = libManServiceImpl.selGCBookService();
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;
	}

	/**
	 * 查询图书数量用于分页
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selCounts")
	@ResponseBody
	public String selCounts(HttpServletRequest request,
			HttpServletResponse response) {
		int counts = libManServiceImpl.selCounts();
		Gson gson = new Gson();
		String json = gson.toJson(counts);
		return json;
	}

	/**
	 * 查询所有图书并分页显示
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selAll")
	@ResponseBody
	public String selAll(HttpServletRequest request,
			HttpServletResponse response) {
		String pageno1 = request.getParameter("pageno");
		String pagesize1 = request.getParameter("pagesize");
		// System.out.println(pageno1+pagesize1);
		int pageno = Integer.parseInt(pageno1);
		int pagesize = Integer.parseInt(pagesize1);
		Page page = new Page(pageno, pagesize);
		List<Book> list = libManServiceImpl.selAllService(page);
		// System.out.println(page);
		// System.out.println(list);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;
	}

	/**
	 * 学生登录
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("stuLogin")
	public String stuLogin(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		// 获取前端页面的学号与密码
		String sno = request.getParameter("sno");
		String spwd = request.getParameter("spwd");
		Student student = new Student();
		student.setSno(sno);
		student.setSpwd(spwd);
		List<Student> res = libManServiceImpl.libStuLoginService(student);
		for (Student stu : res) {
			session.setAttribute("sname", stu.getSname());
			// 将学生编号存入sid，以便后边从借书表中查询相应的借阅记录
			session.setAttribute("sid", stu.getSno());
		}
		if (null != res) {
			return "redirect:library/libMan/LibPersonal.jsp";
		} else {
			return "redirect:library/libMan/LibLogin.jsp";
		}
	}

	/**
	 * 教师登录
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("teaLogin")
	public String teaLogin(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		// 获取前端页面的教师编号和密码
		String stid = request.getParameter("tid");
		String tpwd = request.getParameter("tpwd");
		// 类型转换
		int tid = Integer.parseInt(stid);
		Teacher teacher = new Teacher();
		teacher.setTid(tid);
		teacher.setTpwd(tpwd);
		List<Teacher> res = libManServiceImpl.libTeaLoginService(teacher);
		for (Teacher tea : res) {
			session.setAttribute("tname", teacher.getTname());
			// 将老师编号存入tid，以便后边从借书表中查询相应的借阅记录
			session.setAttribute("tid", teacher.getTid());
		}
		if (null != res) {
			return "redirect:library/libMan/libMan.jsp";
		} else {
			return "redirect:library/libMan/LibLogin.jsp";
		}
	}

	/**
	 * 分类检索
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("FenLeiSearch")
	@ResponseBody
	public String FenLeiSearch(HttpServletRequest request,
			HttpServletResponse response) {
		String type = request.getParameter("type");
		List<Book> list = libManServiceImpl.fenLeiService(type);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;

	}

	/**
	 * 查询出本次分类的总数
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("FenLeiShu")
	@ResponseBody
	public String FenLeiShu(HttpServletRequest request,
			HttpServletResponse response) {
		String type = request.getParameter("type");
		int res = libManServiceImpl.SelTypeCountService(type);
		Gson gson = new Gson();
		String json = gson.toJson(res);
		return json;
	}

	/**
	 * | 通过图书id检索
	 * 
	 * @param request
	 * @param reaponse
	 * @param session
	 * @return
	 */
	@RequestMapping("selByBid")
	public String selByBid(HttpServletRequest request,
			HttpServletResponse reaponse, HttpSession session) {
		String bid = request.getParameter("bid");
		session.setAttribute("bid", bid);
		System.out.println("bid:" + session.getAttribute("bid"));
		return "redirect:library/libMan/BookInfo.jsp";
	}

	/**
	 * 通过学生sid 查询学生所有的借阅与预定信息
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("PersonalInfoB")
	@ResponseBody
	public String PersonalInfo(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		String sid = (String) session.getAttribute("sid");
		List<LibPersonalInfo> list = libManServiceImpl
				.selPersonalInfoBService(sid);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;
	}

	/**
	 * 预约
	 * 
	 * @param request
	 * @param response
	 * @param session
	 */
	@RequestMapping("LibManOrder")
	public String LibManOrder(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		String ssid = (String) session.getAttribute("sid");
		String sbid = (String) session.getAttribute("bid");
		int bid = Integer.parseInt(sbid);
		int sid = Integer.parseInt(ssid);
		Order order = new Order();
		order.setBid(bid);
		order.setSid(sid);
		int res = libManServiceImpl.orderService(order);
		return "redirect:library/libMan/LibOrder.jsp";
	}

	/**
	 * 用于显示退出登录
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("LibShowQuit")
	@ResponseBody
	public String LibShowQuit(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		String username = (String) session.getAttribute("sname");
		HashMap map = new HashMap();
		String msg = "error";
		map.put("msg", msg);
		if (null != username) {
			msg = "ok";
			map.put("msg", msg);
		}
		Gson gson = new Gson();
		String json = gson.toJson(map);
		return json;
	}

	/**
	 * 退出登录，session销毁
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("LibQuit")
	public String LibQuit(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		session.invalidate();
		return "redirect:library/libMan/LibLogin.jsp";
	}

	@RequestMapping("BorrowShu")
	@ResponseBody
	public String BorrowShu(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		String sid = (String) session.getAttribute("sid");
		int res = libManServiceImpl.borrowShu(sid);
		Gson gson = new Gson();
		String json = gson.toJson(res);
		return json;
	}

	/**
	 * 续借
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("LibManBorrow")
	public String LibManBorrow(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		String ssid = (String) session.getAttribute("sid");
		// System.out.println(ssid);
		String sbid = (String) session.getAttribute("bid");
		// String sbid=request.getParameter("bid");
		// System.out.println(sbid);
		int sid = Integer.parseInt(ssid);
		int bid = Integer.parseInt(sbid);
		Order order = new Order();
		order.setBid(bid);
		order.setSid(sid);
		// 判断是否超期
		int days = 0;
		LibPersonalInfo info = libManServiceImpl.selBorrwInfoService(order);
		if (info != null) {
			days = Integer.parseInt(info.getDays());
		}
		if (days < 0) {
			// days<0,说明当前图书没有超期，可以进行续借
			libManServiceImpl.borrowService(order);
			// 跳转到个人中心界面进行显示个人信息
		}
		return "redirect:library/libMan/LibPersonal.jsp";

	}

	/**
	 * 计算罚款
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("countFine")
	@ResponseBody
	public String countFine(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		// 获取学生id
		String sid = (String) session.getAttribute("sid");
		// System.out.println(libManServiceImpl.selPersonalInfoBService(sid));
		// 通过学生id查询出该生所有的借书信息
		List<LibPersonalInfo> list = libManServiceImpl
				.selPersonalInfoBService(sid);
		// 遍历循环得到每本书的单价和超出天数，并计算罚款
		for (LibPersonalInfo Info : list) {

			LibPersonalInfo libInfo = new LibPersonalInfo();
			// 单价
			String price = Info.getPrice();
			// 超出天数
			String sdays = Info.getDays();
			int days = Integer.parseInt(sdays);
			// 获取当前借阅记录的id
			int chid = Info.getChid();
			if (days > 0) {
				// 计算罚款
				CountFine fine = new CountFine();
				fine.setDays(days);
				fine.setPrice(price);
				double res = libManServiceImpl.countFineService(fine);
				fine.setFine(res);
				String chfine = String.valueOf(res);
				libInfo.setChfine(chfine);
				libInfo.setChid(chid);
				// 更新数据库中借阅表中相应的罚款信息
				libManServiceImpl.UpFineService(libInfo);
				//
				// System.out.println(list2);
				// System.out.println(res);
			}
			// System.out.println(Info.getChid());

		}
		// 查询出更新后的个人借阅信息
		List<LibPersonalInfo> list2 = libManServiceImpl
				.selPersonalInfoBService(sid);
		Gson gson = new Gson();
		String json = gson.toJson(list2);
		return json;

	}

	/**
	 * 用户所有预约信息
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("OrderPersonalInfo")
	@ResponseBody
	public String OrderPersonalInfo(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		String sid = (String) session.getAttribute("sid");
		List<LibPersonalInfo> list = libManServiceImpl
				.selOrderPersonalInfoService(sid);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;
	}

	/**
	 * 查询出所有的留言信息，并进行分页显示
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("sellAllComment")
	@ResponseBody
	public String sellAllComment(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		LibPage page = new LibPage();
		// 获取前台页面信息,cpage:当前页
		String cpage = request.getParameter("cpage");
		page.setCpage(cpage);
		// 设置分页条数
		page.setPageSize("4");
		List<LibComment> list = libManServiceImpl.selAllCommentServce(page);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		return json;
	}

	/**
	 * 计算出留言的总条数
	 * 
	 * @param response
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("selCommentCount")
	@ResponseBody
	public String selCommentCount(HttpServletResponse response,
			HttpServletRequest request, HttpSession session) {
		int res = libManServiceImpl.selCommentCountService();
		Gson gson = new Gson();
		String json = gson.toJson(res);
		return json;
	}

	@RequestMapping("addLY")
	@ResponseBody
	public HashMap addLY(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		// 获取前台页面的留言信息
		String message = request.getParameter("text");
		String sname = (String) session.getAttribute("sname");
		String ssno = (String) session.getAttribute("sid");
		HashMap map = new HashMap();
		String msg = "error";
		if (null == sname) {
			msg = "error";
			map.put("msg", msg);
		} else {
			// 添加留言信息
			LibLiuYan ly = new LibLiuYan();
			int sno = Integer.parseInt(ssno);
			ly.setSno(sno);
			ly.setMessage(message);
			int res = libManServiceImpl.addLyService(ly);
			if (res > 0) {
				msg = "ok";
				map.put("msg", msg);
			}
		}

		return map;
	}
}
