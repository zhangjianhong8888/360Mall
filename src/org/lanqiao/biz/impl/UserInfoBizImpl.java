package org.lanqiao.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.IUserInfoBiz;
import org.lanqiao.dao.IUserInfoMapper;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Service;

@Service
public class UserInfoBizImpl implements IUserInfoBiz {

	@Resource
	private IUserInfoMapper iuim;
	
	@Override
	public void addNewIUserInfo(UserInfo userInfo) {
		iuim.addNewIUserInfo(userInfo);
	}
	
	@Override
	public UserInfo findUserInfoByEmail(UserInfo userInfo) {
		return iuim.findUserInfoByEmail(userInfo);
	}
	@Override
	public UserInfo findUserInfoByName(UserInfo userInfo) {
		
		return iuim.findUserInfoByName(userInfo);
	}

	public IUserInfoMapper getIuim() {
		return iuim;
	}

	public void setIuim(IUserInfoMapper iuim) {
		this.iuim = iuim;
	}
	@Override
	public UserInfo findUserByPasswordAnduserNameOruserEmail(UserInfo userInfo){
	 return iuim.findUserByPasswordAnduserNameOruserEmail(userInfo);

	}

	@Override
	public Map<String, Object> findAllFuzzy(Integer line, Integer page) {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("allUserInfo",iuim.findAll(line, page));
			map.put("allCount", iuim.getAllCount());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;

	}

	@Override
	public int findAllCount(UserInfo userInfo) {
		
		return iuim.findAllCount(userInfo);

	}

	@Override
	public Integer doUpdateInfo(UserInfo po) {
		return iuim.doUpdateInfo(po);
	}

	@Override
	public void updatePassword(UserInfo userInfo) {
		iuim.updatePassword(userInfo);
	}       
	
}
