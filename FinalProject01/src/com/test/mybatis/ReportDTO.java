package com.test.mybatis;

public class ReportDTO
{
	// 신고 관련 변수
	private String report_code, report_date, report_content, report_status, report_type;

	// 유저 변수
	private String us_code;

	public String getReport_code()
	{
		return report_code;
	}

	public void setReport_code(String report_code)
	{
		this.report_code = report_code;
	}

	public String getReport_date()
	{
		return report_date;
	}

	public void setReport_date(String report_date)
	{
		this.report_date = report_date;
	}

	public String getReport_content()
	{
		return report_content;
	}

	public void setReport_content(String report_content)
	{
		this.report_content = report_content;
	}

	public String getReport_status()
	{
		return report_status;
	}

	public void setReport_status(String report_status)
	{
		this.report_status = report_status;
	}

	public String getReport_type()
	{
		return report_type;
	}

	public void setReport_type(String report_type)
	{
		this.report_type = report_type;
	}

	public String getUs_code()
	{
		return us_code;
	}

	public void setUs_code(String us_code)
	{
		this.us_code = us_code;
	}

	
	
}
