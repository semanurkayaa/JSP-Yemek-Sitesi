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

String kategoriad=request.getParameter("kategoriad");
sayiNesnesi.setkategoriad(kategoriad);
//out.println(String.valueOf(session.getAttribute("id_no")));

int id=Integer.parseInt(String.valueOf(session.getAttribute("idkategori")));
boolean islemSonucu=islemler.updateData(sayiNesnesi,id);
if (islemSonucu==true)
	out.println("Basariyla kaydedilmistir...");
    response.sendRedirect("kategori_listele.jsp");
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