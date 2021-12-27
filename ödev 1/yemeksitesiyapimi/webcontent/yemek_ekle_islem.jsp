<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding ("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler" scope="page"></jsp:useBean>
<jsp:useBean id="sayiNesnesi" class="yemeksitesiyapimi.kategoribilgisi" scope="page" ></jsp:useBean>

<%
boolean sonuc=false;
String yemekad=request.getParameter("yemekad");

String yemekmalzeme=request.getParameter("yemekmalzeme");
String yemekyapilis=request.getParameter("yemekyapilis");


int kategoriId=(Integer.parseInt(request.getParameter("kategorisec")));
String video=request.getParameter("video");
String resim=request.getParameter("resimm");


String resimyol=resim.replace("C:\\Users\\user1\\eclipse-workspace\\yemeksitesiyapimi\\webcontent\\","");
String resimm=resimyol.replace("\\","\\\\");

System.out.println("ad "+yemekad);

System.out.println("malzeme "+yemekmalzeme);
System.out.println("yapılıs "+yemekyapilis);
System.out.println("video "+video);
System.out.println("kategori "+kategoriId);
System.out.println("resim "+resimm);

sayiNesnesi.setyemekad(yemekad);
sayiNesnesi.setyemekmalzeme(yemekmalzeme);
sayiNesnesi.setyemekyapilis(yemekyapilis);

sayiNesnesi.setkategoriId(kategoriId);
sayiNesnesi.setvideo(video);
sayiNesnesi.setresim(resimm);

sonuc = sayiCrud.yemekekle(sayiNesnesi);

if (sonuc == true)
	out.println("Veriler kaydedildi...");
response.sendRedirect("yemek_listele.jsp");
%>
</body>
</html>