package com.javaex.vo;

public class ColorsizeVo {
	
	private int colorsize_no;
	private String prod_no;
	private String prod_size;
	private String color;
	private int stock;
	
	public ColorsizeVo() {}

	public ColorsizeVo(int colorsize_no, String prod_no, String prod_size, String color, int stock) {
		super();
		this.colorsize_no = colorsize_no;
		this.prod_no = prod_no;
		this.prod_size = prod_size;
		this.color = color;
		this.stock = stock;
	}

	public int getColorsize_no() {
		return colorsize_no;
	}

	public void setColorsize_no(int colorsize_no) {
		this.colorsize_no = colorsize_no;
	}

	public String getProd_no() {
		return prod_no;
	}

	public void setProd_no(String prod_no) {
		this.prod_no = prod_no;
	}

	public String getProd_size() {
		return prod_size;
	}

	public void setProd_size(String prod_size) {
		this.prod_size = prod_size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Override
	public String toString() {
		return "ColorsizeVo [colorsize_no=" + colorsize_no + ", prod_no=" + prod_no + ", prod_size=" + prod_size
				+ ", color=" + color + ", stock=" + stock + "]";
	}
	
	

}
