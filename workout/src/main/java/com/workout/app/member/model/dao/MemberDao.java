package com.workout.app.member.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.workout.app.member.model.dto.Member;

@Mapper
public interface MemberDao {
	
	List<Member> selectMemberList();

	Member selectOneMember(Member member); 
}
