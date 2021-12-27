<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		
		
		
		
		
		
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="colorlib-regform-19/colorlib-regform-19/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="colorlib-regform-19/colorlib-regform-19/css/style.css">
	</head>

	<body>

		<div class="wrapper" style="background-image: url('colorlib-regform-19/colorlib-regform-19/images/bg-registration-form-3.jpg');">
			<div class="inner">
					<h3>KULLANICI GİRİŞ</h3>
					<form action="kullanici_ekleme_islem.jsp" method="POST">
					<div class="form-group">
						<div class="form-wrapper">
						
							<label>KULLANICI ADI:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-account-o"></i>
								<input type="text" class="form-control" id="uyead" name="uyead" required="" >
							</div>
						</div>
						
					</div>
					<div class="form-group">
						<div class="form-wrapper">
							<label>ŞİFRE :</label>
							<div class="form-holder">
								<i class="zmdi zmdi-lock-outline"></i>
								<input type="password" class="form-control" id="uyesifre" name="uyesifre" required="" >
							</div>
							<br><br>
							 <button class="btn btn--radius btn--green" type="submit">KAYDOL</button>
                     
					
						</div>
						
						
						
						
						
						
						
						
					</div>
			     
						
						</div>
					</div>
					
						
						</div>
						
					</div>
				</form>
			</div>
		</div>
		
    
		
	</body>
</html>