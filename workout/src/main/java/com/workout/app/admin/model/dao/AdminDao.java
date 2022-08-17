package com.workout.app.admin.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.workout.app.admin.model.dto.Menu;

@Mapper
public interface AdminDao {

	List<Menu> selectAdminMenuList();

}
