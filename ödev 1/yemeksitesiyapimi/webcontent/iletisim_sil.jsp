<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
</head>

<body>
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
                <li><a href="#">YORUMLAR</a></li>
                <li><a href="duyuru_listele.jsp">DUYURULAR</a></li>
                <li><a href="iletisim_listele.jsp">İLETİŞİM</a></li>
                <li id="Log-out-li"><a href="/anasayfa/LogOut/">ÇIKIŞ</a></li>
            </ul>
        </div>
    </nav>
    </table>
    <table id="myTable">
  <tr class="header">
    <th style="width:30%;"></th>
  
  </tr>
  <% 
int id=Integer.parseInt(request.getParameter("idiletisim"));
  
  boolean sonuc=sayiCrud.iletisimdeleteData(id);
  if (sonuc) {
	  response.sendRedirect("iletisim_listele.jsp");
	 
  %>
   <script>
        $('#btn1').click(function () {
            alert('Kategori Silme İşlemi Yapıldı.');

        });
    </script>
  <%} 
  else { %>
  <script>
        $('#btn1').click(function () {
            alert('Bir Hata Oldu Silinemedi.');

        });
    </script>
  <% } 
  %>
</table>
</body>
</html>