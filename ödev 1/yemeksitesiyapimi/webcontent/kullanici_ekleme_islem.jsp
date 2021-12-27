<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding ("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler" scope="page"></jsp:useBean>
<jsp:useBean id="sayiNesnesi" class="yemeksitesiyapimi.kategoribilgisi" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
String uyead=request.getParameter("uyead");
String uyesifre=request.getParameter("uyesifre");
System.out.println(uyead);
System.out.println(uyesifre);

sayiNesnesi.setuyead(uyead);
sayiNesnesi.setuyesifre(uyesifre);
sonuc = sayiCrud.uyeekle(sayiNesnesi);

if (sonuc == true)
	out.println("Veriler kaydedildi...");
response.sendRedirect("uye_giris.jsp");
%>


</body>
</html>