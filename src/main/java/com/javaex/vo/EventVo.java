package com.javaex.vo;

public class EventVo {
	//주종목 (주특기 + 경력)
	private int eventNo;
	private int profileNo;
	private int eventName; //주종목 이름
	private String eventClass;//체급 이름
	
	
	public EventVo() {
		
	}


	public EventVo(int eventNo, int profileNo, int eventName, String eventClass) {
		
		this.eventNo = eventNo;
		this.profileNo = profileNo;
		this.eventName = eventName;
		this.eventClass = eventClass;
	}


	public int getEventNo() {
		return eventNo;
	}


	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}


	public int getProfileNo() {
		return profileNo;
	}


	public void setProfileNo(int profileNo) {
		this.profileNo = profileNo;
	}


	public int getEventName() {
		return eventName;
	}


	public void setEventName(int eventName) {
		this.eventName = eventName;
	}


	public String getEventClass() {
		return eventClass;
	}


	public void setEventClass(String eventClass) {
		this.eventClass = eventClass;
	}


	@Override
	public String toString() {
		return "EventVo [eventNo=" + eventNo + ", profileNo=" + profileNo + ", eventName=" + eventName + ", eventClass="
				+ eventClass + "]";
	}
	
	
	
}
