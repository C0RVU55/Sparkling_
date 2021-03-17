package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.AlarmService;

@Controller
@RequestMapping(value = "/mypage")
public class Mypage_buyController {

	@Autowired
	public AlarmService aS;

	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list() {
		
		System.out.println("[Alarm Ctrl]: list 진입");
		
		List<AlarmVo> aList = aS.list();
		
		return "";
		
	}

}
