<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.MemberBean" %>

<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "";
	List<MemberBean> result = new ArrayList<>();
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
			if(s.equalsIgnoreCase("member")){
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
		}else{
			rs = stmt.executeQuery("SELECT id, pass, name, ssn, phone, email, profile, addr FROM Member");
			while(rs.next()){
				MemberBean m = new MemberBean();
				m.setId(rs.getString("id"));
				m.setPass(rs.getString("pass"));
				m.setName(rs.getString("name"));
				m.setSsn(rs.getString("ssn"));
				m.setPhone(rs.getString("phone"));
				m.setEmail(rs.getString("profile"));
				m.setProfile(rs.getString("profile"));
				m.setAddr(rs.getString("addr"));
				result.add(m);
			}
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
<%@ include file="../common/head.jsp" %>
<link rel="stylesheet" href="../../css/member_list.css" />
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
				<%
				for(int i=result.size()-1; i>=0; i--){
				%>
					<tr>
						<td><%= i+1 %></td>
						<td><%= result.get(i).getId() %></td>
						<td><%= result.get(i).getName() %></td>
						<td><%= result.get(i).getSsn() %></td>
						<td><%= result.get(i).getSsn() %></td>
						<td><%= result.get(i).getPhone() %></td>
						<td><%= result.get(i).getEmail() %></td>
						<td><%= result.get(i).getAddr() %></td>
					</tr>
				<%	
				}
				%>
							
				
			</table> 
			<button id="member_register_form_btn">추가</button>
		</article>
	</section>
<%@ include file="../common/footer.jsp" %>
</body>
	<script src="../../js/admin/member_list.js"></script>

</html>