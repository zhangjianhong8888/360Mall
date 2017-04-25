package org.lanqiao.biz;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Complain;

public interface IComplainBiz {
	/**
	 * 分页显示全部投诉记录
	 * @param map
	 * @return
	 */
	public Map<String,Object> findAll(Integer line,Integer page);
	/**
	 * 分页显示全部已处理投诉记录
	 * @param map
	 * @return
	 */
	public Map<String,Object> findAllFinish(Integer line,Integer page);
	/**
	 * 分页显示全部未处理投诉记录
	 * @param map
	 * @return
	 */
	public Map<String,Object> findAllNoFinish(Integer line,Integer page);
	/**
	 * 投诉处理
	 * @param po
	 * @return
	 */
	public Integer doUpdateNoFinish(Complain po);
	/**
	 * 筛选全部投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	
	public Map<String,Object> lookUpDate(Map map);
	
	/**
	 * 筛选全部已处理投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> lookUpDateFinish(Map map);
	
	/**
	 * 筛选全部未处理投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Map<String,Object> lookUpDateNoFinish(Map map);
	/**
	 * 添加投诉理由
	 */
	public Integer addComplainInfo(Map map);
	
	public List<Complain> findhuifuInfo(Map map);
	public Integer getAllHuiFuCount(Map map);
	
}
