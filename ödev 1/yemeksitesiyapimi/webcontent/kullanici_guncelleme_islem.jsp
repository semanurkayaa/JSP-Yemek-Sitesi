<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="sayiNesnesi" class="yemeksitesiyapimi.kategoribilgisi" scope="session" ></jsp:useBean>
<jsp:useBean id="islemler" class="yemeksitesiyapimi.kategoriveriler" scope="session"></jsp:useBean>
</head>
<body>

<%
String uyead=request.getParameter("uyead");
String uyesifre=request.getParameter("uyesifre");
String uyemail=request.getParameter("uyemail");


//int id=Integer.parseInt(String.valueOf(session.getAttribute("iduyeler")));
    String eskiSifre=request.getParameter("uyesifre");
    String yeniSifre=request.getParameter("yeniSifre");
    String yeniSifreTekrar =request.getParameter("yeniSifreTekrar");
   
    System.out.println(eskiSifre);
    System.out.println(yeniSifre);
    System.out.println(yeniSifreTekrar);
    int kaid = (int) session.getAttribute("");
    System.out.println("KULLANICI İD +"+kaid);
    ResultSet rs=islemler.uyeselectData(kaid);
    if(rs.next()){
    	String sifre=rs.getString("uyesifre");
    	if(eskiSifre.equals(sifre)){
    		if(yeniSifre.equals(yeniSifreTekrar)){
    			sayiNesnesi.setuyesifre(yeniSifreTekrar);

                sayiNesnesi.setuyead(uyead);

                sayiNesnesi.setuyemail(uyemail);
    			
    			boolean islemSonucu=islemler.kullaniciupdateData(sayiNesnesi,kaid);
    			if (islemSonucu==true)
    				out.println("Güncelleme İşlemi kaydedilmiştir...");
    				response.sendRedirect("kullanici_anasayfa.jsp" );
    		}
    	}
    }
%>
</body>
</html>