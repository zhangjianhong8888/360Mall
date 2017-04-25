package org.lanqiao.dao;

import java.util.List;
import java.util.Map;

import org.lanqiao.po.Goods;
import org.springframework.stereotype.Repository;
@Repository
public interface IGoodsMapper {
	/**
	 * 分页显示全部上架商品
	 * @return
	 * @throws Exception
	 */
	public List<Goods> findShelvesAll(Integer line,Integer page)throws Exception;
	/**
	 * 模糊分页显示全部上架商品
	 * @param line
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public List<Goods> fingfindShelvesByColume(Map map)throws Exception;
	/**
	 * 返回全部上架商品的数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCount()throws Exception;
	/**
	 * 返回模糊查询的全部上架商品的数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountFuzzy(Map map)throws Exception;
	/**
	 * 商品下架
	 * @param po
	 * @return
	 * @throws Exception
	 */
	public Integer doUpdateAndSoldOut(String id)throws Exception;
	/**
	 * 通过Id查找指定商品
	 * @param po
	 * @return
	 * @throws Exception
	 */
	public Goods findById(Goods po)throws Exception;
	/**
	 * 通过id修改上架商品信息
	 * @param po
	 * @return
	 * @throws Exception
	 */
	public Integer doUpdateShelvesInfo(Goods po)throws Exception;
	/**
	 * 查看全部下架商品并分页显示
	 * @return
	 * @throws Exception
	 */
	public List<Goods> findAllSoldOut(Integer line,Integer page)throws Exception;
	/**
	 * 模糊分页显示全部下架商品
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public List<Goods> fingfindSoldOutByColume(Map map)throws Exception;
	/**
	 * 返回全部下架商品数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllSoidOutCount()throws Exception;
	/**
	 * 返回模糊查询的全部下架商品的数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllSoidOutCountFuzzy(Map map)throws Exception;
	/**
	 * 上架新商品
	 * @param po
	 * @return
	 * @throws Exception
	 */
	public Integer doCreate(Goods po)throws Exception;
	/**
	 * 删除下架商品
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doDelete(String id)throws Exception;
	/**
	 * 重新上架已下架商品
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer againDoUpdate(String id)throws Exception;
	/**
	 * 查看回收站全部下架商品并分页显示
	 * @return
	 * @throws Exception
	 */
	public List<Goods> findAllSoldOutPurge(Integer line,Integer page)throws Exception;
	/**
	 * 返回全部回收站下架商品数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllSoidOutCountPurge()throws Exception;
	/**
	 * 从回收站删除下架商品
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doDeletePurge(String id)throws Exception;
	/**
	 * 从回收站还原下架商品
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer againDoUpdatePurge(String id)throws Exception;
	/**
	 * 清空回收站
	 * @return
	 * @throws Exception
	 */
	public Integer emptyPurge()throws Exception;
}
