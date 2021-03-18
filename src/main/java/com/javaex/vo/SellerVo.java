package com.javaex.vo;

public class SellerVo {
	
	private int sell_no;
	private int user_no;
	private String sell_type;
	private String sell_name;
	private int business_no;
	private String sell_address;
	private int sell_account;
	private String sell_bank;
	
	
	public SellerVo() {}


	public SellerVo(int sell_no, int user_no, String sell_type, String sell_name, int business_no, String sell_address,
			int sell_account, String sell_bank) {
		super();
		this.sell_no = sell_no;
		this.user_no = user_no;
		this.sell_type = sell_type;
		this.sell_name = sell_name;
		this.business_no = business_no;
		this.sell_address = sell_address;
		this.sell_account = sell_account;
		this.sell_bank = sell_bank;
	}


	public int getSell_no() {
		return sell_no;
	}


	public void setSell_no(int sell_no) {
		this.sell_no = sell_no;
	}


	public int getUser_no() {
		return user_no;
	}


	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}


	public String getSell_type() {
		return sell_type;
	}


	public void setSell_type(String sell_type) {
		this.sell_type = sell_type;
	}


	public String getSell_name() {
		return sell_name;
	}


	public void setSell_name(String sell_name) {
		this.sell_name = sell_name;
	}


	public int getBusiness_no() {
		return business_no;
	}


	public void setBusiness_no(int business_no) {
		this.business_no = business_no;
	}


	public String getSell_address() {
		return sell_address;
	}


	public void setSell_address(String sell_address) {
		this.sell_address = sell_address;
	}


	public int getSell_account() {
		return sell_account;
	}


	public void setSell_account(int sell_account) {
		this.sell_account = sell_account;
	}


	public String getSell_bank() {
		return sell_bank;
	}


	public void setSell_bank(String sell_bank) {
		this.sell_bank = sell_bank;
	}


	@Override
	public String toString() {
		return "SellerVo [sell_no=" + sell_no + ", user_no=" + user_no + ", sell_type=" + sell_type + ", sell_name="
				+ sell_name + ", business_no=" + business_no + ", sell_address=" + sell_address + ", sell_account="
				+ sell_account + ", sell_bank=" + sell_bank + "]";
	}
	
	
	

}
