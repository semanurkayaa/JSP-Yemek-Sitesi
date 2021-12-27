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

 <jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
 
 <table class="table table-bordered" >
    <tr>
              <th>KATEGORI ADI</th>
        <th>GUNCELLE</th>
        <th>SIL</th>
      </tr>
<%
try{
String kategori=request.getParameter("kategori");

ResultSet rs=sayiCrud.yemekselectAllData();
while(rs.next()){
	String yemekad=rs.getString("yemekad");
	if(kategori.equals(yemekad)){
%>
<tr>
<td><%=rs.getString("yemekad")%></td>
<td><a href='kategori_guncelleme.jsp?idyemekler=<%=rs.getString("idyemekler")%>'>Update<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
<td><a href='kategori_sil.jsp?idyemekler=<%=rs.getString("idyemekler")%>'>Delete<span class="glyphicon glyphicon-remove" style="font-size:24px; color:red;"></span></a></td> 
</tr>
<%
	}}
}
catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>