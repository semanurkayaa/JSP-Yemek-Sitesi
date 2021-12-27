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

  //  int id=Integer.parseInt(String.valueOf(session.getAttribute("idadmin")));
    String ad = request.getParameter("adminad");
    String sifre = request.getParameter("adminsifre");
    int i=0;
    int satir=0;
    System.out.println(ad);
    System.out.println(sifre);
    ResultSet rs=islemler.adminselectAllData();
    	while(rs.next())
    	{
    		satir+=1;
    		String dbad=rs.getString("adminad");
    		String dbsf=rs.getString("adminsifre");
    	
    		
    	if(ad.equals(dbad)&& sifre.equals(dbsf))
    	{
    	int id=rs.getInt("idadmin");
    	
    	System.out.println(id);
    	
    	System.out.println("Welcome ");
    	response.sendRedirect("yemek_listele.jsp" );
    	 session.setAttribute("",id);
    	break;
    	}
    	else if(!ad.equals(dbad)|| !sifre.equals(dbsf))
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