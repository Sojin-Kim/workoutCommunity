package com.workout.app.member.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	private String userId;
	private String email;
	private String password;
	private String name;
	private String phoneNum;
	private String createdDate;

}
