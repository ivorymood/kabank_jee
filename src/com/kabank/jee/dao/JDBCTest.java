package com.kabank.jee.dao;

import java.sql.*;

public class JDBCTest {
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
				"bitcamp", "bitcamp");
			Statement stmt = conn.createStatement();
			String sql = "SELECT COUNT(*) AS count FROM tab";	//tab은 table의 약자. 여기서 count를 선언했다.
			//전체 테이블 수를 알려달라는 sql
			ResultSet rs = stmt.executeQuery(sql);
			String count = "";
			//인덱스 필요 없이 막 담은 set. 
				while(rs.next()) {	//다음이 있을때까지. 없으면 while룹은 끝난다.
					count = rs.getString("count");	//여기의 count는 sql문에서 선언한 카운트다. 
				}
				System.out.println("테이블 수: " + count);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
}
