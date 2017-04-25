package org.lanqiao.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.IGoodsBiz;
import org.lanqiao.dao.IGoodsMapper;
import org.lanqiao.po.Goods;
import org.springframework.stereotype.Service;
@Service
public class GoodsBizImpl implements IGoodsBiz {
	@Resource
	private IGoodsMapper iGoodsMapper;
	
	
	public IGoodsMapper getiGoodsMapper() {
		return iGoodsMapper;
	}


	public void setiGoodsMapper(IGoodsMapper iGoodsMapper) {
		this.iGoodsMapper = iGoodsMapper;
	}


	@Override
	public Map<String, Object> findShelvesAll(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allGoods",iGoodsMapper.findShelvesAll(line, page));
			map.put("allCount", iGoodsMapper.getAllCount());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}


	@Override
	public Map<String,Object> fingfindShelvesByColume(Map map) {
		Map<String,Object> map1 = new HashMap<String,Object>();
		try {
			map1.put("allGoodsFuzzy",iGoodsMapper.fingfindShelvesByColume(map));
			map1.put("allCountFuzzy", iGoodsMapper.getAllCountFuzzy(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map1;
	}


	@Override
	public Integer doUpdateAndSoldOut(String id) {
		int res = 0;
		try {
			res = iGoodsMapper.doUpdateAndSoldOut(id);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Goods findById(Goods po) {
		Goods goods = null;
		try {
			goods = iGoodsMapper.findById(po);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return goods;
	}


	@Override
	public Integer doUpdateShelvesInfo(Goods po) {
		int res = 0;
		try {
			res = iGoodsMapper.doUpdateShelvesInfo(po);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Map<String, Object> findAllSoldOutAndSpiltAndFuzz(Map map) {
		Map<String,Object> map1 = new HashMap<String,Object>();
		try {
			map1.put("allGoodsFuzzySoldOut",iGoodsMapper.fingfindSoldOutByColume(map));
			map1.put("allCountFuzzySoldOut", iGoodsMapper.getAllSoidOutCountFuzzy(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map1;
	}


	@Override
	public Map<String, Object> findAllSoldOutSpilt(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allGoodsSoldOut",iGoodsMapper.findAllSoldOut(line, page));
			map.put("allCountSoldOut", iGoodsMapper.getAllSoidOutCount());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}


	@Override
	public Integer add(Goods po) {
		int res = 0;
		try {
			res = iGoodsMapper.doCreate(po);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Integer delete(String id) {
		int res = 0;
		try {
			res = iGoodsMapper.doDelete(id);	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Integer againUpdate(String id) {
		int res = 0;
		try {
			res = iGoodsMapper.againDoUpdate(id);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Map<String, Object> findAllSoldOutSpiltPurge(Integer line,
			Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allGoodsSoldOutPurge",iGoodsMapper.findAllSoldOutPurge(line, page));
			map.put("allCountSoldOutPurge", iGoodsMapper.getAllSoidOutCountPurge());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}


	@Override
	public Integer restorePurge(String id) {
		int res = 0;
		try {
			res = iGoodsMapper.againDoUpdatePurge(id);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Integer deletePurge(String id) {
		int res = 0;
		try {
			res = iGoodsMapper.doDeletePurge(id);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public Integer emptyPurge() {
		int res = 0;
		try {
			res = iGoodsMapper.emptyPurge();		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}	
}
