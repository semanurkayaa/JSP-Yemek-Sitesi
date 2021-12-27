<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
 
    <title>KULLANICI GÝRÝÞ</title>

    <!-- Icons font CSS-->
    <link href="colorlib-regform-2/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="colorlib-regform-2/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="colorlib-regform-2/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="colorlib-regform-2/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="colorlib-regform-2/css/main.css" rel="stylesheet" media="all">
</head>
<body>
 <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">KULLANICI GÝRÝÞ</h2>
                     <form action="kullanici_islemler.jsp" method="POST">
                     
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="KULLANICI ADI" name="uyead" required="">
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                
                            </div>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        
                                        <div class="select-dropdown"></div>
                                    </div>
                        </div>
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                
                                    <input class="input--style-2" type="password" placeholder="KULLANICI ÞÝFRE" name="uyesifre" required="">
                                    
                                
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                         <button class="btn btn--radius btn--green" type="submit">GÝRÝÞ YAPABÝLÝRSÝNÝZ</button>
                       
                    </form>

                     
                
                     <br><br>
                     
                        <a href="kayit_sayfa.jsp" class="btn btn--radius btn--green">YOKSA HALA ÜYE DEÐÝL MÝSÝNÝZ?</a>
                         
                        
                                 
                    
                     
                     
                    
                </div>
            </div>
        </div>
    </div>
    <script src="colorlib-regform-2/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="colorlib-regform-2/vendor/select2/select2.min.js"></script>
    <script src="colorlib-regform-2/vendor/datepicker/moment.min.js"></script>
    <script src="colorlib-regform-2/vendor/datepicker/daterangepicker.js"></script>
    <!-- Main JS-->
    <script src="colorlib-regform-2/js/global.js"></script>
</body>

</html>