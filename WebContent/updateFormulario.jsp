<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="eus.liburutegi.modelo.*" %>
<%@ page import="java.sql.*" %>

<form action="update.jsp" method="get">
<% int id = Integer.parseInt(request.getParameter("id"));

SocioModelo socioModelo = new SocioModelo();

Socio socio = socioModelo.select(id);
%>

Nombre: <input type="text" value=<%= socio.getNombre(); %>name="nombre" id="nombre"/>
Apellido: <input type="text" name="apellido" id="apellido"/>
Direccion: <input type="text" name="direccion" id="direccion"/>
Poblacion: <input type="text" name="poblacion" id="poblacion"/>
Provincia: <select name="provincia">
  <option value="bizkaia">Bizkaia</option>
  <option value="araba">Araba</option>
  <option value="gipuzkoa">Gipuzkoa</option>
</select>
DNI: <input type="text" name="dni" id="dni"/>
<br>
<br>
<input type="submit" name="guardar" value="guardar"/>
</form>
<a href="sozioakBistaratu.jsp">sozioakBistaratu</a>



</body>
</html>