package com.test.mybatis;

import java.util.ArrayList;

public interface ICsDAO
{
	public ArrayList<GroupDTO> noticesTitle();				// 공지사항 제목 조회
	public ArrayList<CsDTO> faqList(String fc_code);		// 자주묻는 질문 제목 조회
	
	public ArrayList<CsDTO> inquiryCategory();				// 문의사항 카테고리 조회
	public int inquiryInsert(CsDTO dto);					// 1:1 문의사항 입력
	public ArrayList<CsDTO> inquiryList(String us_code);	// 1:1 문의사항 내역 조회
}
