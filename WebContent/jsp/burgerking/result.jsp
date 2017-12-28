<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.BurgerKingBean" %>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
	<section id="wrapper">
	<article>

<jsp:useBean id="hamburger" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="coke" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="chip" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="coffee" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="bagel" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="salad" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<!--ㄴ 버거킹빈 버거킹 = new 버거킹빈();  -->		
<% 
		String hamburgerPrice = request.getParameter("hamburger");
		String cokePrice = request.getParameter("coke");
		String chipPrice = request.getParameter("chip");
		String coffeePrice = request.getParameter("coffee");
		String bagelPrice = request.getParameter("bagel");
		String saladPrice = request.getParameter("salad");
		
		String hamburgerCount = request.getParameter("hamburger-count");
		String cokeCount = request.getParameter("coke-count");
		String chipCount = request.getParameter("chip-count");
		String coffeeCount = request.getParameter("coffee-count");
		String bagelCount = request.getParameter("bagel-count");
		String saladCount = request.getParameter("salad-count");
		
		String place = request.getParameter("place");
	
		String hamburgerCheck = request.getParameter("hamburger-menu");
		String cokeCheck = request.getParameter("coke-menu");
		String chipCheck = request.getParameter("chip-menu");
		String coffeeCheck = request.getParameter("coffee-menu");
		String bagelCheck = request.getParameter("bagel-menu");
		String saladCheck = request.getParameter("salad-menu");
		
		hamburger.setMenu("햄버거");
		hamburger.setPrice(hamburgerPrice);
		hamburger.setCount(hamburgerCount);
		
		coke.setMenu("콜라");
		coke.setPrice(cokePrice);
		coke.setCount(cokeCount);
		
		chip.setMenu("감자칩");
		chip.setPrice(chipPrice);
		chip.setCount(chipCount);
		
		bagel.setMenu("베이글");
		bagel.setPrice(bagelPrice);
		bagel.setCount(bagelCount);
		
		salad.setMenu("샐러드");
		salad.setPrice(saladPrice);
		salad.setCount(saladCount);
		
		coffee.setMenu("커피");
		coffee.setPrice(coffeePrice);
		coffee.setCount(coffeeCount);
		
		List<BurgerKingBean> list = new ArrayList<>();
		list.add(hamburger);
		list.add(coke);
		list.add(coffee);
		list.add(salad);
		list.add(bagel);
		list.add(chip);
		
		int res = 0;
%>
		<div style="width: 400px; height: 300px; margin: 0 auto;">
			<p>
			식사형태 : <%= place%><br/>				
			주문한 품목  <br/>
<% 						
					for(BurgerKingBean s : list){
						if(!s.getCount().equals("") ){
						%>	<%= s.toString()%> <br/>  <%
							res += Integer.parseInt(s.getCount())*Integer.parseInt(s.getPrice());
						}
					}	
%>	
			<br/>-------------------------------------------<br/>
			총 결제금액 : <%= res %>
					
			</p>
		</div>
	</article>
	</section>
<%@ include file="../common/footer.jsp" %>
</body>
<script src="../../js/burgerking/burgerking_result.js"></script>
</html>