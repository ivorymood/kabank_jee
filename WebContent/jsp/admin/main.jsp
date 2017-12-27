<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>admin</title>
	<link rel="stylesheet" href="../../css/common.css" />
	<link rel="stylesheet" href="../../css/admin.css" />
</head>
<body>
	<section id="wrapper">
		<article id="admin_header">
			<h1>관리자 메인 페이지</h1>
		</article>
	<aside id="admin_aside">
		<a id="member_mgmt_link">회원관리</a>
	</aside>
		<article id="admin_body">
			<table id="admin_table" >
				<tr>
					<td>
						<button id="create_table_btn">테이블 생성</button>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table> 
		</article>
	</section>
<%@ include file="../common/footer.jsp" %>
</body>
	<script src="../../js/admin.js"></script>

</html>