package com.test.mybatis;

import java.util.ArrayList;

public interface IGroupDAO
{
	public GroupDTO groupList(String cg_code);						// 그룹 정보 조회 
	public int groupPoint (String cg_code);							// 그룹 포인트 조회
	public ArrayList<GroupDTO> groupPosition(String cg_code); 		// 그룹 직위 조회
	public int groupCount (String cg_code);							// 그룹원 수 조회
	
	public GroupDTO myProfile(String gm_code);						// 마이프로필 조회
	public ArrayList<GroupDTO> newBorad(String cg_code);			// 자유게시판 조회
	public ArrayList<GroupDTO> newHistory(String cg_code);			// 히스토리 조회
	public ArrayList<GroupDTO> noticesList();						// 공지사항 제목 조회
	
	public ArrayList<GroupDTO> impromptuMeeting(String cg_code);	// 현재 참석 여부 확인중인 번개 모임 조회
	public ArrayList<GroupDTO> regularMeeting(String cg_code);		// 현재 참석 여부 확인중인 정기 모임 조회
	
}
