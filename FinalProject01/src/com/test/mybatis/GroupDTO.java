package com.test.mybatis;

public class GroupDTO
{	
	// 모임 정보 확인 용 변수
	private String mt_title, mt_meet, mt_name, ao_date, ct_code;
	private int mt_rank;
	
	// 그룹 관련 변수
	private String cg_code, gi_code, cg_intro, cg_profile, cg_name, cg_date;

	// 그룹원 관련 변수
	private String gm_code, gm_nickname, gm_profile, gm_regdate, gm_intro, gm_count;
	
	// 직위 변수
	private String pos_code, pos_name;
	
	// 자유 게시판 변수
	private String brd_name, brd_subject;
	
	//공지사항 변수
	private String nf_title;
	
	// 포인트 변수
	private int group_point;

	
	public int getMt_rank()
	{
		return mt_rank;
	}

	public void setMt_rank(int mt_rank)
	{
		this.mt_rank = mt_rank;
	}

	public String getGm_count()
	{
		return gm_count;
	}

	public void setGm_count(String gm_count)
	{
		this.gm_count = gm_count;
	}

	public String getMt_title()
	{
		return mt_title;
	}

	public void setMt_title(String mt_title)
	{
		this.mt_title = mt_title;
	}

	public String getMt_meet()
	{
		return mt_meet;
	}

	public void setMt_meet(String mt_meet)
	{
		this.mt_meet = mt_meet;
	}

	public String getMt_name()
	{
		return mt_name;
	}

	public void setMt_name(String mt_name)
	{
		this.mt_name = mt_name;
	}

	public String getAo_date()
	{
		return ao_date;
	}

	public void setAo_date(String ao_date)
	{
		this.ao_date = ao_date;
	}

	public String getCt_code()
	{
		return ct_code;
	}

	public void setCt_code(String ct_code)
	{
		this.ct_code = ct_code;
	}

	public String getCg_date()
	{
		return cg_date;
	}

	public void setCg_date(String cg_date)
	{
		this.cg_date = cg_date;
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

	public String getCg_name()
	{
		return cg_name;
	}
	
	public void setCg_name(String cg_name)
	{
		this.cg_name = cg_name;
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

	public String getGm_code()
	{
		return gm_code;
	}

	public void setGm_code(String gm_code)
	{
		this.gm_code = gm_code;
	}

	public String getGm_nickname()
	{
		return gm_nickname;
	}

	public void setGm_nickname(String gm_nickname)
	{
		this.gm_nickname = gm_nickname;
	}

	public String getGm_profile()
	{
		return gm_profile;
	}

	public void setGm_profile(String gm_profile)
	{
		this.gm_profile = gm_profile;
	}

	public String getGm_regdate()
	{
		return gm_regdate;
	}

	public void setGm_regdate(String gm_regdate)
	{
		this.gm_regdate = gm_regdate;
	}

	public String getGm_intro()
	{
		return gm_intro;
	}

	public void setGm_intro(String gm_intro)
	{
		this.gm_intro = gm_intro;
	}

	public String getPos_code()
	{
		return pos_code;
	}

	public void setPos_code(String pos_code)
	{
		this.pos_code = pos_code;
	}

	public String getPos_name()
	{
		return pos_name;
	}

	public void setPos_name(String pos_name)
	{
		this.pos_name = pos_name;
	}

	public String getBrd_name()
	{
		return brd_name;
	}

	public void setBrd_name(String brd_name)
	{
		this.brd_name = brd_name;
	}

	public String getBrd_subject()
	{
		return brd_subject;
	}

	public void setBrd_subject(String brd_subject)
	{
		this.brd_subject = brd_subject;
	}

	public String getNf_title()
	{
		return nf_title;
	}

	public void setNf_title(String nf_title)
	{
		this.nf_title = nf_title;
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
