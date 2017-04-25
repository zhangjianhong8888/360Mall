package org.lanqiao.biz;


import java.util.Map;

import org.lanqiao.po.Goods;

public interface IGoodsBiz {
	
	public Map<String,Object> findShelvesAll(Integer line,Integer page);
	
	public Map<String,Object> fingfindShelvesByColume(Map map);
	/**
	 * 商品下架
	 * @param po
	 * @return
	 */
	public Integer doUpdateAndSoldOut(String id);
	/**
	 * 通过id查找指定商品信息
	 * @param po
	 * @return
	 */
	public Goods findById(Goods po);
	/**
	 * 通过id修改上架商品信息
	 * @param po
	 * @return
	 */
	public Integer doUpdateShelvesInfo(Goods po);
	/**
	 * 模糊分页查询全部下架商品并分页显示
	 * @param map
	 * @return
	 */
	public Map<String,Object> findAllSoldOutAndSpiltAndFuzz(Map map);
	/**
	 * 查询全部下架商品并分页显示
	 * @param line
	 * @param page
	 * @return
	 */
	public Map<String,Object> findAllSoldOutSpilt(Integer line,Integer page);
	/**
	 * 上架新商品
	 * @param po
	 * @return
	 */
	public Integer add(Goods po);
	/**
	 * 删除已下架商品
	 * @param id
	 * @return
	 */
	public Integer delete(String id);
	/**
	 * 重新上架已下架商品
	 * @param id
	 * @return
	 */
	public Integer againUpdate(String id);
	/**
	 * 查询回收站全部下架商品并分页显示
	 * @param line
	 * @param page
	 * @return
	 */
	public Map<String,Object> findAllSoldOutSpiltPurge(Integer line,Integer page);
	/**
	 * 从回收站还原下架商品
	 * @param po
	 * @return
	 */
	public Integer restorePurge(String id);
	/**
	 * 从回收站删除下架商品
	 * @param id
	 * @return
	 */
	public Integer deletePurge(String id);
	/**
	 * 清空回收站
	 * @return
	 */
	public Integer emptyPurge();
	
	

}
