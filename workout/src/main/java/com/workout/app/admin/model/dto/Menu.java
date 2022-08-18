package com.workout.app.admin.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Menu {
	private String menuId;	 	/* 메뉴ID */
	private String upperMenuId; /* 상위메뉴ID */
	private String menuName;    /* 메뉴이름 */
	private String menuLevel;   /* 메뉴레벨 */
	private String menuPath;    /* 메뉴경로 */
	
}

