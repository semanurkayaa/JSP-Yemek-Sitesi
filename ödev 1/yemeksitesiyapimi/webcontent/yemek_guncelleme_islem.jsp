<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding ("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
<jsp:useBean id="sayiNesnesi" class="yemeksitesiyapimi.kategoribilgisi" scope="session" ></jsp:useBean>
<jsp:useBean id="islemler" class="yemeksitesiyapimi.kategoriveriler" scope="session"></jsp:useBean>
</head>
<body>
<%
int kategoriId=(Integer.parseInt(request.getParameter("katgorisec")));

String yemekad=request.getParameter("yemekad");
String video=request.getParameter("video");
String yemekmalzeme=request.getParameter("yemekmalzeme");
String yemekyapilis=request.getParameter("yemekyapilis");
String resimyolu=request.getParameter("resimm");
String resimyol=resimyolu.replace("\\","\\\\");

System.out.println("KATEGORİ İD  = "+kategoriId);
System.out.println(yemekad);
System.out.println(video);
System.out.println(yemekmalzeme);
System.out.println(resimyol);
sayiNesnesi.setkategoriId(kategoriId);
sayiNesnesi.setyemekad(yemekad);
sayiNesnesi.setyemekmalzeme(yemekmalzeme);
sayiNesnesi.setyemekyapilis(yemekyapilis);
sayiNesnesi.setvideo(video);
sayiNesnesi.setresim(resimyol);

//out.println(String.valueOf(session.getAttribute("id_no"))); 
int idyemekler=Integer.parseInt(String.valueOf(session.getAttribute("idyemekler")));
System.out.println("yemek İD  = "+idyemekler);
boolean islemSonucu=islemler.yeniyemekupdateData(sayiNesnesi,idyemekler,kategoriId,yemekad);
if (islemSonucu==true)
	out.println("Basariyla kaydedilmistir...");
    response.sendRedirect("yemek_listele.jsp");
%>
</body>
</html>