package org.lanqiao.dao;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Discuss;


public interface IDiscussMapper {
	
	/**
	 * 查询全部评价信息
	 * @return
	 * @throws Exception
	 */
	public List<Discuss> findAll(Map<String,Object> map)throws Exception;
	/**
	 * 查询全部数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCount()throws Exception;
	/**
	 * 获取评论内容
	 */
	public Integer addDiscussInfo(Map map);
}
