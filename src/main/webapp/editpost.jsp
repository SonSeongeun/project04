<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="com.crud.BoardDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.crud.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();
	int i = boardDAO.updateBoard(u);
	String msg = "데이터 수정 성공 !";
	if(i == 0) msg = "[에러] 데이터 수정 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>