package com.javaex.vo;

public class AlarmVo {

	private int alarm_no;
	private int from_user_no;
	private int to_user_no;
	private String alarm_content;
	private String sell_type;
	private String alarm_date;

	private String prod_name;

	private int user_no;

	public AlarmVo() {
		super();
	}

	public AlarmVo(int alarm_no, int from_user_no, int to_user_no, String alarm_content, String sell_type,
			String alarm_date, String prod_name, int user_no) {
		super();
		this.alarm_no = alarm_no;
		this.from_user_no = from_user_no;
		this.to_user_no = to_user_no;
		this.alarm_content = alarm_content;
		this.sell_type = sell_type;
		this.alarm_date = alarm_date;
		this.prod_name = prod_name;
		this.user_no = user_no;
	}

	public int getAlarm_no() {
		return alarm_no;
	}

	public void setAlarm_no(int alarm_no) {
		this.alarm_no = alarm_no;
	}

	public int getFrom_user_no() {
		return from_user_no;
	}

	public void setFrom_user_no(int from_user_no) {
		this.from_user_no = from_user_no;
	}

	public int getTo_user_no() {
		return to_user_no;
	}

	public void setTo_user_no(int to_user_no) {
		this.to_user_no = to_user_no;
	}

	public String getAlarm_content() {
		return alarm_content;
	}

	public void setAlarm_content(String alarm_content) {
		this.alarm_content = alarm_content;
	}

	public String getSell_type() {
		return sell_type;
	}

	public void setSell_type(String sell_type) {
		this.sell_type = sell_type;
	}

	public String getAlarm_date() {
		return alarm_date;
	}

	public void setAlarm_date(String alarm_date) {
		this.alarm_date = alarm_date;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	@Override
	public String toString() {
		return "AlarmVo [alarm_no=" + alarm_no + ", from_user_no=" + from_user_no + ", to_user_no=" + to_user_no
				+ ", alarm_content=" + alarm_content + ", sell_type=" + sell_type + ", alarm_date=" + alarm_date
				+ ", prod_name=" + prod_name + ", user_no=" + user_no + "]";
	}

}