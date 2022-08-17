package com.workout.app.admin.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Menu {
	private String menuId;
	private String upperMenuId;
	private String menuName;
	private String menuLevel;
	private String menuPath;
	
}

