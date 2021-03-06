<%@page import="com.sun.jdi.Value"%>
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
    <title>Little Heart HTML5 Restaurant Template</title>
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
                       <% String uyead = (String) session.getAttribute("uyead"); 
                       int kaid = (int) session.getAttribute("");
                       System.out.println("KULLANICI ??D +"+kaid);
                       %>
           <%=uyead%>
                        <li class="scroll active"><a href="kullanici_anasayfa.jsp">ANASAYFA</a></li> 
                        <li class="scroll"><a href="#about">YEMEK TAR??FLER??</a></li>
                                   
                        <li class="scroll"><a href="#our-team">DUYURULAR</a></li>
                        <li class="scroll"><a href="#contact-us">??LET??????M</a></li>
                        <li class="scroll"><a href="kullanici_sifre_guncelle.jsp">AYARLAR</a></li>  
                        <li class="scroll"><a href="anasayfa_girisler.jsp">??IKI??</a></li> 
                                            
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="main-slider">
        <div class="owl-carousel">
            <div class="item" style="background-image: url(images/slider/bg1.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h2><span>LEZ??Z</span> YEMEKLER<span></h2>
                                    <p>Sizde bu lezzetli tariflerden faydalanmak ve mahrum kalmamak i??in hemen ??ye olun.Lezzetli yemeklerin tad??n?? ????kar??n.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
             <div class="item" style="background-image: url(images/slider/bg2.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h2><span>HEM HAF??F</span> HEM DE LEZZETL??</h2>
                                    <p>Hem midenizi d??????nd??k hem de sa??l??????n??z??. Sak??n hem sa??l??kl?? hem de nas??l lezzetli olacak diye d??????nmeyin o i?? bizde sadece bizimle birlikte tarifleri denemeye ne dersiniz? Ben fazla beklemeyin derim..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
        </div><!--/.owl-carousel-->
    </section><!--/#main-slider-->
    

    <section id="hero-text" class="wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <h2>LEZZETL?? YEMEKELR ??????N SAYFAMIZI GEZMEY?? UNUTMAYIN!!</h2>
                    <p> Sonra ben bu lezzetleri nas??l ka????rd??m diye d??????nmeyin. Bu lezzetli tariflerden kendinizi mahrum b??rakmay??n derim. ????nk?? siz en g??zel ayr??cal??klara lay??ks??n??z... 
                    </p>
                </div>
                <div class="col-sm-3 text-right">
                    <a class="btn btn-primary btn-lg" href="#">Menu</a>
                </div>
            </div>
        </div>
    </section><!--/#hero-text-->

     

 <section id="about"><jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
  <% 
  ResultSet rs=sayiCrud.yemekselectAllData();
  while(rs.next()) { %>
  
        <div class="container">

            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown"><%=rs.getString("yemekad") %> </span></h2>
                <p class="text-center wow fadeInDown"></p>
            </div>
   
            <div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                  <img class="img-responsive" src="<%=rs.getString("resim") %>" alt="">
                </div>

                <div class="col-sm-6 wow fadeInRight">
                    <h3 class="column-title"><span>MALZEMELER</span></h3>
                    <p><%=rs.getString("yemekmalzeme") %></p>
                    


                  
                     <a href='detay_sayfasi.jsp?idyemekler=<%=rs.getString("idyemekler")%>' class="post-cata cata-sm cata-success">DETAYI G??R</a>
                      <%session.setAttribute("idyemek", rs.getString("idyemekler")); %>
                </div>
            </div>
            
        
        </div>
            
              <%} %>
    </section><!--/#about-->

  <section id="portfolio">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">G??ZEL YEMEKLER TATMAK TESAD??F DE????LD??R...</h2> 
                <p class="text-center wow fadeInDown">Daha ??nceden yap??lm???? enfes lezzetlerimizi g??r??n diye g??rselle??tirdik.<br> Bakal??m be??enecek misiniz ? Sizde tariflere g??z atarak i??tah??n??z??n kabard?????? enfes lezzetlerden kendinizi mahrum b??rakmay??n..</p>
            </div>

            <div class="text-center" style="display:none">
                <ul class="portfolio-filter">
                    <li><a class="active" href="#" data-filter="*">All Works</a></li>
                    <li><a href="#" data-filter=".designing">Coffee</a></li>
                    <li><a href="#" data-filter=".mobile">Snacks</a></li>
                    <li><a href="#" data-filter=".development">Continental</a></li>
                </ul><!--/#portfolio-filter-->
            </div>

            <div class="portfolio-items">
                <div class="portfolio-item designing">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/1.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>DAMAK LEZZET??N?? DE??????T??RMEYE GELD??M DENEMEYE HAZIRLANNN!!</h3> 
                            <a class="preview" href="images/portfolio/1.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item mobile development">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/2.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>??NCEC??K B??R HAMURDA DEV LETTEZLER</h3> 
                            <a class="preview" href="images/portfolio/2.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item designing">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/3.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>HEM KOLAY HEM DE BAS??T</h3> 
                            <a class="preview" href="images/portfolio/3.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item mobile">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/4.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>HARLI ATE???? HAZIRLA VE DENEMEYE KOYUL</h3> 
                            <a class="preview" href="images/portfolio/4.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item designing development">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/5.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>YAZ AYLARI ??????N ??Y?? B??R SE??ENEK BENCE :)</h3> 
                            <a class="preview" href="images/portfolio/5.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item mobile">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/6.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>SADECE RESME BAKMA BEN?? YAPMAK ??????N ????E KOYUL</h3> 
                            <a class="preview" href="images/portfolio/6.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item designing development">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/7.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>ENFES TATLARDA BUG??N BEN OLAYIM </h3> 
                            <a class="preview" href="images/portfolio/7.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item mobile">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/8.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>Y??NE ??OK LEZZETL??Y??M</h3> 
                            <a class="preview" href="images/portfolio/8.jpg" rel="prettyPhoto"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->
            </div>
        </div><!--/.container-->
    </section><!--/#portfolio-->

    <section id="our-team">
    <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">G??NCELLENEN DUYURULAR</h2>
                
            </div>
             <div class="container">
                <!-- Portfolio Section Heading-->
                
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                 <% 
						ResultSet rs1=sayiCrud.duyuruselectAllData(); 
                        if(rs1!=null)
                         {
                             while(rs1.next())
                             {
                                 %>
                
                 
              <div class="row justify-content-center">
               
              <div class="card text-center" style="width: -webkit-fill-available;background-color: pink;color: black;">
			  <div class="card-header" style="color: aliceblue;
    font-size: 26px;
    margin-bottom: 30px;
    padding: 12px;">
			  <%=rs1.getString("duyurubaslik") %>
			  </div>
		      <div class="card-body">
		      <h5 class="card-title"><%=rs1.getString("duyuruicerik") %></h5>
			 </div>
			  
			</div>
                   	 
        	      
	        </div>
	        <br>
          </div>
    
                      <% 
                             }
                         }
                        %> 
    
    </section><!--/#our-team-->
  
   
    <section id="contact-us">
    <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">B??Z??MLE ??LET??????ME GE??</h2>
                   <% ResultSet rs2=sayiCrud.iletisimselectAllData(); 
                        if(rs2!=null)
                         {
                             while(rs2.next()) { %>
                                   <div class="container">
                					<p class="text-center wow fadeInDown" style="font-size:18px;"><strong>Mail: </strong><%=rs2.getString("mail") %></p>
           							 </div>
            
            <div class="container">
            
                <p class="text-center wow fadeInDown" style="font-size:18px;"><strong>Telefon:</strong>  <%=rs2.getString("tel") %></p>
            </div>
             <div class="container">
            
                <p class="text-center wow fadeInDown" style="font-size:18px;"><strong>Adres:</strong>  <%=rs2.getString("adres") %></p>
            </div>
             <% 
                             }
                         }
                        %> 
        </div>
    </section><!--/#contact-us-->
    <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
       
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