package com.javaex.vo;

public class ProdimgVo {
	
	private int prod_img_no;
	private String prod_no;
	private String prod_img_name;
	private String prod_img_savename;
	private String prod_img_type;
	
	public ProdimgVo() {}

	public ProdimgVo(int prod_img_no, String prod_no, String prod_img_name, String prod_img_savename,
			String prod_img_type) {
		super();
		this.prod_img_no = prod_img_no;
		this.prod_no = prod_no;
		this.prod_img_name = prod_img_name;
		this.prod_img_savename = prod_img_savename;
		this.prod_img_type = prod_img_type;
	}

	public int getProd_img_no() {
		return prod_img_no;
	}

	public void setProd_img_no(int prod_img_no) {
		this.prod_img_no = prod_img_no;
	}

	public String getProd_no() {
		return prod_no;
	}

	public void setProd_no(String prod_no) {
		this.prod_no = prod_no;
	}

	public String getProd_img_name() {
		return prod_img_name;
	}

	public void setProd_img_name(String prod_img_name) {
		this.prod_img_name = prod_img_name;
	}

	public String getProd_img_savename() {
		return prod_img_savename;
	}

	public void setProd_img_savename(String prod_img_savename) {
		this.prod_img_savename = prod_img_savename;
	}

	public String getProd_img_type() {
		return prod_img_type;
	}

	public void setProd_img_type(String prod_img_type) {
		this.prod_img_type = prod_img_type;
	}

	@Override
	public String toString() {
		return "ProdimgVo [prod_img_no=" + prod_img_no + ", prod_no=" + prod_no + ", prod_img_name=" + prod_img_name
				+ ", prod_img_savename=" + prod_img_savename + ", prod_img_type=" + prod_img_type + "]";
	}
	
	

}
