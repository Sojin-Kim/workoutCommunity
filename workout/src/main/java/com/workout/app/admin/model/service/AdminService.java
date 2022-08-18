package com.workout.app.admin.model.service;

import java.util.List;

import com.workout.app.admin.model.dto.Menu;

public interface AdminService {
	//관리자 메뉴 조회
	List<Menu> selectAdminMenuList();

}
