package com.test.mybatis;

public class UserDTO
{
	// 유저 정보 변수
	private String us_name, us_addr, us_tel, us_email, us_birthday, us_zipcode, us_addr2, us_profile;	// 유저 이름, 주소, 전번, 이메일, 생일
	private String us_code, us_id, us_pwd;													// 유저 코드, 아이디, 비번
	
	public String getUs_zipcode()
	{
		return us_zipcode;
	}
	public void setUs_zipcode(String us_zipcode)
	{
		this.us_zipcode = us_zipcode;
	}
	public String getUs_addr2()
	{
		return us_addr2;
	}
	public void setUs_addr2(String us_addr2)
	{
		this.us_addr2 = us_addr2;
	}
	public String getUs_profile()
	{
		return us_profile;
	}
	public void setUs_profile(String us_profile)
	{
		this.us_profile = us_profile;
	}
	public String getUs_name()
	{
		return us_name;
	}
	public void setUs_name(String us_name)
	{
		this.us_name = us_name;
	}
	public String getUs_addr()
	{
		return us_addr;
	}
	public void setUs_addr(String us_addr)
	{
		this.us_addr = us_addr;
	}
	public String getUs_tel()
	{
		return us_tel;
	}
	public void setUs_tel(String us_tel)
	{
		this.us_tel = us_tel;
	}
	public String getUs_email()
	{
		return us_email;
	}
	public void setUs_email(String us_email)
	{
		this.us_email = us_email;
	}
	public String getUs_birthday()
	{
		return us_birthday;
	}
	public void setUs_birthday(String us_birthday)
	{
		this.us_birthday = us_birthday;
	}
	public String getUs_code()
	{
		return us_code;
	}
	public void setUs_code(String us_code)
	{
		this.us_code = us_code;
	}
	public String getUs_id()
	{
		return us_id;
	}
	public void setUs_id(String us_id)
	{
		this.us_id = us_id;
	}
	public String getUs_pwd()
	{
		return us_pwd;
	}
	public void setUs_pwd(String us_pwd)
	{
		this.us_pwd = us_pwd;
	}
	
}
