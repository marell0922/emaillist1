<%@page import="com.douzon.emaillist.vo.EmaillistVo"%>
<%@page import="com.douzon.emaillist.dao.EmaillistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
    <%request.setCharacterEncoding("UTF-8");
    
    String firstName=request.getParameter("fn");
    String lastName=request.getParameter("ln");
    String email=request.getParameter("email");
    
    EmaillistVo vo=new EmaillistVo();
    vo.setFirstName(firstName);
    vo.setLastName(lastName);
    vo.setEmail(email);
    
    new EmaillistDao().insert(vo);
    
    response.sendRedirect("/emaillist1");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
등록 성공!
</body>
</html>