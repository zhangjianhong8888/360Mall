package org.lanqiao.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.IDiscussBiz;
import org.lanqiao.dao.IDiscussMapper;
import org.springframework.stereotype.Service;
@Service
public class DiscussBizImpl implements IDiscussBiz {
	@Resource
	private IDiscussMapper iDiscussMapper;
	
	public IDiscussMapper getiDiscussMapper() {
		return iDiscussMapper;
	}

	public void setiDiscussMapper(IDiscussMapper iDiscussMapper) {
		this.iDiscussMapper = iDiscussMapper;
	}

	@Override
	public Map<String, Object> findAllFuzzy(Map<String,Object> map) {
		Map<String,Object> map1 = new HashMap<String,Object>();
		try {
			map1.put("allDiscuss",iDiscussMapper.findAll(map));
			map1.put("allCount", iDiscussMapper.getAllCount());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map1;
	}

	@Override
	public Integer addDiscussInfo(Map map) {
		
		return iDiscussMapper.addDiscussInfo(map);
	}

}
