package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.po.UserInfo;

public interface IUserInfoMapper {

	/**
	 * 添加新用户
	 * @param userInfo
	 */
	public void addNewIUserInfo(UserInfo userInfo);
	
	/**
	 * 根据邮箱查找用户
	 * @param userInfo
	 * @return
	 */
	public UserInfo findUserInfoByEmail(UserInfo userInfo);
	
	/**
	 * 根据用户名查找用户
	 */
	public UserInfo findUserInfoByName(UserInfo userInfo);
	/**
	 * 根据密码和邮箱或者用户名登录
	 * @param userInfo
	 * @return
	 */
	public UserInfo findUserByPasswordAnduserNameOruserEmail(UserInfo userInfo);

	/**
	 * 查询全部用户信息
	 * @return
	 * @throws Exception
	 */
	public List<UserInfo> findAll(Integer line,Integer page)throws Exception;
	/**
	 * 查询全部数据量
	 * @return
	 * @throws Exception
	 */
	public Integer getAllCount()throws Exception;

	/**
	 * 查询订单总数量
	 */
	public int findAllCount(UserInfo userinfo);
	/**
	 * 修改个人信息
	 * @param po
	 * @return
	 */
	public Integer doUpdateInfo(UserInfo po);
	/**
	 * 修改个人密码
	 * @param userInfo
	 */
	public void updatePassword(UserInfo userInfo);

}
