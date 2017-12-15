<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Index</title>
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
		width : 100%; height: 30px; border: 2px solid gray;
	}
	</style>
</head>
<body>

<!--  table>tr*3>td*5 치고 tab쳤더니 아래처럼 나옴!!-->
<table>
	<tr style = "height: 10%">
		<td colspan="5">네비게이션</td>
	</tr>
	<tr style = "height: 10%">
		<td style="width:20%; text-align: center;">버거킹</td>
		<td style="width:20%; text-align: center;">카카오뱅크</td>
		<td style="width:20%; text-align: center;">비트캠프</td>
		<td style="width:20%; text-align: center;">SK 텔레콤</td>
		<td style="width:20%; text-align: center;">로또</td>
	</tr>
	<tr style = "height: 80%">
		<td colspan="5">
			<div style = "width : 300px; height: 200px; margin: 0 auto;">	
		<!-- 감싸는 녀석(=division), 속성값은 그냥 스페이스(빈공간)이 end의 의미다 -->
			<p>
				햄버거 : ￦5,500 <br/>
				콜라 : ￦1,000 <br />
				감자칩 : ￦1,000 <br />
				커피 : ￦900 <br />
			</p>
			<form action="result.jsp">			
				<input type="text" name = "menu" placeholder="메뉴"/><br />
				<input type="text" name = "count" placeholder="수량"/> <br />
				<input type="hidden" name = "hamburger" value="5500" />
				<input type="hidden" name = "coke" value="1000" />
				<input type="hidden" name = "chip" value="1000" />
				<input type="hidden" name = "coffee" value="900" />
				<input type="submit" value="전  송"/>
			</form>
			</div>		
		</td>
	</tr>
</table>
</body>
</html>