package com.workout.app.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.workout.app.admin.model.dto.Menu;
import com.workout.app.admin.model.service.AdminService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	//관리자 홈 화면 호출
	@GetMapping("/adminHome.do")
	public String adminHome(Model model) {
		List<Menu> menuList = adminService.selectAdminMenuList();  //관리자 메뉴 조회
		model.addAttribute("menuList",menuList);
		return "admin/adminHome";
	}
	
	
}
