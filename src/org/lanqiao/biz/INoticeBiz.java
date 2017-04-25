package org.lanqiao.biz;

import java.util.Map;

import org.lanqiao.po.Notice;

public interface INoticeBiz {
	
	public Integer add(Notice po);
	
	public Map<String,Object> fingAll(Integer line,Integer page);
	
	public Map<String,Object> fingAllPurge(Integer line,Integer page);
	/**
	 * 把公告放入回收站
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doUpdate(String id);
	/**
	 * 把公告从回收站删除
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doDelete(String id);
	/**
	 * 把公告从回收站还原
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doUpdateRestore(String id);
	
	public Notice findById(String id);
	/**
	 * 清空回收站
	 * @return
	 */
	public Integer emptyPurge();
}
