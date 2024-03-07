package com.test.mybatis;

public class BoardDTO
{	
	// 자유게시판 변수 
	private String brd_subject, brd_view, brd_date, brd_code;
	
	// 히스토리 변수
	private String his_view, his_date, gm_nickname, his_code;
	
	// 모임 게시판 변수
	private String mt_title, mt_date, mt_code;

	public String getBrd_code()
	{
		return brd_code;
	}

	public void setBrd_code(String brd_code)
	{
		this.brd_code = brd_code;
	}

	public String getHis_code()
	{
		return his_code;
	}

	public void setHis_code(String his_code)
	{
		this.his_code = his_code;
	}

	public String getMt_code()
	{
		return mt_code;
	}

	public void setMt_code(String mt_code)
	{
		this.mt_code = mt_code;
	}

	public String getBrd_subject()
	{
		return brd_subject;
	}

	public void setBrd_subject(String brd_subject)
	{
		this.brd_subject = brd_subject;
	}

	public String getBrd_view()
	{
		return brd_view;
	}

	public void setBrd_view(String brd_view)
	{
		this.brd_view = brd_view;
	}

	public String getBrd_date()
	{
		return brd_date;
	}

	public void setBrd_date(String brd_date)
	{
		this.brd_date = brd_date;
	}

	public String getHis_view()
	{
		return his_view;
	}

	public void setHis_view(String his_view)
	{
		this.his_view = his_view;
	}

	public String getHis_date()
	{
		return his_date;
	}

	public void setHis_date(String his_date)
	{
		this.his_date = his_date;
	}

	public String getGm_nickname()
	{
		return gm_nickname;
	}

	public void setGm_nickname(String gm_nickname)
	{
		this.gm_nickname = gm_nickname;
	}

	public String getMt_title()
	{
		return mt_title;
	}

	public void setMt_title(String mt_title)
	{
		this.mt_title = mt_title;
	}

	public String getMt_date()
	{
		return mt_date;
	}

	public void setMt_date(String mt_date)
	{
		this.mt_date = mt_date;
	}

	
	
	
}

