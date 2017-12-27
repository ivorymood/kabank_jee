<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>admin</title>
	<link rel="stylesheet" href="../../css/common.css" />
	<link rel="stylesheet" href="../../css/add_member.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
	<section id="wrapper">
		<article id="admin_header">
			<h1>관리자 메인 페이지</h1>
		</article>
	<aside id="admin_aside">
		<a>회원관리</a>
	</aside>
		<article id="admin_body">
			<table id="member_table" >
				<tr>
					<td><i class="fa fa-chevron-right"></i>ID</td>
					<td><input id="id" type="text" /></td>
				</tr>
				<tr>
					<td><i class="fa fa-chevron-right"></i>이    름</td>
					<td><input id="name" type="text" /></td>
				</tr>
				<tr>
					<td><i class="fa fa-chevron-right"></i>생년월일</td>
					<td><input id="pass" type="text" /></td>
				</tr>
				<tr>
					<td><i class="fa fa-chevron-right"></i>성    별</td>
					<td><input id="gender" type="text" /></td>
				</tr>
				<tr>
					<td><i class="fa fa-chevron-right"></i>전화번호</td>
					<td><input id="phone" type="text" /></td>
				</tr>
				<tr>
					<td><i class="fa fa-chevron-right"></i>이 메 일</td>
					<td><input id="email" type="text" /></td>
				</tr>
				<tr>
					<td><i class="fa fa-chevron-right"></i>주    소</td>
					<td><input id="addr" type="text" /></td>
				</tr>
			</table> <br/>
			<button id="add_member_btn">추가</button>
		</article>
	</section>
<%@ include file="../common/footer.jsp" %>
</body>
	<script src="../../js/add_member.js"></script>

</html>