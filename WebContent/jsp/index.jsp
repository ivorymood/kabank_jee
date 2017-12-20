<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>main</title>
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
</head>
<body>
<div id="wrapper">
	<header id="index_header">
		<a href="../index.jsp" style="margin-left: 50px">HOME</a>
	</header>
<%@ include file="common/nav.jsp" %>
	<section id="index_section">
		<article>
			<table id="index_table">
				<tr id="first_child">
					<td colspan="5">
						<form action="burgerking/main.jsp">
							<table id="index_login_box" >
			 					<tr>
			 						<td id="index_input_id"> 
			 						<input type="text" name="id" placeholder="id"/>
			 						</td>
			 						<td id="index_input_pass" rowspan="2">
				 						<input type="submit" value="로그인" id="index_input_pw"/>
									</td>
			 					</tr>
			 					<tr>
			 						<td id="index_input_btn">
			 						<input type="text" name="pw" placeholder="pw"/>
			 						</td>
			 					</tr>
			 				</table>
						</form>
						<a href="member/join.jsp">회원가입</a>
					</td>
				</tr>
			</table>	
		</article>
	</section>
<%@ include file="common/footer.jsp" %>
</div>
</body>
</html>