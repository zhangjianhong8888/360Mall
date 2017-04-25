package org.lanqiao.dao;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Complain;

public interface IComplainMapper {
	
	/**
	 * 分页显示全部投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Complain> findAll(Integer line,Integer page)throws Exception;
	/**
	 * 获得全部数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllcount()throws Exception;
	/**
	 * 分页显示全部已处理投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Complain> findAllFinish(Integer line,Integer page)throws Exception;
	/**
	 * 获得全部已处理数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllcountFinish()throws Exception;
	/**
	 * 分页显示全部未处理投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Complain> findAllNoFinish(Integer line,Integer page)throws Exception;
	/**
	 * 获得全部未处理数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllcountNoFinish()throws Exception;
	/**
	 * 投诉处理
	 * @return
	 * @throws Exception
	 */
	public Integer doUpdateNoFinish(Complain po)throws Exception;
	/**
	 * 筛选全部投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Complain> lookUpDate(Map map)throws Exception;
	/**
	 * 筛选全部投诉记录数据量
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Integer lookUpDateCount(Map map)throws Exception;
	/**
	 * 筛选全部已处理投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Complain> lookUpDateFinish(Map map)throws Exception;
	/**
	 * 筛选全部已处理投诉记录数据量
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Integer lookUpDateCountFinish(Map map)throws Exception;
	/**
	 * 筛选全部未处理投诉记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Complain> lookUpDateNoFinish(Map map)throws Exception;
	/**
	 * 筛选全部未处理投诉记录数据量
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public Integer lookUpDateCountNoFinish(Map map)throws Exception;
	/**
	  * 添加投诉理由
	  */
    public Integer addComplainInfo(Map map);
	public List<Complain> findhuifuInfo(Map map);
	public Integer getAllHuiFuCount(Map map);
}
