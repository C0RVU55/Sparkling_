package com.javaex.vo;

public class RecordVo {
	
	private int recordNo; //공식기록번호
	private int profileNo; //프로필번호
	private String recordType; //대회분류
	private String recordName; //대회명
	private String recordEvent; //종목명
	private String recordDate; //출전연도
	private String recordMatch; //매치방식(일반,타이틀)
	
	
	public RecordVo() {
		super();
	}


	public RecordVo(int recordNo, int profileNo, String recordType, String recordName, String recordEvent,
			String recordDate, String recordMatch) {
		
		this.recordNo = recordNo;
		this.profileNo = profileNo;
		this.recordType = recordType;
		this.recordName = recordName;
		this.recordEvent = recordEvent;
		this.recordDate = recordDate;
		this.recordMatch = recordMatch;
	}


	public int getRecordNo() {
		return recordNo;
	}


	public void setRecordNo(int recordNo) {
		this.recordNo = recordNo;
	}


	public int getProfileNo() {
		return profileNo;
	}


	public void setProfileNo(int profileNo) {
		this.profileNo = profileNo;
	}


	public String getRecordType() {
		return recordType;
	}


	public void setRecordType(String recordType) {
		this.recordType = recordType;
	}


	public String getRecordName() {
		return recordName;
	}


	public void setRecordName(String recordName) {
		this.recordName = recordName;
	}


	public String getRecordEvent() {
		return recordEvent;
	}


	public void setRecordEvent(String recordEvent) {
		this.recordEvent = recordEvent;
	}


	public String getRecordDate() {
		return recordDate;
	}


	public void setRecordDate(String recordDate) {
		this.recordDate = recordDate;
	}


	public String getRecordMatch() {
		return recordMatch;
	}


	public void setRecordMatch(String recordMatch) {
		this.recordMatch = recordMatch;
	}


	@Override
	public String toString() {
		return "RecordVo [recordNo=" + recordNo + ", profileNo=" + profileNo + ", recordType=" + recordType
				+ ", recordName=" + recordName + ", recordEvent=" + recordEvent + ", recordDate=" + recordDate
				+ ", recordMatch=" + recordMatch + "]";
	}
	
	
	
	
}
