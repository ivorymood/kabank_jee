<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JDBC TEST</title>
</head>
<body>
	<% 
			String count = "";
		try{
/*호출*/			Class.forName("oracle.jdbc.driver.OracleDriver");
/*연결*/			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"bitcamp", "bitcamp");
/*명령어 전송*/		Statement stmt = conn.createStatement();
/*명령어 전송*/		String sql = "SELECT COUNT(*) AS count FROM tab";
/*실행(명령어전송)*/	ResultSet rs = stmt.executeQuery(sql);
				while(rs.next()){
					count = rs.getString("count");
				}
				//System.out.println("테이블 수는 ㅇㅇ: " + count);
				//sysout에서 찍는건 콘솔영역. 이때는 count선언을 try catch안에 해줘도 ㅇㅋ
		} catch(Exception e){
			e.printStackTrace();
		}
	%>
	테이블 개수는 <%= count %> 입니다
			// < % =>이건 jsp영역이라서 count선언을 try catch바깥에서 해줘야됨
</body>
</html>