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
		<link rel="stylesheet" type="text/css" href="adminguncellecss/admin.css">
     
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
								<input type="password" class="form-control" id="uyesifre" name="uyesifre" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required="" >
							</div>
							<br><br>
							 <button class="btn btn--radius btn--green" type="submit">KAYDOL</button>	
						</div>	
						</div>
					</form>
					</div>
						</div>
	
  <div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
  </div>
	
		<script>
var myInput = document.getElementById("uyesifre");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }

  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>
		
		
    
		
	</body>
</html>