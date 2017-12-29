<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="attend" class="com.kabank.jee.domain.AttendBean" scope="request"></jsp:useBean>
<% 
System.out.print("========찍고 옴========");

attend.setId(request.getParameter(""));
attend.setWeak(request.getParameter(""));
attend.setStatus(request.getParameter(""));

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String sql = "";

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql = "SELECT * FROM tab";
	rs = stmt.executeQuery(sql);
	
	List<String> list = new ArrayList<>();
	while(rs.next()){
		String temp = rs.getString("TNAME");
		list.add(temp);
	}
	boolean exist = false;	
	for(String l: list){
		if(l.equalsIgnoreCase("attend")){
			exist = true;
			break;
		}
	}
	if(!exist){
		sql = "CREATE TABLE Attend(id VARCHAR2(20) PRIMARY KEY, weak VARCHAR2(10), status VARCHAR2(10))";
		stmt.executeQuery(sql);
	}else{
		sql = String.format("INSERT INTO Attend(id, weak, status) VALUES('%s','%s','%s')", attend.getId(), attend.getWeak(), attend.getStatus());
	}
	
}catch(Exception e){ 
	e.printStackTrace();
}



pageContext.forward("main.jsp");
%>