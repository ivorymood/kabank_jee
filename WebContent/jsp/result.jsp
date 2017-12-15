<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<style>
	table{
		width : 80%; height: 620px; margin: 0 auto;
	}
	table tr{
		width : 100%; height: 50px; border: 1px solid gray;
	}
	table tr th{
		width : 100%; height: 30px; border: 1px solid gray;
	}
	table tr td{
		width : 100%; height: 30px; border: 3px solid gray;
	}
	</style>
</head>
<%
	String menu = request.getParameter("menu");
	String count = request.getParameter("count");
	String total = "";
	String hamburger = request.getParameter("hamburger");
	String coke = request.getParameter("coke");
	String chip = request.getParameter("chip");
	String coffee = request.getParameter("coffee");
	String price = "";
	if(count.equals("")){
%>

		<!--이 공간은 html의 영역!!! 버튼 넣으면 먹는다   -->
<body>
<div style = "width : 300px; height: 200px; border: 3px solid pink; margin: 0 auto;">
	<p>
		값을 입력하세요
	</p>
	<form action="index.jsp">
		<input type="submit" value = "뒤로가기" />
	</form>
</div>

<% 
	}else{
	switch(menu){
		case "햄버거": 
			total = Integer.parseInt(hamburger) * Integer.parseInt(count) + "";
			price = hamburger;
			break;
		case "콜라" : 
			total = Integer.parseInt(coke) * Integer.parseInt(count) + "";
			price = coke;
			break;
		case "감자칩" : 
			total = Integer.parseInt(chip) * Integer.parseInt(count) + "";
			price = chip;
			break;
		case "커피" : 
			total = Integer.parseInt(coffee) * Integer.parseInt(count) + "";
			price = coffee;
			break;
	}
%>

<div style = "width : 300px; height: 200px; border: 3px solid pink; margin: 0 auto;">
	<p>
		<%=menu %><%=count %> <%=price%> <br />
		---------------------- <br />
		결제금액    <%=total %>
	</p>
	<form action="">
		<input type="submit" value = "결  제"/>
	</form>
</div>
</body>
<% }
	
%>
</html>