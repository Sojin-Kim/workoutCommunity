package com.workout.app.car.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.workout.app.car.model.service.CarService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/car")
public class CarController {
	
	@Autowired
	private CarService carService;

	//차량 조회 화면 호출
	@GetMapping("/carList.do")
	public String carList(Model model) {
		return "car/carList";
	}
	
	//차량 등록 화면 호출
	@GetMapping("/carForm.do")
	public String carForm(Model model) {
		return "car/carForm";
	}
	
}
