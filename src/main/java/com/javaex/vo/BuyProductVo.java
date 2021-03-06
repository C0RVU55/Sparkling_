package com.javaex.vo;

public class BuyProductVo {

	private int buyprod_no;
	private String prod_no;
	private int colorsize_no;
	private int buy_del_no;
	private String buy_delivery;
	private String buy_del_state;
	private int count;
	private int buy_no;
	private int buyprod_price;
	private String prod_name;
	private int stock;
	private int sell_no;
	private int user_no;

	public BuyProductVo() {
		super();
	}

	public BuyProductVo(int buyprod_no, String prod_no, int colorsize_no, int buy_del_no, String buy_delivery,
			String buy_del_state, int count, int buy_no, int buyprod_price, String prod_name, int stock, int sell_no,
			int user_no) {
		super();
		this.buyprod_no = buyprod_no;
		this.prod_no = prod_no;
		this.colorsize_no = colorsize_no;
		this.buy_del_no = buy_del_no;
		this.buy_delivery = buy_delivery;
		this.buy_del_state = buy_del_state;
		this.count = count;
		this.buy_no = buy_no;
		this.buyprod_price = buyprod_price;
		this.prod_name = prod_name;
		this.stock = stock;
		this.sell_no = sell_no;
		this.user_no = user_no;
	}

	public int getBuyprod_no() {
		return buyprod_no;
	}

	public void setBuyprod_no(int buyprod_no) {
		this.buyprod_no = buyprod_no;
	}

	public String getProd_no() {
		return prod_no;
	}

	public void setProd_no(String prod_no) {
		this.prod_no = prod_no;
	}

	public int getColorsize_no() {
		return colorsize_no;
	}

	public void setColorsize_no(int colorsize_no) {
		this.colorsize_no = colorsize_no;
	}

	public int getBuy_del_no() {
		return buy_del_no;
	}

	public void setBuy_del_no(int buy_del_no) {
		this.buy_del_no = buy_del_no;
	}

	public String getBuy_delivery() {
		return buy_delivery;
	}

	public void setBuy_delivery(String buy_delivery) {
		this.buy_delivery = buy_delivery;
	}

	public String getBuy_del_state() {
		return buy_del_state;
	}

	public void setBuy_del_state(String buy_del_state) {
		this.buy_del_state = buy_del_state;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getBuy_no() {
		return buy_no;
	}

	public void setBuy_no(int buy_no) {
		this.buy_no = buy_no;
	}

	public int getBuyprod_price() {
		return buyprod_price;
	}

	public void setBuyprod_price(int buyprod_price) {
		this.buyprod_price = buyprod_price;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
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

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Override
	public String toString() {
		return "BuyProductVo [buyprod_no=" + buyprod_no + ", prod_no=" + prod_no + ", colorsize_no=" + colorsize_no
				+ ", buy_del_no=" + buy_del_no + ", buy_delivery=" + buy_delivery + ", buy_del_state=" + buy_del_state
				+ ", count=" + count + ", buy_no=" + buy_no + ", buyprod_price=" + buyprod_price + ", prod_name="
				+ prod_name + ", stock=" + stock + ", sell_no=" + sell_no + ", user_no=" + user_no + "]";
	}

}
