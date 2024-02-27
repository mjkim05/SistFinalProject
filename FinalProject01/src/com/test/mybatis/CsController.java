/* ======================
  	CsController.java
  	- 컨트롤러 객체
 =======================*/

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CsController
{	
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/cs.action", method=RequestMethod.GET)
	public String CsMain(ModelMap model, String fc_code)
	{	
		if (fc_code == null)
		{
			fc_code = "1";
		}	
		
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		model.addAttribute("noticesTitle", dao.noticesTitle());
		model.addAttribute("faqList",dao.faqList(fc_code));
		

		return "Cs.jsp";
	}
	
	@RequestMapping(value = "/faq.action", method = RequestMethod.GET)
	public String faqList(ModelMap model, String fc_code)
	{
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		if (fc_code == null)
		{
			fc_code = "1";
		}	
		
		model.addAttribute("faqList", dao.faqList(fc_code));
		
		return "Faq.jsp";
	}
	
	@RequestMapping(value = "/inquiaryinsertform.action", method = RequestMethod.GET)
	public String inquiaryForm(ModelMap model)
	{
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		model.addAttribute("inquiaryCategory",dao.inquiaryCategory());
		
		return "IquiaryInsertForm.jsp";
	}
	
	@RequestMapping(value = "/iquiaryinsert.action", method = RequestMethod.GET)
	public String iquiaryInsert(ModelMap model, CsDTO dto)
	{
		ICsDAO dao = sqlsession.getMapper(ICsDAO.class);
		
		dao.inquiaryInsert(dto);
		
		return "redirect:cs.action";
				
	}
	
}
