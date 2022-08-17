package com.workout.app.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.workout.app.admin.model.dao.AdminDao;
import com.workout.app.admin.model.dto.Menu;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<Menu> selectAdminMenuList() {
		return adminDao.selectAdminMenuList();
	}

}
