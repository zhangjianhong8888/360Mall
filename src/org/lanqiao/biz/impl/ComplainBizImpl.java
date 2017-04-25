package org.lanqiao.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.IComplainBiz;
import org.lanqiao.dao.IComplainMapper;
import org.lanqiao.po.Complain;
import org.springframework.stereotype.Service;
@Service
public class ComplainBizImpl implements IComplainBiz {
	@Resource
	private IComplainMapper iComplainMapper;
	
	
	public IComplainMapper getiComplainMapper() {
		return iComplainMapper;
	}


	public void setiComplainMapper(IComplainMapper iComplainMapper) {
		this.iComplainMapper = iComplainMapper;
	}


	@Override
	public Map<String,Object> findAll(Integer line,Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allComplain",iComplainMapper.findAll(line, page));
			map.put("allComplainCount", iComplainMapper.getAllcount());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}


	@Override
	public Map<String, Object> findAllFinish(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allComplainFinish",iComplainMapper.findAllFinish(line, page));
			map.put("allComplainCountFinish", iComplainMapper.getAllcountFinish());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}


	@Override
	public Map<String, Object> findAllNoFinish(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allComplainNoFinish",iComplainMapper.findAllNoFinish(line, page));
			map.put("allComplainCountNoFinish", iComplainMapper.getAllcountNoFinish());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}


	@Override
	public Integer doUpdateNoFinish(Complain po) {
		Integer res = null;
		try {
			res = iComplainMapper.doUpdateNoFinish(po);
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Map<String, Object> lookUpDate(Map map){
		Map<String,Object> map1 = new HashMap<String,Object>();
		try {
			map1.put("allComplainlookUpDate",iComplainMapper.lookUpDate(map));
			map1.put("allComplainCountlookUpDate", iComplainMapper.lookUpDateCount(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map1;
	}


	@Override
	public Map<String, Object> lookUpDateFinish(Map map){
		Map<String,Object> map1 = new HashMap<String,Object>();
		try {
			map1.put("allComplainlookUpDateFinish",iComplainMapper.lookUpDateFinish(map));
			map1.put("allComplainCountlookUpDateFinish", iComplainMapper.lookUpDateCountFinish(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map1;
	}


	@Override
	public Map<String, Object> lookUpDateNoFinish(Map map){
		Map<String,Object> map1 = new HashMap<String,Object>();
		try {
			map1.put("allComplainlookUpDateNoFinish",iComplainMapper.lookUpDateNoFinish(map));
			map1.put("allComplainCountlookUpDateNoFinish", iComplainMapper.lookUpDateCountNoFinish(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map1;
	}


	@Override
	public Integer addComplainInfo(Map map) {
		
		return iComplainMapper.addComplainInfo(map);
	}


	
	@Override
	public List<Complain> findhuifuInfo(Map map){
		return iComplainMapper.findhuifuInfo(map);
	}
	public Integer getAllHuiFuCount(Map map){
		return iComplainMapper.getAllHuiFuCount(map);
	}
	

}
