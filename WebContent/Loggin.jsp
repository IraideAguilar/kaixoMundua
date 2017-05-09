<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
final String USER = "iraide";
final String PASS = "1234";
//pass definitu
String jasotako_user = request.getParameter("user");
String jasotako_pass= request.getParameter("user");

if(jasotako_pass.equals(PASS) && jasotako_user.equals(USER)){
   out.println("ondo");
}else{
	out.println("txarto");
	
}

//jasotako_user == USER eta jasotako_pass == PASS
//pantaila ondo idatzi
//bestela pantailan txarto isatzi
%>

</body>
</html>