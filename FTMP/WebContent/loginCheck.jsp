<%@ page language="java" import = "java.util.*, java.sql.*, com.sp.model.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginCheck</title>
</head>
<body>

	<%
	
		String username = request.getParameter("username");
	
		String password = request.getParameter("password");
		
		UserBeanProcess ubp = new UserBeanProcess();
		
		if (ubp.checkUserValid(username, password)) {
			response.sendRedirect("portfolio.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
		
	%>
</body>
</html>