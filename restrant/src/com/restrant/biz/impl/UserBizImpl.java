package com.restrant.biz.impl;

import java.util.List;

import com.restrant.biz.UserBiz;
import com.restrant.dao.UserDAO;
import com.restrant.entity.Admin;
import com.restrant.entity.Users;

public class UserBizImpl implements UserBiz {

	UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public List login(Users condition) {
		return userDAO.search(condition);
	}

	//����û�
	@Override
	public void addUsers(Users users) {
		userDAO.addUsers(users);		
	}

	//����Ա��¼��֤
	@Override
	public List login(Admin condition) {
		return userDAO.search(condition);
	}

	//�޸ĸ�����Ϣ
	@Override
	public void modifyUsers(Users users) {
		userDAO.modifyUsers(users);
	}
}
