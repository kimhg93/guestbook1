<%@page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String name =request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	
	GuestBookVo vo = new GuestBookVo();		
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);	
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath()+"/index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록 되었습니다</h1>
</body>
</html>