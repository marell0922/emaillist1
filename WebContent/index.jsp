<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.douzon.emaillist.dao.*"
    import="com.douzon.emaillist.vo.*"
    import="java.util.*"
    %>
    <% EmaillistDao dao=new EmaillistDao(); 
    	List<EmaillistVo> list=dao.getList();
    	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	<!-- 메일정보 리스트 -->
	<%for(int i=0; i< list.size();i++){ 
	EmaillistVo emaillistVo=list.get(i); %>
	<table border="1" cellpadding="5" cellspacing="2">
		<tr>
			<td align=right>First name: </td>
			<td><%= emaillistVo.getFirstName()%></td>
		</tr>
		<tr>
			<td align=right width="110">Last name: </td>
			<td width="110"><%= emaillistVo.getLastName() %></td>
		</tr>
		<tr>
			<td align=right>Email address: </td>
			<td><%= emaillistVo.getEmail()%></td>
		</tr>
	</table>
	</br>
	<%} %>
	<br>
	<p>
		<a href="form.jsp">추가메일 등록</a>
	</p>
	<br>
</body>
</html>