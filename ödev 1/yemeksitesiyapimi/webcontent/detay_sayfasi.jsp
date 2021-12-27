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
    <jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
      
    <%
  int id=Integer.parseInt(request.getParameter("idyemekler"));
    
  String gelenId=(String)session.getAttribute("idyemek");
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
                       <% String uyead = (String) session.getAttribute("uyead"); %>
           <%=uyead%>
                        <li class="scroll active"><a href="kullanici_anasayfa.jsp">ANASAYFA</a></li> 
                                                
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
    <% 
						ResultSet rs=sayiCrud.yemeklisteleAllData(id); 
                         if(rs!=null)
                         {
                             while(rs.next())
                             {
                                 %>
    
 
  
        <div class="container">
        <div class="section-header">
               
                <iframe class="img-fluid" width="560" height="315" src="<%=rs.getString("video") %>" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
            </div>

            <div class="section-header">
                <h2 style="    font-size: 25px;"  class="section-title text-center wow fadeInDown"><%=rs.getString("yemekad") %></h2>
                
            </div>
            
            
   
            <div class="section-header">
                <h5 style="    font-size: 25px;"  class="section-title text-center wow fadeInDown" >MALZEMELER:</h5>
                <p class=" text-center "><%=rs.getString("yemekmalzeme") %></p>
                
            </div>
            
            <div class="section-header">
            <h5 style="    font-size: 25px;" class="section-title text-center wow fadeInDown">YEMEK YAPILIŞI:</h5>
                <p class="text-center "><%=rs.getString("yemekyapilis") %></p>
                
            </div>
   
          
               

                 <% 
                             }
                         }
                        %> 
                    


               
             
            </div>
            
        
        </div>
            
              
    </section><!--/#about-->

 

 
 
                       
                        </div>
                    </div>
                </div>
            </div>
        </div>

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