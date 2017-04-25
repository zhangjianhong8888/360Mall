package org.lanqiao.biz;

import java.util.Map;

import org.lanqiao.po.UserInfo;

public interface IUserInfoBiz {

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
	 * 分页显示全部用户信息
	 * @param line
	 * @param page
	 * @return
	 */
	public Map<String,Object> findAllFuzzy(Integer line,Integer page);
	

	/**
	 * 查询订单总数
	 */
	public int findAllCount(UserInfo userInfo);
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
