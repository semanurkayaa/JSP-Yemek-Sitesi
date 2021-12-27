<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
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
String duyurubaslik=request.getParameter("duyurubaslik");
String duyuruicerik=request.getParameter("duyuruicerik");

out.println(duyurubaslik);
out.println(duyuruicerik);

sayiNesnesi.setduyurubaslik(duyurubaslik);
sayiNesnesi.setduyuruicerik(duyuruicerik);
sonuc=sayiCrud.duyuruekle(sayiNesnesi);

if(sonuc==true)
	out.println("Veriler kaydedildi...");
    response.sendRedirect("duyuru_listele.jsp");
%>
</body>

<table class="table table-bordered">
	<nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">NEFiS YEMEK TARiFLERi</a>
            </div>
            <ul class="nav navbar-nav">
                 <li><a href="admin_listele.jsp">ADMİN İŞLEMLERİ</a></li>
                <li><a href="uye_listele.jsp">ÜYELER</a></li>
                <li><a href="kategori_listele.jsp">KATEGORİLER</a></li>
                <li><a href="yemek_listele.jsp">YEMEKLER</a></li>
                <li><a href="duyuru_listele.jsp">DUYURULAR</a></li>
                <li><a href="iletisim_listele.jsp">İLETİŞİM</a></li>
                <li id="Log-out-li"><a href="/anasayfa/LogOut/">ÇIKIŞ</a></li>
            </ul>
        </div>
    </nav>
    </table>
</html>






