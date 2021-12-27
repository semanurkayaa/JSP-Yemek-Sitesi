<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<% request.setCharacterEncoding ("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
 <title>YEMEKKK</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
    <%
int id=Integer.parseInt(request.getParameter("idyemekler"));
    
  String gelenId=(String)session.getAttribute("idyemek");
 /*  System.out.print("id"+gelenId);
    
    
int kategoriId=0;
String resim="Almadi";
String yemekad="Almadi";
String yemekmalzeme="Almadi";
String yemekyapilis="Almadi";
String video="Almadi";
ResultSet rs=sayiCrud.yemeklisteleAllData(id);
if (rs.next()){
	kategoriId=rs.getInt("kategoriId");
	resim=rs.getString("resim");
	yemekad=rs.getString("yemekad");
	yemekmalzeme=rs.getString("yemekmalzeme");
	yemekyapilis=rs.getString("yemekyapilis");
	video=rs.getString("video");
	session.setAttribute("idyemekler",id);
	System.out.print(resim);
	System.out.print(kategoriId);
	System.out.print(yemekad);
	System.out.print(yemekmalzeme);
	System.out.print(yemekyapilis);
	System.out.print(video);
}
 */


%>
</head>
<body>

<table>
						
						<tbody>
						<% 
						ResultSet rs=sayiCrud.yemeklisteleAllData(id); 
                         if(rs!=null)
                         {
                             while(rs.next())
                             {
                                 %>
                                 
								<tr>
									<tr>
    <td><%=rs.getString("yemekad") %></td>
    <td><%=rs.getString("yemekmalzeme") %></td>
    <td><%=rs.getString("yemekyapilis") %></td>
    <td><%=rs.getString("kategoriId") %></td>
    <td> <img src="<%=rs.getString("resim") %>" width="100" height="100"/></td><br><br>
    
    <td><iframe class="img-fluid" width="560" height="315" src="<%=rs.getString("video") %>" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></td>
									
								</tr>
                                  
                                 <% 
                             }
                         }
                        %> 
								
						</tbody>
					</table>

 

</body>
</html>