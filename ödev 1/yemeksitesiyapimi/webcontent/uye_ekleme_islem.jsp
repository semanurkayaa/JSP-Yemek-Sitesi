<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler" scope="page"></jsp:useBean>
<jsp:useBean id="sayiNesnesi" class="yemeksitesiyapimi.kategoribilgisi" scope="page" ></jsp:useBean>

<%
boolean sonuc=false;
String uyesifre=request.getParameter("uyesifre");
String uyead=request.getParameter("uyead");
String uyemail=request.getParameter("uyemail");
out.println(uyesifre);
out.println(uyead);
out.println(uyemail);

sayiNesnesi.setuyesifre(uyesifre);
sayiNesnesi.setuyead(uyead);
sayiNesnesi.setuyemail(uyemail);
sonuc=sayiCrud.uyeekle(sayiNesnesi);

if(sonuc==true)
	out.println("Veriler kaydedildi...");
    response.sendRedirect("uye_listele.jsp");
%>


</body>
</html>