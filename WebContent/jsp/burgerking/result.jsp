<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
		<!--이 공간은 html의 영역!!! 버튼 넣으면 먹는다   -->
<body>
	<table id="wrapper">
		<tr style = "height: 10%">
			<td colspan="4">
				<a href="../index.jsp">
					HOME
				</a>
			</td>
			<td>
				<a href="../index.jsp">
					로그아웃
				</a>
			</td>
		</tr>
		<tr style = "height: 10%">
			<td style="width:20%; text-align: center;">
				<a href="../burgerking/main.jsp">버거킹</a></td>		<!--자기자신한테 링크거는 거면 #을 치면 됨. 새로고침과 같은 효과  -->
			<td style="width:20%; text-align: center;">
				<a href="../kakao/main.jsp">카카오뱅크</a></td>
			<td style="width:20%; text-align: center;">
				<a href="../bitcamp/main.jsp">비트캠프</a></td>
			<td style="width:20%; text-align: center;">
				<a href="../sktelecom/main.jsp">SK 텔레콤</a></td>
			<td style="width:20%; text-align: center;">
				<a href="../lotto/main.jsp">로또</a></td>
		</tr>
<%
	String menu = request.getParameter("menu");
	String count = request.getParameter("count");
	String total = "";
	String hamburger = request.getParameter("hamburger");
	String coke = request.getParameter("coke");
	String chip = request.getParameter("chip");
	String coffee = request.getParameter("coffee");
	String price = "";
	if(menu.equals("")||count.equals("")){
%>
		<tr style = "height: 80%">
			<td colspan="5">
				<div style = "width : 300px; height: 200px; margin: 0 auto;">
					<p>
						값을 입력하세요
					</p>
					<form action="main.jsp">
						<input type="submit" value = "뒤로가기" />
					</form>
				</div>
			</td>
		</tr>
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
		<tr style = "height: 80%">
			<td colspan="5">
				<div style = "width : 300px; height: 200px; margin: 0 auto;">
					<p>
						<%=menu %> 수량:<%=count %> 단가:<%=price%> <br />
						<!-- 괄호와 %를 써주는것 : 자바의 변수로써 나타내려고. 안써주면 그냥 menu라는 글자가 된다. -->
						---------------------- <br />
						총 결제금액            <%=total %>
					</p>
					<form action="">
						<input type="submit" value = "결  제"/>
					</form>
				</div>
			</td>
		</tr>
	</table>

</body>
<%
	}
%>
</html>