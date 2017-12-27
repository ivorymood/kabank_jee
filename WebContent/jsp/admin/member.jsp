<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"bitcamp", "bitcamp");
		stmt = conn.createStatement();
		sql = "SELECT * FROM tab";
		rs = stmt.executeQuery(sql);
		List<String> list = new ArrayList<>();
		while(rs.next()){
			String temp = rs.getString("TNAME");
			list.add(temp);
		}
		boolean exist = false;
		for(String s : list){
			if(!s.equalsIgnoreCase("member")){
				exist = true;
				break;
			}
		}
		if(!exist){
			sql =
			"CREATE TABLE Member("
			+"id VARCHAR2(20) PRIMARY KEY,"
			+"pass VARCHAR2(20),"
			+"name VARCHAR2(20),"
			+"ssn VARCHAR2(20),"
			+"phone VARCHAR2(20),"
			+"email VARCHAR2(20),"
			+"profile VARCHAR2(20),"
			+"addr VARCHAR2(20)"
			+")";
			stmt.executeUpdate(sql);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(stmt != null){
			try{stmt.close();}catch(Exception e){e.printStackTrace();}
		}if(conn != null){
			try{conn.close();}catch(Exception e){e.printStackTrace();}
		}		
	}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>admin</title>
	<link rel="stylesheet" href="../../css/common.css" />
	<link rel="stylesheet" href="../../css/member.css" />
</head>
<body>
	<section id="wrapper">
		<article id="admin_header">
			<h1>관리자 메인 페이지</h1>
		</article>
	<aside id="admin_aside">
		<a>회원관리</a>
	</aside>
		<article id="admin_body">
			<select name="member_select" id="member_select">
				<option value="id" checked>ID</option>
				<option value="name">이름</option>
				<option value="gender">성별</option>
			</select>
			<input id="input_member" type="text" />
			<button id="search_member_btn">검색</button><br/>
			
			<table id="member_table" >
				<tr>
					<th>NO.</th>
					<th>ID</th>
					<th>이    름</th>
					<th>생년월일</th>
					<th>성    별</th>
					<th>전화번호</th>
					<th>이 메 일</th>
					<th>주    소</th>
				</tr>
				<tr>
					<td>2</td>
					<td>kim</td>
					<td>김길자</td>
					<td>1980-01-01</td>
					<td>여성</td>
					<td>010-1111-2222</td>
					<td>asdf@test.com</td>
					<td>서울</td>
				</tr>
				<tr>
					<td>1</td>
					<td>hong</td>
					<td>홍길동</td>
					<td>1980-01-01</td>
					<td>남성</td>
					<td>010-1111-2222</td>
					<td>asdf@test.com</td>
					<td>서울</td>
				</tr>
			</table> 
			<button id="add_member_btn">추가</button>
		</article>
	</section>
<%@ include file="../common/footer.jsp" %>
</body>
	<script src="../../js/member.js"></script>

</html>