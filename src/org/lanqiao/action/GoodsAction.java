package org.lanqiao.action;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.lanqiao.biz.IGoodsBiz;

import org.lanqiao.po.Goods;
import org.lanqiao.tools.FileUploadUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class GoodsAction {
	@Resource
	private IGoodsBiz iGoodsBiz;

	public IGoodsBiz getiGoodsBiz() {
		return iGoodsBiz;
	}

	public void setiGoodsBiz(IGoodsBiz iGoodsBiz) {
		this.iGoodsBiz = iGoodsBiz;
	}
	@RequestMapping("/getShelvesInfo")
	public String getShelvesInfo(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iGoodsBiz.findShelvesAll(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCount")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allGoods") ){
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
		return "pages/back/admin/lookAddGoods.jsp";

	}
	@RequestMapping("/getShelvesInfoByColume")
	public String getShelvesInfoByColume(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize);
		String content = (String)request.getParameter("name");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("line", line);
		map.put("page", page);
		map.put("content", content);
		Map<String ,Object>  map1=new HashMap<String ,Object>();
		map1 = iGoodsBiz.fingfindShelvesByColume(map);
		Set<Map.Entry<String,Object>> set = map1.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountFuzzy")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allGoodsFuzzy") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);		
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("name",content);
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "pages/back/admin/lookAddGoods.jsp";
	}
	/**
	 * 通过id查找指定商品信息
	 * @param request
	 * @param po
	 * @return
	 */
	@RequestMapping("/fingById")
	public String fingById(HttpServletRequest request,Goods po){		
		Goods goods = iGoodsBiz.findById(po);				
		request.setAttribute("good",goods);
		request.getSession().setAttribute("photeAddress", goods.getGoosite());		
		return "pages/back/admin/updateGoods.jsp";
	}
	/**
	 * 商品下架
	 * @param request
	 * @return
	 */
	@RequestMapping("/soidOutGoods")
	public String soidOutGoods(HttpServletRequest request){
		String str = request.getParameter("goonum");
		Integer res = iGoodsBiz.doUpdateAndSoldOut(str);
		return "getShelvesInfo.action?pageSize=1";	
	}
	/**
	 * 上架新商品
	 * @param request
	 * @param po
	 * @param file
	 * @return
	 */
	@RequestMapping("/addGoods")
	public String addGoods(HttpServletRequest request,Goods po,MultipartFile file){		
		String str = FileUploadUtils.uploadFile(request, file);
		po.setGoosite(str);
		Integer res = iGoodsBiz.add(po);		
		return "redirect:getShelvesInfo.action?pageSize=1";
	}
	/**
	 * 修改上架商品信息
	 * @param request
	 * @param po
	 * @param file
	 * @return
	 */
	@RequestMapping("/updateGoods")
	public String updateGoods(HttpServletRequest request,Goods po,MultipartFile file){
		if(request.getSession().getAttribute("photeAddress").equals(request.getParameter("goosite"))){
			po.setGoosite((String)request.getSession().getAttribute("photeAddress"));
			Integer res = iGoodsBiz.doUpdateShelvesInfo(po);	
		}else{
			String str = FileUploadUtils.uploadFile(request, file);
			po.setGoosite(str);
			Integer res = iGoodsBiz.doUpdateShelvesInfo(po);
		}				
		return "getShelvesInfo.action?pageSize=1";
	}
	/**
	 * 分页显示全部下架商品
	 * @param request
	 * @return
	 */
	@RequestMapping("/getSoidOutInfo")
	public String getSoidOutInfo(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iGoodsBiz.findAllSoldOutSpilt(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountSoldOut")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allGoodsSoldOut") ){
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
		return "pages/back/admin/lookRemoveGoods.jsp";
	}
	/**
	 * 模糊分页显示全部下架商品
	 * @param request
	 * @return
	 */
	@RequestMapping("/getSoidOutFuzzyInfo")
	public String getSoidOutFuzzyInfo(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize);
		String content = (String)request.getParameter("name");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("line", line);
		map.put("page", page);
		map.put("content", content);
		Map<String ,Object>  map1=new HashMap<String ,Object>();
		map1 = iGoodsBiz.findAllSoldOutAndSpiltAndFuzz(map);
		Set<Map.Entry<String,Object>> set = map1.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountFuzzySoldOut")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allGoodsFuzzySoldOut") ){
				list = (List)me.getValue();
			}
		}  
		request.setAttribute("list", list);		
		if(count%lineSize==0){
			page=(count/lineSize);
		}else{
			page=(count/lineSize)+1; 
		}
		request.setAttribute("name",content);
		request.setAttribute("page", page);
		request.setAttribute("pSize",pageSize );
		return "pages/back/admin/lookRemoveGoods.jsp";
	}
	/**
	 * 删除已下架商品
	 * @param request
	 * @return
	 */
	@RequestMapping("/doRemove")
	public String doRemove(HttpServletRequest request){
		String id = request.getParameter("goonum");
		Integer res = iGoodsBiz.delete(id);
		return "getSoidOutInfo.action?pageSize=1";				
	}
	/**
	 * 重新上架已下架商品
	 * @param request
	 * @return
	 */
	@RequestMapping("/doAgainUpdate")
	public String doAgainUpdate(HttpServletRequest request){
		String id = request.getParameter("goonum");
		Integer res = iGoodsBiz.againUpdate(id);
		return "getSoidOutInfo.action?pageSize=1";	
	}
	/**
	 * 查询回收站全部下架商品并分页显示
	 * @param request
	 * @return
	 */
	@RequestMapping("/getShelvesInfoPurge")
	public String getShelvesInfoPurge(HttpServletRequest request){
		Integer lineSize = 5;
		Integer pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Integer line = (lineSize*pageSize);
		Integer page = ((pageSize-1)*lineSize)	;	
		Map<String ,Object>  map=new HashMap<String ,Object>();
		map = iGoodsBiz.findAllSoldOutSpiltPurge(line, page);
		Set<Map.Entry<String,Object>> set = map.entrySet();
		Iterator<Map.Entry<String,Object>> it = set.iterator();
		List<Goods> list = null;
		Integer count = 0;
		while(it.hasNext()){
			Map.Entry<String,Object> me = it.next();
			if(me.getKey().equals("allCountSoldOutPurge")){
				count = (Integer)me.getValue();
				request.setAttribute("count", count);		
			}if(me.getKey().equals("allGoodsSoldOutPurge") ){
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
		System.out.println(map.size());		
		return "pages/back/admin/lookRemoveGoodsInPurge.jsp";
	}
	/**
	 * 从回收站删除下架商品
	 * @param request
	 * @return
	 */
	@RequestMapping("/doRemovePurge")
	public String doRemovePurge(HttpServletRequest request){
		String id = request.getParameter("goonum");
		Integer res = iGoodsBiz.deletePurge(id);
		return "getShelvesInfoPurge.action?pageSize=1";	
	}
	/**
	 * 从回收站还原下架商品
	 * @param request
	 * @return
	 */
	@RequestMapping("/doAgainUpdatePurge")
	public String doAgainUpdatePurge(HttpServletRequest request){
		String id = request.getParameter("goonum");
		Integer res = iGoodsBiz.restorePurge(id);
		return "getShelvesInfoPurge.action?pageSize=1";	
	}
}
