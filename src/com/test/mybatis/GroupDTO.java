package com.test.mybatis;

public class GroupDTO
{
	// GroupDTO

	// 그룹 관련 변수 (그룹 코드, 그룹 초대 코드, 그룹 상태메세지, 그룹 프로필
	//				   그룹 이름, 그룹 개설 날짜, 멤버 수, 자유게시판 이름)
	private String cg_code, gi_code, cg_intro, cg_profile, cg_name, cg_date, gm_count, brd_name, gm_code;
	// 포인트 변수 (그룹 포인트)
   	private int group_point;
   	
	// getter / setter 구성
   	public String getGm_code()
   	{
   		return gm_code;
   	}
   	public void setGm_code(String gm_code)
   	{
   		this.gm_code = gm_code;
   	}
	public String getCg_code()
	{
		return cg_code;
	}
	public void setCg_code(String cg_code)
	{
		this.cg_code = cg_code;
	}
	public String getGi_code()
	{
		return gi_code;
	}
	public void setGi_code(String gi_code)
	{
		this.gi_code = gi_code;
	}
	public String getCg_intro()
	{
		return cg_intro;
	}
	public void setCg_intro(String cg_intro)
	{
		this.cg_intro = cg_intro;
	}
	public String getCg_profile()
	{
		return cg_profile;
	}
	public void setCg_profile(String cg_profile)
	{
		this.cg_profile = cg_profile;
	}
	public String getCg_name()
	{
		return cg_name;
	}
	public void setCg_name(String cg_name)
	{
		this.cg_name = cg_name;
	}
	public String getCg_date()
	{
		return cg_date;
	}
	public void setCg_date(String cg_date)
	{
		this.cg_date = cg_date;
	}
	public String getGm_count()
	{
		return gm_count;
	}
	public void setGm_count(String gm_count)
	{
		this.gm_count = gm_count;
	}
	public String getBrd_name()
	{
		return brd_name;
	}
	public void setBrd_name(String brd_name)
	{
		this.brd_name = brd_name;
	}
	public int getGroup_point()
	{
		return group_point;
	}
	public void setGroup_point(int group_point)
	{
		this.group_point = group_point;
	}
}
