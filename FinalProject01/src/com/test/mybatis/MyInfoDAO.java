package com.test.mybatis;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.test.util.DBConn;

public class MyInfoDAO
{
	private Connection conn;

	
	// 데이터베이스 연결
	public void connection() throws ClassNotFoundException, SQLException
	{
		conn = DBConn.getConnection();
	}
	
	// 데이터 베이스 연결 해제
	public void close() throws SQLException
	{
		DBConn.close();
	}
	
	// 그룹 정보 수정 메소드
	public int modifyGroupProfile(GroupDTO dto) 
	{
		int result = 0;
		
		try
		{
			String sql = "{call PRC_GROUP_MEMBER_UPDATE(?,NULL,?,?)}";
			CallableStatement cstmt = conn.prepareCall(sql);
			
			cstmt.setString(1, dto.getGm_nickname());
			cstmt.setString(2, dto.getGm_intro());
			cstmt.setString(3, dto.getGm_code());
			
			result = cstmt.executeUpdate();
			
			cstmt.close();
			DBConn.close();
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return result;
	}
	
	// 계정 정보 수정 메소드
	public int modifyUserProfile(UserDTO dto)
	{
		int result = 0;
		
		try
		{
			if(dto.getUs_profile()==null)
			{
				String sql = "UPDATE USER_INFO SET US_ZIPCODE = ? , US_ADDR = ?"
						+ ", US_ADDR2 = ? , US_PROFILE = NULL "
						+ ", US_TEL = ? WHERE US_CODE = ?";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getUs_zipcode());
				pstmt.setString(2, dto.getUs_addr());
				pstmt.setString(3, dto.getUs_addr2());
				pstmt.setString(4, dto.getUs_tel());
				pstmt.setString(5, dto.getUs_code());
				
				result = pstmt.executeUpdate();
				
				pstmt.close();
			}
			else 
			{
				String sql = "UPDATE USER_INFO SET US_ZIPCODE = ? , US_ADDR = ?"
						+ ", US_ADDR2 = ? , US_PROFILE = ? "
						+ ", US_TEL = ? WHERE US_CODE = ?";
			
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getUs_zipcode());
				pstmt.setString(2, dto.getUs_addr());
				pstmt.setString(3, dto.getUs_addr2());
				pstmt.setString(4, dto.getUs_profile());
				pstmt.setString(5, dto.getUs_tel());
				pstmt.setString(6, dto.getUs_code());
				
				result = pstmt.executeUpdate();
				
				pstmt.close();
			}
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	
}	
