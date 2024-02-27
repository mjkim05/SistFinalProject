package com.test.mybatis;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.test.util.DBConn;

public class GroupDAO_1
{
	private static Connection conn;
	
	
	public Connection connection() throws ClassNotFoundException, SQLException
	{
		return DBConn.getConnection();
	}
	
	public void close() throws SQLException
	{
		DBConn.close();
	}
	
	// 그룹 정보 조회 메소드
	public GroupDTO groupList(String cg_code) throws SQLException, ClassNotFoundException
	{
		GroupDTO result = new GroupDTO();
		String sql = "SELECT CG_NAME, CG_INTRO, CG_DATE, CG_PROFILE ( SELECT COUNT(GM_CODE) FROM GROUP_MEMBER) AS GROUP_COUNT" 
				 + " FROM CREATE_GROUP" 
			     + " WHERE CG_CODE = ?";
		conn = connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cg_code);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			result.setCg_name(rs.getString("CG_NAME"));
			result.setCg_intro(rs.getString("CG_INTRO"));
			result.setCg_date(rs.getString("CG_DATE"));
			result.setCg_profile(rs.getString("CG_PROFILE"));
			result.setGm_count(rs.getInt("GROUP_COUNT"));
		}
		
		rs.close();
		pstmt.close();
		
		return result;
		
	}
	
	// 그룹 포인트 조회 메소드
	public int groupPoint(String cg_code) throws SQLException, ClassNotFoundException
	{
		conn = connection();
		
		int result = 0;

		String sql = "SELECT TO_NUMBER(누적포인트) - TO_NUMBER(사용포인트) AS GROUP_POINT" + 
				" 	   FROM ( SELECT (SELECT SUM(GP_SCORE) FROM GROUP_POINT WHERE PS_CODE = 2) AS 누적포인트 ," + 
				"               	 (SELECT SUM(GP_SCORE) FROM GROUP_POINT WHERE PS_CODE = 1) AS 사용포인트" + 
				" 		 	  FROM CREATE_GROUP" + 
				" 		  	  WHERE CG_CODE = ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cg_code);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			result = rs.getInt("GROUP_POINT");
		}
		
		rs.close();
		pstmt.close();
		
		return result;
	}
	
	// 그룹원들 직위 조회 메소드
	public ArrayList<GroupDTO> groupPositionList(String cg_code) throws SQLException, ClassNotFoundException
	{
		conn = connection();
		ArrayList<GroupDTO> result = new ArrayList<GroupDTO>();
		String sql = "SELECT P.POS_NAME AS POS_NAME , M.GM_NICKNAME AS GM_NICKNAME" + 
				" FROM POSITION_APPOINT A JOIN POSITION P ON A.POS_CODE = P.POS_CODE" + 
				"     JOIN GROUP_MEMBER M ON A.GM_CODE1 = M.GM_CODE" + 
				"     JOIN GROUP_INVITE I ON M.GI_CODE = I.GI_CODE" + 
				" WHERE I.CG_CODE = ?" + 
				" AND P.POS_CODE IN (1,2)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cg_code);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next())
		{
			GroupDTO dto = new GroupDTO();
			
			dto.setPos_name(rs.getString("POS_NAME"));
			dto.setGm_nickname(rs.getString("GM_NICKNAME"));
			
			result.add(dto);
		}
		
		return result;
	}
	
}
