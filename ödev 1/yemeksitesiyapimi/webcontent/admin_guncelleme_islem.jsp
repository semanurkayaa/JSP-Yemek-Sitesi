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
String adminad=request.getParameter("adminad");
String adminmail=request.getParameter("adminmail");


//out.println(String.valueOf(session.getAttribute("id_no")));

int id=Integer.parseInt(String.valueOf(session.getAttribute("idadmin")));
    String eskiSifre=request.getParameter("adminsifre");
    String yeniSifre=request.getParameter("yeniSifre");
    String yeniSifreTekrar =request.getParameter("yeniSifreTekrar");
   
    System.out.println(eskiSifre);
    System.out.println(yeniSifre);
    System.out.println(yeniSifreTekrar);
    ResultSet rs=islemler.adminsifrebelirlemeselectData(id);
    if(rs.next()){
    	String sifre=rs.getString("adminsifre");
    	if(eskiSifre.equals(sifre)){
    		if(yeniSifre.equals(yeniSifreTekrar)){
    			sayiNesnesi.setadminsifre(yeniSifreTekrar);

                sayiNesnesi.setadminad(adminad);

                sayiNesnesi.setadminmail(adminmail);
    			
    			boolean islemSonucu=islemler.adminupdateData(sayiNesnesi,id);
    			if (islemSonucu==true)
    				out.println("Güncelleme İşlemi kaydedilmiştir...");
    				response.sendRedirect("yemek_listele.jsp" );
    		}
    	}
    }
%>
</body>
</html>