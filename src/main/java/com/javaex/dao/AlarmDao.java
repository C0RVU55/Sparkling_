package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.AlarmVo;

@Repository
public class AlarmDao {

	@Autowired
	private SqlSession sql;

	public List<AlarmVo> selectList() {

		System.out.println("[Alarm Dao]: selectList() 실행");

		List<AlarmVo> aList = sql.selectList("alarm.selectAlarm");

		System.out.println("[Alarm Dao]: " + aList.toString());

		return aList;

	}

}
