package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.AlarmDao;
import com.javaex.vo.AlarmVo;

@Service
public class AlarmService {

	@Autowired
	private AlarmDao aDao;

	public List<AlarmVo> list() {

		System.out.println("[Alarm Service]: list() 연결");

		return aDao.selectList();
	}

}
