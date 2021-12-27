<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8" />
<title>Insert title here</title>
<jsp:useBean id="sayiNesnesi" class="yemeksitesiyapimi.kategoribilgisi" scope="session" ></jsp:useBean>
<jsp:useBean id="islemler" class="yemeksitesiyapimi.kategoriveriler" scope="session"></jsp:useBean>
</head>
<body>

<%

String uyead=request.getParameter("uyead");
String uyesifre=request.getParameter("uyesifre");
String uyemail=request.getParameter("uyemail");
sayiNesnesi.setuyead(uyead);
sayiNesnesi.setuyesifre(uyesifre);
sayiNesnesi.setuyemail(uyemail);
//out.println(String.valueOf(session.getAttribute("id_no")));

int id=Integer.parseInt(String.valueOf(session.getAttribute("iduyeler")));
boolean islemSonucu=islemler.uyeupdateData(sayiNesnesi,id);
if (islemSonucu==true)
	out.println("Basariyla kaydedilmistir...");
    response.sendRedirect("uye_listele.jsp");
%>

</body>
</html>