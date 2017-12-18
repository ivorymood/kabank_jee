<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp" %>
<%@ include file="common/top.jsp" %>
	<tr style = "height: 80%">
		<td colspan="5">
			<form action="burgerking/main.jsp">
				<table id="Login-box" style="margin: 0 auto;">
 					<tr>
 						<td style="width:200px">
 						<input type="text" name="id" placeholder="id"/>
 						</td>
 						<td  rowspan="2">
 						<input type="submit" value="로그인" style="width:100px; height:100px"/>
						</td>
 					</tr>
 					<tr>
 						<td>
 						<input type="text" name="pw" placeholder="pw"/>
 						</td>
 					</tr>
 				</table>
			</form>
<%@ include file="common/footer.jsp" %>