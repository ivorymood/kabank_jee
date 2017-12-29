<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope ="request"></jsp:useBean>
<% 
	member.setId(request.getParameter("id"));
	member.setName(request.getParameter("name"));
	member.setPass(request.getParameter("pass"));
	member.setSsn(request.getParameter("gender"));
	member.setPhone(request.getParameter("phone"));
	member.setEmail(request.getParameter("email"));
	member.setProfile("default_profile.jpg");
	member.setAddr(request.getParameter("addr"));
Connection conn = null;
Statement stmt = null;
String sql = "";

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
			"bitcamp", "bitcamp");
	stmt = conn.createStatement();
	sql = String.format("INSERT INTO Member("
				+"id ,"
				+"pass ,"
				+"name ,"
				+"ssn ,"
				+"phone ,"
				+"email ,"
				+"profile ,"
				+"addr "
				+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s')",
				member.getId(),
				member.getPass(),
				member.getName(),
				member.getSsn(),
				member.getPhone(),
				member.getEmail(),
				member.getProfile(),
				member.getAddr());	
		stmt.executeUpdate(sql);
	
}catch(Exception e){
	e.printStackTrace();
}

pageContext.forward("member_list.jsp");
		
			
//request보다 pageContext의 스콥이 더 작다! 얘는 여기서 쓰고 사라짐.
//sql 은 리터럴이 싱글쿼터 '' 
//자바에서는 리터럴이 더블쿼터 ""
//JSP는 리터럴이 싱글쿼터 더블쿼터 둘다 허용 '' ""
%>
