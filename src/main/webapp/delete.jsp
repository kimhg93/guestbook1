<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	request.setCharacterEncoding("utf-8");

	String paramno =request.getParameter("no");
	String password = request.getParameter("password");
	Long no = Long.parseLong(paramno);
	
	GuestBookVo vo = new GuestBookVo();	
	vo.setNo(no);
	vo.setPassword(password);
	
	new GuestBookDao().delete(vo);
	
	response.sendRedirect(request.getContextPath()+"/index.jsp");
%>