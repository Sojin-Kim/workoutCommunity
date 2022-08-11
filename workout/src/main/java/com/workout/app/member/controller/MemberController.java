package com.workout.app.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.workout.app.member.model.dto.Member;
import com.workout.app.member.model.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/memberList.do")
	public String memberList(Model model) {
		List<Member> member = memberService.selectMemberList();
		System.out.println(member);
		model.addAttribute("member",member);
		return "member/memberView";
	}
}
