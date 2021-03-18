package com.javaex.vo;

public class ProfileVo {
	private int profileNo; 
	private int userNo;
	private int height;
	private int weight;
	private String career; //경력
	private String major;	//전공
	private int exp;	//스파링경험
	private int profileDate; //등록일자
	private String recentlyExer; //최근운동내역
	private String word;	//상대에게 한마디
	private String day;  	//원하는 날짜 대관x
	private String time;	//원하는 시간 대관x
	private String address;	//원하는 장소 대관 x
	
	//체육관 종목 
	private String profileGymEvent;

	public ProfileVo(int profileNo, int userNo, int height, int weight, String career, String major, int exp,
			int profileDate, String recentlyExer, String word, String day, String time, String address,
			String profileGymEvent) {
		super();
		this.profileNo = profileNo;
		this.userNo = userNo;
		this.height = height;
		this.weight = weight;
		this.career = career;
		this.major = major;
		this.exp = exp;
		this.profileDate = profileDate;
		this.recentlyExer = recentlyExer;
		this.word = word;
		this.day = day;
		this.time = time;
		this.address = address;
		this.profileGymEvent = profileGymEvent;
	}

	public ProfileVo() {
		
	}

	public int getProfileNo() {
		return profileNo;
	}

	public void setProfileNo(int profileNo) {
		this.profileNo = profileNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public int getProfileDate() {
		return profileDate;
	}

	public void setProfileDate(int profileDate) {
		this.profileDate = profileDate;
	}

	public String getRecentlyExer() {
		return recentlyExer;
	}

	public void setRecentlyExer(String recentlyExer) {
		this.recentlyExer = recentlyExer;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProfileGymEvent() {
		return profileGymEvent;
	}

	public void setProfileGymEvent(String profileGymEvent) {
		this.profileGymEvent = profileGymEvent;
	}

	@Override
	public String toString() {
		return "ProfileVo [profileNo=" + profileNo + ", userNo=" + userNo + ", height=" + height + ", weight=" + weight
				+ ", career=" + career + ", major=" + major + ", exp=" + exp + ", profileDate=" + profileDate
				+ ", recentlyExer=" + recentlyExer + ", word=" + word + ", day=" + day + ", time=" + time + ", address="
				+ address + ", profileGymEvent=" + profileGymEvent + "]";
	}
	
	
	
	
}
