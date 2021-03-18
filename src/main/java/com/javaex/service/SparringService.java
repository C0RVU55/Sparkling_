package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.SparringDao;
import com.javaex.vo.ProfileVo;

@Service
public class SparringService {
	
	@Autowired
	SparringDao sparringDao;
	public void profileWrite(ProfileVo profileVo) {
		System.out.println("[Service] : profileWrite()");
		
		sparringDao.insertProfile(profileVo);
		
	}
}
