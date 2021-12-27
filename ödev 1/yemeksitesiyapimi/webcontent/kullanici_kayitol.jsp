<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<form action="kullanici_ekleme_islem.jsp" method="post">
<br>
<label>KULLANICI ADI </label>

<div> 
           
        <input type="text" class="form-control" id="uyead" name="uyead" required="" />
        </div><br>
        <label>KULLANICI ŞİFRE </label>
        <div><input type="text" class="form-control" id="uyesifre" name="uyesifre" required="" /></div>
     
        
      
    </div><br>
     
      
    </div>
    
    
    
    
    
    
    
    
    
  
  
  
  
    
    
  
    
 <div style="margin-top:20px">
        <button class="btn btn-info" id="btn1" >YENİ ÜYE EKLE</button>
    </div>
    <script>
        $('#btn1').click(function () {
            alert('ÜYE EKLEME İŞLEMİ BAŞARIYLA YAPILDI...');

        });
    </script>

</body>
</html>