<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>main</title>
	<link rel="shortcut icon" href="../img/favicon.ico" />
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
	<script src="../js/index.js"></script>
</head>
<body>
<div id="wrapper">
	<header id="index_header">
		<h1><a id="home_text">BIT CAMP SAMPLE PROJECT</a></h1>
	</header>
	<section id="index_section">
		<article>
			<table id="index_table">
				<tr id="first_child">
					<td colspan="5">
						<form action="burgerking/main.jsp">
							<table id="index_login_box" >
			 					<tr>
			 						<td > 
			 						<input id="index_input_id" type="text" name="id" placeholder="id"/>
			 						</td>
			 						<td  rowspan="2">
				 						<button id="index_login_btn">로그인</button>
									</td>
			 					</tr>
			 					<tr>
			 						<td >
			 						<input id="index_input_pw" type="text" name="pw" placeholder="pw"/>
			 						</td>
			 					</tr>
			 				</table>
						</form>
						<a id="go_admin_link" href="#">관리자</a>
						<a id="go_join_link" href="#">회원가입</a>
						<!--값을 넘겨줄 것이 없는건 a태그+js외부파일  -->
					</td>
				</tr>
			</table>	
		</article>
	</section>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>