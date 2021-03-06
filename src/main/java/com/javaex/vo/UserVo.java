package com.javaex.vo;

public class UserVo {

	private int user_no;
	private int sell_no;
	private int prod_type;
	private int book_type;
	private String user_id;
	private String user_name;
	private String password;
	private String nickname;
	private String address;
	private String user_photo;
	private String user_phone;
	private double user_level;
	private String user_date;
	private String gender;
	private String addressdetail;
	private String roadAddress;
	private String roadaddress;
	
	public UserVo() {
	}

	public UserVo(String user_id, String password) {
		this.user_id = user_id;
		this.password = password;
	}

	
	public UserVo(int user_no, int sell_no, String nickname, int prod_type, int book_type) {
		super();
		this.user_no = user_no;
		this.sell_no = sell_no;
		this.nickname = nickname;
		this.prod_type = prod_type;
		this.book_type = book_type;
	}



	public UserVo(int user_no, String user_id, String user_name, String password, String nickname,
			String address, String user_photo, String user_phone, int user_level, String user_date) {
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_name = user_name;
		this.password = password;
		this.nickname = nickname;
		this.address = address;
		this.user_photo = user_photo;
		this.user_phone = user_phone;
		this.user_level = user_level;
		this.user_date = user_date;
	}

	public UserVo(int user_no, int sell_no, String user_id, String user_name, String password, String nickname,
			String address, String user_photo, String user_phone, int user_level, String user_date) {
		this.user_no = user_no;
		this.sell_no = sell_no;
		this.user_id = user_id;
		this.user_name = user_name;
		this.password = password;
		this.nickname = nickname;
		this.address = address;
		this.user_photo = user_photo;
		this.user_phone = user_phone;
		this.user_level = user_level;
		this.user_date = user_date;
	}
	



	public UserVo(int user_no, int sell_no, int prod_type, int book_type, String user_id, String user_name,
			String password, String nickname, String address, String user_photo, String user_phone, double user_level,
			String user_date, String gender, String addressdetail, String roadaddress) {
		super();
		this.user_no = user_no;
		this.sell_no = sell_no;
		this.prod_type = prod_type;
		this.book_type = book_type;
		this.user_id = user_id;
		this.user_name = user_name;
		this.password = password;
		this.nickname = nickname;
		this.address = address;
		this.user_photo = user_photo;
		this.user_phone = user_phone;
		this.user_level = user_level;
		this.user_date = user_date;
		this.gender = gender;
		this.addressdetail = addressdetail;
		this.roadaddress = roadaddress;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getSell_no() {
		return sell_no;
	}

	public void setSell_no(int sell_no) {
		this.sell_no = sell_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUser_photo() {
		return user_photo;
	}

	public void setUser_photo(String user_photo) {
		this.user_photo = user_photo;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public double getUser_level() {
		return user_level;
	}

	public void setUser_level(double userLevel) {
		this.user_level = userLevel;
	}

	public String getUser_date() {
		return user_date;
	}

	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}
	


	public int getProd_type() {
		return prod_type;
	}

	public void setProd_type(int prod_type) {
		this.prod_type = prod_type;
	}

	public int getBook_type() {
		return book_type;
	}

	public void setBook_type(int book_type) {
		this.book_type = book_type;
	}

	
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	
	public String getAddressdetail() {
		return addressdetail;
	}

	public void setAddressdetail(String addressdetail) {
		this.addressdetail = addressdetail;
	}

	

	public String getRoadaddress() {
		return roadaddress;
	}

	public void setRoadaddress(String roadaddress) {
		this.roadaddress = roadaddress;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	@Override
	public String toString() {
		return "UserVo [user_no=" + user_no + ", sell_no=" + sell_no + ", prod_type=" + prod_type + ", book_type="
				+ book_type + ", user_id=" + user_id + ", user_name=" + user_name + ", password=" + password
				+ ", nickname=" + nickname + ", address=" + address + ", user_photo=" + user_photo + ", user_phone="
				+ user_phone + ", user_level=" + user_level + ", user_date=" + user_date + ", gender=" + gender
				+ ", addressdetail=" + addressdetail + ", roadaddress=" + roadaddress + "]";
	}

}
