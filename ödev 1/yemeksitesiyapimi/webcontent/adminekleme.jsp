<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
</head>
<body>

<form action="admin_ekleme_islem.jsp" method="post">
<br>
<label>ADMİN ADI </label>

<div> 
           
        <input type="text" class="form-control" id="adminad" name="adminad" required="" />
        </div><br>
        <label>ADMİN ŞİFRE </label>
        <div><input type="text" class="form-control" id="adminsifre" name="adminsifre" required="" /></div>
     
     <label>ADMİN MAİL </label>
        <div><input type="text" class="form-control" id="adminmail" name="adminmail" required="" /></div>
    
 <div style="margin-top:20px">
        <button class="btn btn-info" id="btn1" >YENİ ADMİN  EKLE</button>
    </div></form>
    <script>
        $('#btn1').click(function () {
            alert('ADMİN EKLEME İŞLEMİ BAŞARIYLA YAPILDI...');

        });
    </script>

</body>
</html>


