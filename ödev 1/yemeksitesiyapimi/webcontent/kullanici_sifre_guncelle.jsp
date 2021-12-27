<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="webthemez">
    
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.transitions.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet"> 
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico"> 
    <link rel="stylesheet" type="text/css" href="adminguncellecss/admin.css">
    <jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
       <%
//int id=Integer.parseInt(request.getParameter("iduyeler"));

String uyead="Almadi";
String uyesifre="Almadi";
String uyemail="Almadi";
int kaid = (int) session.getAttribute("");
System.out.println("KULLANICI ıd 111  +"+kaid);
ResultSet rs=sayiCrud.kullanicisifrebelirlemeselectData(kaid);
if (rs.next()){
	uyead=rs.getString("uyead");
	uyesifre=rs.getString("uyesifre");
	uyemail=rs.getString("uyemail");
 //	session.setAttribute("iduyeler",id);
}
%>
      
  
</head> 

<body id="home">


    <header id="header">
        <nav id="main-nav" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                       
                        <li class="scroll active"><a href="kullanici_anasayfa.jsp">ANASAYFA</a></li> 
                                                
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
    
            
              
   <div id="main">
<div class="container">
  <form action="kullanici_guncelleme_islem.jsp" method="post">
   <div>
   <label>ÜYE ADI </label>
	<div> 
        <input type="text" class="form-control" id="uyead" name="uyead" value="<%=uyead%>"/>
      
    </div>
     <div><br>
   <label>ÜYE ŞİFRE</label>
	<div> 
        <input type="password" class="form-control" id="uyesifre" name="uyesifre"/>
      
    </div>
      <label for="psw">YENİ ŞİFRE</label>
  <input type="password" id="yeniSifre" name="yeniSifre" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  required>
    
      <label for="psw">YENİ ŞİFRE TEKRAR  </label>
  <input type="password" id="yeniSifretekrar" name="yeniSifreTekrar"  required>
    
      <div><br>
   <label>ÜYE MAİL</label>
	<div> 
        <input type="text" class="form-control" id="uyemail" name="uyemail" value="<%=uyemail%>"/>
      
    </div>
     
    
    
    <div style="margin-top:20px">
       <input type="submit" class="btn btn-primary" value="Submit">
    </div>
    </div>
  </form>
  <div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
</div>
</div>
  <script>
var myInput = document.getElementById("yeniSifre");
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

    <script>
        $('#btn1').click(function () {
            alert('ŞİFRE GÜNCELLEME İŞLEMİ BAŞARIYLA YAPILDI..');

        });
    </script>
    

 

 
 

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
 <script src="contact/jqBootstrapValidation.js"></script>
 <script src="contact/contact_me.js"></script>
    <script src="js/contact.js"></script>
    <script src="js/custom-scripts.js"></script>
</body>
</html>