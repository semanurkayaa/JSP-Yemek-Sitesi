<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<% request.setCharacterEncoding ("UTF-8"); %>
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
boolean sonuc=false;
session.setAttribute("uyead", request.getParameter("uyead"));
    //int id=Integer.parseInt(String.valueOf(session.getAttribute("iduyeler")));
    String ad = request.getParameter("uyead");
    String sifre = request.getParameter("uyesifre");
    int i=0;
    int satir=0;
    System.out.println(ad);
    System.out.println(sifre);
    ResultSet rs=islemler.kullanicilectData();
    	while(rs.next())
    	{
    		satir+=1;
    		String dbad=rs.getString("uyead");
    		String dbsf=rs.getString("uyesifre");
    	
    		
    	if(ad.equals(dbad)&& sifre.equals(dbsf))
    	{
    	int id=rs.getInt("iduyeler");
    	
    	System.out.println("giden kullanıcı id"+id);
    	
    	System.out.println("Welcome ");
    	response.sendRedirect("kullanici_anasayfa.jsp" );
    	session.setAttribute("",id);
    	break;
    	}
    	else if(!ad.equals(dbad)&& !sifre.equals(dbsf))
    	{
    		i+=1;   		   		    		
    	
    	}
    	       
    	}
    	if (i==satir){
    		System.out.println("Invalid password or username."); 
    		response.sendRedirect("errorpage.jsp" );
    	}
    %>
</body>
</html>