<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.domain.MemberBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>JOIN</title>
	<link rel="stylesheet" href="../../css/common.css" />
	<link rel="stylesheet" href="../../css/member.css" />
</head>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<div id="wrapper">
	<section>
		<article>
			<header id="join_second_header">
				<hgroup>
					<h1>MEMBER JOIN</h1>
					<h2>일반회원가입</h2>
				</hgroup>
			</header>
		</article>
		<aside id="join_aside">
			아이디<br/>
			이름<br/>
			주민번호<br/>
			이메일<br/>
			연락처<br/>
			비밀번호<br/>
			비밀번호 확인<br/>
			주소<br/><br/>
			사진등록<br/>
		</aside>
		<form action="result.jsp">
			<article id="join_prg">
				<input type="text" name="id"/> <input type="submit" name="id_check" value="아이디 중복 확인"/>
				* 영문소문자로 시작하는 6~12자 영문소문자 또는 숫자 (공백, 특수문자 불가)<br/>
				<input type="text" name="name"/> * 반드시 실명을 입력해 주세요.<br/>
				<input type="text" name="ssn1"/> - <input type="text" name="ssn2"/> * 생년월일과 앞번호만 입력<br/>
				<input type="text" name="email1"/> @ <input type="text" name="email2"/> 
				<select name="email" id="email">
					<option value="">직접입력</option>
					<option value="gmail.com">gamil.com</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="daum.net">daum.net</option>
				</select>
				<input type="submit" name="eamil_search" value="중복 확인"/><br/>
				<select name="phone1" id="phone1">
					<option value="">선택</option>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="02">02</option>
				</select> - <input type="text" name="phone2"/> - <input type="text" name="phone3"/><br/>
				<input type="text" name="pass"/> * 영문소문자, 영문소문자 + 숫자 6~12자 내외 (공백, 특수문자 불가)<br/>
				<input type="text" name="repass"/> <br/>
				<input type="text" name="addr1"/> <input type="submit" name="addr_search" value="주소 검색"/> <br/>
				<input type="text" name="addr2"/> <input type="text" name="addr3"/> <input type="text" name="addr4"/><br/>
				<input type="file" name="profile"/> <input type="submit" value="사진 등록" /> <br/>
			</article>
		</form>
	</section>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
<script src="../../js/member.js"></script>
</html>