<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<% request.setCharacterEncoding ("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="css1/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
            <%
int id=Integer.parseInt(request.getParameter("idyemekler"));

int kategoriId=0;
String resim="Almadi";
String yemekad="Almadi";
String yemekmalzeme="Almadi";
String yemekyapilis="Almadi";
String video="Almadi";
ResultSet rs=sayiCrud.yemekselectData(id);
if (rs.next()){
	kategoriId=rs.getInt("kategoriId");
	resim=rs.getString("resim");
	yemekad=rs.getString("yemekad");
	yemekmalzeme=rs.getString("yemekmalzeme");
	yemekyapilis=rs.getString("yemekyapilis");
	video=rs.getString("video");
	session.setAttribute("idyemekler",id);

%>
    </head>
    <body>
    <div id="layoutSidenav_content">
              
                <table class="table table-bordered">
	
    </table>
    <div id="main">
<div class="container">
  <form action="yemek_guncelleme_islem.jsp" method="post">
   
   <label>Yemek Ad</label>
	<div> 
        <input type="text" class="form-control" id="yemekad" name="yemekad" value="<%=yemekad%>"/>
      
    </div>
    
   <label>Yemek Malzeme</label>
	<div> 
        <input type="text" class="form-control" id="yemekmalzeme" name="yemekmalzeme" value="<%=yemekmalzeme%>"/>
      
    </div>
     
   <label>Yemek Yapılış</label>
   <div>
     <input type="text" class="form-control" id="yemekyapilis" name="yemekyapilis" value="<%=yemekyapilis%>"/>
     </div>
	 
     <div> 
      <input type="hidden" class="form-control" id="resimm" name="resimm" value="<%=rs.getString("resim")%>" />
       </div>
        
     <label>Video</label>
     <div>
     <input type="text" class="form-control" id="video" name="video" value="<%=video%>"/>
     </div>
       
       
 <div> 
        <input type="text" class="form-control" id="katgorisec" name="katgorisec" value="<%=rs.getInt("kategoriId")%>"/>    
    </div>
       
       <label>Kategori</label>
       <div>
       <select id="id" style="width: 400px; height: 40px;" >
     	<%
     	
    	ResultSet rsk=sayiCrud.selectAllData();     	
      	while(rsk.next()) 
      	{       	
		%>
		
		<%if (rsk.getInt("idkategori")==kategoriId){ %>
      	<option value="<%=rsk.getInt("idkategori")%>" selected="selected"><%=rsk.getString("kategoriad")%></option>
      		
      	<%} else{%>
      	<option value="<%=rsk.getInt("idkategori")%>"><%=rsk.getString("kategoriad")%></option>
      	<%}}} %></select></div>


 
   <label>Resim</label>
       <div>
        <input type="file" style="width: 400px; height: 40px;" id="resim" name="resim" >
        
       </div>
       
 <script>      
       
$(function(){
$("id").change(function() {
var deger = $(this).val();
$("#katgorisec").val(deger);
});
})
</script>

<script>
$(function(){
$("#resim").change(function() {
var deger = $(this).val();
$("#resimm").val(deger);
});
})
</script>
    
    
    <div style="margin-top:20px">
        <button class="btn btn-info" id="btn1">yemek Guncelle</button>
    </div>
   
  </form>
  </div>
  </div>
 

                    
                
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"></div>
                            <div>
                                <a href="#"></a>
                                &middot;
                                <a href="#"></a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
      
        <script src="js1/scripts.js"></script>
        
        <script src="assets1/demo/chart-area-demo.js"></script>
        <script src="assets1/demo/chart-bar-demo.js"></script>
        
        <script src="assets1/demo/datatables-demo.js"></script>
    </body>
</html>

    
    