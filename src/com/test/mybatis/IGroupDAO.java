package com.test.mybatis;

import java.util.ArrayList;

public interface IGroupDAO
{
	//public GroupDTO_ming groupList(String cg_code);						// 그룹 정보 조회 
	public GroupDTO groupPoint (String cg_code);								// 그룹 포인트 조회
	//public ArrayList<GroupDTO_ming> groupPosition(String cg_code); 		// 그룹 직위 조회
	//public int groupCount (String cg_code);								// 그룹원 수 조회
	
	//public GroupDTO groupList2 (String cg_code);						// 그룹 정보 조회 (세션)
	//public GroupMemberDTO GroupMemberList (String gm_code);				// 그룹원 정보 조회
	
	public GroupDTO_ming myGroupProfile(String gm_code);				// 마이프로필 조회
	public ArrayList<GroupDTO_ming> newBorad(String cg_code);			// 자유게시판 조회
	public ArrayList<GroupDTO_ming> newHistory(String cg_code);			// 히스토리 조회
	public ArrayList<GroupDTO_ming> noticesList();						// 공지사항 제목 조회
	
	public ArrayList<GroupDTO_ming> impromptuMeeting(String cg_code);	// 현재 참석 여부 확인중인 번개 모임 조회
	public ArrayList<GroupDTO_ming> regularMeeting(String cg_code);		// 현재 참석 여부 확인중인 정기 모임 조회
	
}
