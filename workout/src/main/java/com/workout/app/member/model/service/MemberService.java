package com.workout.app.member.model.service;

import java.util.List;

import com.workout.app.member.model.dto.Member;

public interface MemberService {

	List<Member> selectMemberList();

	Member selectOneMember(Member member);

}
