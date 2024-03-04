/* ======================
  	GroupController.java
  	- 컨트롤러 객체
 =======================*/

package com.test.mybatis;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GroupController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/groupside.woori", method=RequestMethod.GET)
	public String groupProfileList(ModelMap model)
	{
		String cg_code = "1";
		String gm_code = "2";		
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		
		model.addAttribute("groupProfile",dao.groupList(cg_code));
		model.addAttribute("groupPoint", dao.groupPoint(cg_code));
		model.addAttribute("groupPosition", dao.groupPosition(cg_code));
		model.addAttribute("groupCount", dao.groupCount(cg_code));
		model.addAttribute("myGroupProfile", dao.myGroupProfile(gm_code));
		
		//return "GroupSideBar.jsp";
		return "/groupmain.woori";
	}
	
	@RequestMapping(value = "/groupmain.woori", method = RequestMethod.GET)
	public String groupMain(ModelMap model)
	{
		String cg_code = "1";
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		model.addAttribute("newBorad",dao.newBorad(cg_code));
		model.addAttribute("newHistory",dao.newHistory(cg_code));
		model.addAttribute("noticesList", dao.noticesList());
		
		model.addAttribute("impromptuMeeting",dao.impromptuMeeting(cg_code));
		model.addAttribute("regularMeeting", dao.regularMeeting(cg_code));
		
		return "GroupMain.jsp";
	}
	
	@RequestMapping(value = "/groupmypage.woori", method = RequestMethod.GET)
	public String groupMypage(ModelMap model, String gm_code, String us_code)
	{
		gm_code = "2";
		us_code = "2";
		
		IGroupMyPageDAO dao = sqlsession.getMapper(IGroupMyPageDAO.class);
		
		// 내 정보
		model.addAttribute("myGroupProfile", dao.myGroupProfileList(gm_code));
		model.addAttribute("myProfile", dao.myProfileList(us_code));
		
		// 게시판
		model.addAttribute("regularBoard", dao.regularBoard(gm_code));
		model.addAttribute("impromptuBoard", dao.impromptuBoard(gm_code));
		model.addAttribute("historyBorad", dao.historyBorad(gm_code));
		model.addAttribute("board", dao.board(gm_code));
		
		return "GroupMyPage.jsp";
	}
	
	// 그룹 내 정보 수정 컨트롤러
	@RequestMapping(value = "/mypageupdate.woori")
	public String updateMyInfo(GroupDTO dto) throws ClassNotFoundException, SQLException
	{
		MyInfoDAO dao = new MyInfoDAO();
		
		dto.setGm_code("2");
		
		dao.connection();
		dao.modifyGroupProfile(dto);
		dao.close();
		
		return "redirect:groupmypage.woori";
	}
	
	// 계정 정보 수정 컨트롤러
	@RequestMapping(value = "/userprofileupdate.woori")
	public String updateUserProfile(UserDTO dto) throws ClassNotFoundException, SQLException
	{
		MyInfoDAO dao = new MyInfoDAO();
		
		dto.setUs_code("2");
		
		dao.connection();
		dao.modifyUserProfile(dto);
		dao.close();
		
		return "redirect:groupmypage.woori";
	}
	
	
}
