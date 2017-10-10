<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language = "javascript">
<!--
	function checkValid() {
		if (form1.username.value == "") {
			window.alert("Please enter username");
			return false;
		}
		if (form1.password.value == "") {
			window.alert("Please enter password"); 
			return false;
		}
		return true;
	}
-->	
</script>
<title>Login</title>
</head>
<body>
<div>
	<center>
	<br><h1>Login</h1> <br><br>
	<hr><br>
	<form name = "form1" action = "loginCheck.jsp" method = "post">
		Username: <input type = "text" name = "username"> <br><br>
		Password: <input type = "password" name = "password"> <br><br>
		<input type = "submit" value = "Submit" onclick = "return checkValid();"> &nbsp&nbsp
		<input type = "submit" value = "Reset">
		<br><br>
		<a href = "createNewUser.jsp">Create New User</a> &nbsp&nbsp
		<a href = "forgetPassword.jsp">Forget Password</a><br><br>
	</form>
	</center>
</div>
<hr>
<div>
<center>
Group Members: <br>
Beibei Wang <br>
Siyu Chen <br>
Hao Liu <br>
Yucheng Wang <br>
Henqin Zhao <br>
Yiran Niu
</center>
</div>
</body>
</html>