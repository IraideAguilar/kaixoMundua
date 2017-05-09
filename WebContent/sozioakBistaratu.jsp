<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sozioak Bistaratu</title>
</head>
<body>

<%@ page import="eus.liburutegi.modelo.*" %>
<%@ page import="java.sql.*" %>
<% 
SocioModelo socioModelo = new SocioModelo();
 %>
 
   <table style="width:100%">
     <tr>
        <th>nombre</th>
        <th>apellido</th>
        <th>direccion</th>
        <th>poblacion</th>
        <th>provincia</th>
        <th>dni</th>
     </tr>
     <%
ArrayList<Socio> socios = socioModelo.select();
for (int i=0;i<socios.size();i++)
{
   out.println("<tr>");
   out.println("<td>"+socios.get(i).getNombre()+"</td>");
   out.println("<td>"+socios.get(i).getApellido()+"</td>");
   out.println("<td>"+socios.get(i).getDireccion()+"</td>");
   out.println("<td>"+socios.get(i).getPoblacion()+"</td>");
   out.println("<td>"+socios.get(i).getProvincia()+"</td>");
   out.println("<td>"+socios.get(i).getDni()+"</td>");
   out.println("<td>"+socios.get(i).getDni()+"</td>");
   out.println("<td><a href='BorrarSocio.jsp?id=" + socios.get(i).getId()+ "'>ezabatu</a></td>" );
   out.println("<td><a href='updateForm.jsp?id=" + socios.get(i).getId()+ "'>update</a></td>" );
   out.println("</tr>");	
}
%>
 
    </table>

</body>
</html>