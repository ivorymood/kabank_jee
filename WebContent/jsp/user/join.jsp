<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request"></jsp:useBean>
<%


member.setId(request.getParameter("join_id"));
member.setName(request.getParameter("join_name"));
member.setSsn(request.getParameter("join_first_ssn"));
member.setEmail(request.getParameter("join_first_email"));
member.setPhone(request.getParameter("join_first_num"));
member.setPass(request.getParameter("join_repass"));
member.setAddr(request.getParameter("join_fisrt_addr"));

Connection conn = null;
Statement stmt = null;
String sql = "";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql = String.format(
			"INSERT INTO Member(id, name, ssn, email, phone, pass, addr)VALUES('%s','%s','%s','%s','%s','%s','%s')",
			member.getId(), member.getName(), member.getSsn(), member.getEmail(), member.getPhone(), 
			member.getPass(), member.getAddr());
	stmt.executeUpdate(sql);
}catch(Exception e){
	e.printStackTrace();
}


//response.sendRedirect("../index.jsp");
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
id : <%=member.getId() %>
</body>
</html>
