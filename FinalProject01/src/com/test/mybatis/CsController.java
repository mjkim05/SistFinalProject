/* ======================
  	CsController.java
  	- 컨트롤러 객체
 =======================*/

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CsController
{	
	@Autowired
	private SqlSession sqlsession;
	
	// 고객센터 메인 접속 시 사용되는 컨트롤러
	@RequestMapping(value="/cs.woori", method=RequestMethod.GET)
	public String CsMain(ModelMap model, String fc_code)
	{	
		// 처음 접속 시 기본 값으로 자주 묻는 질문 회원 카테고리를 보여줌
		if (fc_code == null)
		{
			fc_code = "1";
		}	
		
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		// 공지사항 제목 조회 DAO
		model.addAttribute("noticesTitle", dao.noticesTitle());
		
		// 자주묻는 질문 제목 조회 DAO
		model.addAttribute("faqList",dao.faqList(fc_code));
		

		return "Cs.jsp";
	}
	
	// 자주 묻는 질문 페이지 접속시 사용되는 컨트롤러
	@RequestMapping(value = "/faq.woori", method = RequestMethod.GET)
	public String faqList(ModelMap model, String fc_code)
	{
		// 처음 접속 시 기본 값으로 자주 묻는 질문 회원 카테고리를 보여줌
		if (fc_code == null)
		{
			fc_code = "1";
		}	

		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		// 자주 묻는 질문 리스트 조회 DAO
		model.addAttribute("faqList", dao.faqList(fc_code));
		
		return "Faq.jsp";
	}
	
	// 1:1 문의사항 접수 페이지 접속시 사용되는 컨트롤러
	@RequestMapping(value = "/inquiryinsertform.woori", method = RequestMethod.GET)
	public String inquiryForm(ModelMap model)
	{
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		// 문의사항 카테고리 조회 DAO
		model.addAttribute("inquiryCategory",dao.inquiryCategory());
		
		return "InquiryInsertForm.jsp";
	}
	
	// 1:1 문의사항 접수(INSERT)시 사용 되는 컨트롤러
	@RequestMapping(value = "/inquiryinsert.woori", method = RequestMethod.POST)
	public String iquiryInsert(ModelMap model, CsDTO dto)
	{
		dto.setUs_code("2");
		
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		// 문의사항 INSERT DAO
		dao.inquiryInsert(dto);
		
		return "redirect:cs.action";
				
	}
	
	// 문의사항 내역 페이지 접속 시 사용되는 컨트롤러
	@RequestMapping(value = "/inquirylist.woori", method = RequestMethod.GET)
	public String iquiryList(ModelMap model , String us_code)
	{
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		// 유저 세션 생기면 삭제
		us_code = "2";
		
		// 문의사항 내역 조회 DAO
		model.addAttribute("inquiryList",dao.inquiryList(us_code));	
		
		return "InquiryList.jsp";
	}
	
	
	// 신고내역 페이지 접속 시 사용되는 컨트롤러
	@RequestMapping(value = "/reportlist.woori", method = RequestMethod.GET)
	public String reportList(ModelMap model, String us_code)
	{
		IReportDAO dao = sqlsession.getMapper(IReportDAO.class);
		
		// 유저 세션 생기면 삭제
		us_code = "2";
		
		// 신고 내역 조회 DAO
		model.addAttribute("allReportList", dao.allReportList(us_code));
		model.addAttribute("boardportList", dao.boardportList(us_code));
		model.addAttribute("groupReportList", dao.groupReportList(us_code));
		model.addAttribute("meetingReportList", dao.meetingReportList(us_code));
		model.addAttribute("historyReportList", dao.historyReportList(us_code));
		
		return "ReportList.jsp";
	}
	
}
