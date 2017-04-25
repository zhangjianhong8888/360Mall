package org.lanqiao.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.INoticeBiz;
import org.lanqiao.dao.INoticeMapper;
import org.lanqiao.po.Notice;
import org.springframework.stereotype.Service;
@Service
public class NoticeBizImpl implements INoticeBiz {
	@Resource
	private INoticeMapper iNoticeMapper;
	
	public INoticeMapper getiNoticeMapper() {
		return iNoticeMapper;
	}

	public void setiNoticeMapper(INoticeMapper iNoticeMapper) {
		this.iNoticeMapper = iNoticeMapper;
	}

	@Override
	public Integer add(Notice po) {
		int res = 0;
		try {
			res = iNoticeMapper.doCreate(po);
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Map<String, Object> fingAll(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allNotice",iNoticeMapper.findAll(line, page));
			map.put("allCount", iNoticeMapper.getAllCount());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	@Override
	public Map<String, Object> fingAllPurge(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allNoticePurge",iNoticeMapper.findAllPurge(line, page));
			map.put("allCountPurge", iNoticeMapper.getAllCountPurge());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	@Override
	public Integer doUpdate(String id) {
		int res = 0;
		try {
			res = iNoticeMapper.doUpdate(id);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Integer doDelete(String id) {
		int res = 0;
		try {
			res = iNoticeMapper.doDelete(id);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Integer doUpdateRestore(String id) {
		int res = 0;
		try {
			res = iNoticeMapper.doUpdateRestore(id);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Notice findById(String id) {
		Notice notice = null;
		try {
			notice = iNoticeMapper.findById(id);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return notice;
	}

	@Override
	public Integer emptyPurge() {
		int res = 0;
		try {
			res = iNoticeMapper.emptyPurge();		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

}
