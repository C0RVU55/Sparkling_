package com.javaex.vo;

public class BuyVo {
	
	private int buy_no;
	private String prod_no;
	private int user_no;
	private int colorsize_no;
	private int count;
	private String buy_address;
	private int buy_ph;
	private String buy_delivery;
	private int buy_del_no;
	private String buy_del_state;
	private String buy_date;
	private String buy_paytype;
	private int buy_price;
	private String buy_state;
	
	public BuyVo() {}

	public BuyVo(int buy_no, String prod_no, int user_no, int colorsize_no, int count, String buy_address, int buy_ph,
			String buy_delivery, int buy_del_no, String buy_del_state, String buy_date, String buy_paytype,
			int buy_price, String buy_state) {
		super();
		this.buy_no = buy_no;
		this.prod_no = prod_no;
		this.user_no = user_no;
		this.colorsize_no = colorsize_no;
		this.count = count;
		this.buy_address = buy_address;
		this.buy_ph = buy_ph;
		this.buy_delivery = buy_delivery;
		this.buy_del_no = buy_del_no;
		this.buy_del_state = buy_del_state;
		this.buy_date = buy_date;
		this.buy_paytype = buy_paytype;
		this.buy_price = buy_price;
		this.buy_state = buy_state;
	}

	public int getBuy_no() {
		return buy_no;
	}

	public void setBuy_no(int buy_no) {
		this.buy_no = buy_no;
	}

	public String getProd_no() {
		return prod_no;
	}

	public void setProd_no(String prod_no) {
		this.prod_no = prod_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getColorsize_no() {
		return colorsize_no;
	}

	public void setColorsize_no(int colorsize_no) {
		this.colorsize_no = colorsize_no;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getBuy_address() {
		return buy_address;
	}

	public void setBuy_address(String buy_address) {
		this.buy_address = buy_address;
	}

	public int getBuy_ph() {
		return buy_ph;
	}

	public void setBuy_ph(int buy_ph) {
		this.buy_ph = buy_ph;
	}

	public String getBuy_delivery() {
		return buy_delivery;
	}

	public void setBuy_delivery(String buy_delivery) {
		this.buy_delivery = buy_delivery;
	}

	public int getBuy_del_no() {
		return buy_del_no;
	}

	public void setBuy_del_no(int buy_del_no) {
		this.buy_del_no = buy_del_no;
	}

	public String getBuy_del_state() {
		return buy_del_state;
	}

	public void setBuy_del_state(String buy_del_state) {
		this.buy_del_state = buy_del_state;
	}

	public String getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}

	public String getBuy_paytype() {
		return buy_paytype;
	}

	public void setBuy_paytype(String buy_paytype) {
		this.buy_paytype = buy_paytype;
	}

	public int getBuy_price() {
		return buy_price;
	}

	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}

	public String getBuy_state() {
		return buy_state;
	}

	public void setBuy_state(String buy_state) {
		this.buy_state = buy_state;
	}

	@Override
	public String toString() {
		return "BuyVo [buy_no=" + buy_no + ", prod_no=" + prod_no + ", user_no=" + user_no + ", colorsize_no="
				+ colorsize_no + ", count=" + count + ", buy_address=" + buy_address + ", buy_ph=" + buy_ph
				+ ", buy_delivery=" + buy_delivery + ", buy_del_no=" + buy_del_no + ", buy_del_state=" + buy_del_state
				+ ", buy_date=" + buy_date + ", buy_paytype=" + buy_paytype + ", buy_price=" + buy_price
				+ ", buy_state=" + buy_state + "]";
	}
	
	

}
