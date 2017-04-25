package org.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lanqiao.po.Notice;
import org.springframework.stereotype.Repository;
@Repository
public interface INoticeMapper {
	/**
	 * 创建一条新公告
	 * @param po 插入数据的po对象
	 * @return 创建成功返回值大于0，否则等于0
	 * @throws Exception
	 */
	public Integer doCreate(Notice po)throws Exception;
	/**
	 * 分页显示全部公告信息
	 * @param lineSize 每页显示多少行
	 * @param pageSize 当前显示页
	 * @return 如果有数据则数据以List集合的形式返回，负责返回空
	 * @throws Exception
	 */
	public List<Notice> findAll(Integer line,Integer page)throws Exception;
	/**
	 * 获得全部数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCount()throws Exception;
	/**
	 * 把公告放入回收站
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doUpdate(String id)throws Exception;
	/**
	 * 把公告从回收站删除
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doDelete(String id)throws Exception;
	/**
	 * 把公告从回收站还原
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Integer doUpdateRestore(String id)throws Exception;
	/**
	 * 分页显示全部回收站公告信息
	 * @param lineSize 每页显示多少行
	 * @param pageSize 当前显示页
	 * @return 如果有数据则数据以List集合的形式返回，负责返回空
	 * @throws Exception
	 */
	public List<Notice> findAllPurge(Integer line,Integer page)throws Exception;
	/**
	 * 获得全部回收站公告数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCountPurge()throws Exception;
	/**
	 * 通过Id查询公告内容
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Notice findById(String id)throws Exception;
	/**
	 * 清空回收站
	 * @return
	 * @throws Exception
	 */
	public Integer emptyPurge()throws Exception;
}
