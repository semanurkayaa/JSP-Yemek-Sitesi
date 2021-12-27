<%@ page language="java"%>
<% request.setCharacterEncoding ("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
</head>
<body>
<% 
 
  String gelenDeger=request.getParameter("yemekad"); 
  ResultSet rs=sayiCrud.likearama(gelenDeger); 
  System.out.println(gelenDeger);
  if(rs!=null)
  {
  while(rs.next())
  {
  %>
  <tr>
  <td class="column1"> AD = <%=  rs.getString("yemekade") %> </td> <br>
  <td class="column2"> SOYAD = <%=  rs.getString("yemekmalzeme")%>  </td>  <br>
  <td class="column3">MAİL=<%=  rs.getString("yemeklyapilis") %></td>  <br>
  <td class="column3">CİNSİYET =<%=  rs.getString("resim") %></td>   <br>
  </tr>
  <% 
     }
    }
    %>
</body>
</html>