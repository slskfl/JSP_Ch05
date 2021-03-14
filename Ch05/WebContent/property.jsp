<%@page import="com.ezen.javabeans.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberBean</title>
</head>
<body>
<jsp:useBean id="member" class="com.ezen.javabeans.MemberBean"></jsp:useBean>

	자바 빈 객체 생성 후 정보 출력하기<br>
	이름 : <%= member.getName() %><br>
	아이디 : <%= member.getUserId() %><br>
	닉네임 : <%= member.getNickName() %><br>
	비밀번호 : <%= member.getPwd() %><br>
	이메일 : <%= member.getEmail() %><br>
	연락처 : <%= member.getPhone() %><br>
	
	<br>
	<br>
	
	정보 변경 후 정보 출력하기<br>
	<%
		member.setName("니나");
		member.setUserId("nina");
	%>
	이름 : <%= member.getName() %><br>
	아이디 : <%= member.getUserId() %><br>
	
	<hr>
	자바 빈 객체 생성 후 정보 출력하기(액션태그)<br>
	<jsp:setProperty property="name" name="member" value="홍길동"/>
	<jsp:setProperty property="userId" name="member" value="hongkildong"/>
	
	이름 : <jsp:getProperty property="name" name="member"/><br>
	아이디 : <jsp:getProperty property="userId" name="member"/><br>
	
	
	
	
	
</body>
</html>