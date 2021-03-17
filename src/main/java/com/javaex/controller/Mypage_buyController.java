package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.AlarmService;
import com.javaex.vo.AlarmVo;

@Controller
@RequestMapping(value = "/mypage")
public class Mypage_buyController {

	@Autowired
	public AlarmService aS;

	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {

		System.out.println("[Alarm Ctrl]: list 진입");

		List<AlarmVo> aList = aS.list();

		System.out.println("[Alarm Ctrl]: " + aList.toString());

		model.addAttribute("AlarmList", aList);

		return "mypage/mypage_buy/alarm";

	}

}
