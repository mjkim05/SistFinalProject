/* ===================
 	DBConn.java
 ====================*/

// 예외 처리 → throws 구성

package com.test.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn
{
	private static Connection dbConn;
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException
	{
		if (dbConn==null)
		{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "ming";
			String pwd = "123456";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbConn = DriverManager.getConnection(url, user, pwd);	
					
		}
		
		return dbConn;
	}
	
	public static Connection getConnection(String url, String user, String pwd) throws ClassNotFoundException, SQLException
	{
		if (dbConn==null)
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbConn = DriverManager.getConnection(url,user,pwd);
		}
		
		return dbConn;
	}
	
	public static void close() throws SQLException
	{
		if (dbConn!=null)
		{
			if (!dbConn.isClosed())
			{
				dbConn.close();
			}
		}
		
		dbConn = null;
	}
	
}
















