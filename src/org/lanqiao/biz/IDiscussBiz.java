package org.lanqiao.biz;

import java.util.Map;

public interface IDiscussBiz {
	
	/**
	 * 分页显示全部评价信息
	 * @param line
	 * @param page
	 * @return
	 */
	public Map<String,Object> findAllFuzzy(Map<String,Object> map);
	/**
	 * 获取评价内容
	 */
	public Integer addDiscussInfo(Map map);
}
