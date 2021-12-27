<%@ page language="java"%>
<% request.setCharacterEncoding ("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="ISO-8859-1">

        <meta charset="utf-8">
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
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html"></a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" name="yemekad" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                     <a href="like_arama.jsp" class="btn btn-primary"><i class="fas fa-search"></i></a>
                      
                        
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#!" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                </li>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#!">Settings</a>
                    <a class="dropdown-item" href="#!">Activity Log</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="login.html">Logout</a>
                </div>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                ADMİN SAYFASI 
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                ADMİN VE ÜYE İŞLEMLERİ
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="admin_listele.jsp">ADMİN LİSTELE</a>
                                    <a class="nav-link" href="uye_listele.jsp">ÜYE LİSTELE</a>
                                    
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                               YEMEK İŞLEMLERİ
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        YEMEKLER
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="yemek_listele.jsp">YEMEK LİSTELE</a>
                                            <a class="nav-link" href="kategori_listele.jsp">KATEGORİ LİSTELE</a>
		                                      
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                      DUYURU ve İLETİŞİM İŞLEMLERİ 
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="duyuru_listele.jsp">DUYURU LİSTELE</a>
                                            <a class="nav-link" href="iletisim_listele.jsp">İLETİŞİM LİSTELE</a>
                                            <a class="nav-link" href="anasayfa_girisler.jsp">ÇIKIŞ</a>
                                            
                                           
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small"></div>
                        
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                 <jsp:useBean id="sayiCrud" class="yemeksitesiyapimi.kategoriveriler"></jsp:useBean>
                


                 <table class="table table-bordered">
	
    <tr>
        <th>YEMEK ADI</th>
        <th>YEMEK MALZEME</th>
        <th>YEMEK YAPILIŞ</th>
        <th>KATEGORİ</th>
        <th>RESİM</th>
        <th>VİDEO</th>
        <th>SİL</th>
        <th>GÜNCELLE</th>
    </tr>
    
       
    <div class="top-search-area">
   <form action="yemek_listele.jsp" method="post">
       <input type="text" name="arayemek" class="form-control" id="arayemek" placeholder="Search...">
     
       
       	
       <button type="submit" value="Search" class="btn btn-info" >Yemek Adı Ara</button>
     
   </form>
 </div>


  <% 
  String yemekad=request.getParameter("arayemek");
  if(yemekad==null)
  {
  ResultSet rs=sayiCrud.yemekselectAllData();
  while(rs.next()) { %>
  <tr>
    <td><%=rs.getString("yemekad") %></td>
    <td><%=rs.getString("yemekmalzeme") %></td>
    <td><%=rs.getString("yemekyapilis") %></td>
    <td><%=rs.getString("kategoriad") %></td>
    <td> <img src="<%=rs.getString("resim") %>" width="100" height="100"/></td>
    
    <td><iframe class="img-fluid" width="560" height="315" src="<%=rs.getString("video") %>" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></td>
    
    <td><a href='yemek_deneme.jsp?idyemekler=<%=rs.getString("idyemekler")%>'>Güncelle<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
    <td><a href='yemeksil.jsp?idyemekler=<%=rs.getString("idyemekler")%>'>Sil<span class="glyphicon glyphicon-remove" style="font-size:24px; color:red;"></span></a></td>
  
  </tr>
  <%}}
  else
  {
	  ResultSet rs=sayiCrud.yemekadiara(yemekad);
	  while(rs.next()) { %>
	  <tr>
	    <td><%=rs.getString("yemekad") %></td>
	    <td><%=rs.getString("yemekmalzeme") %></td>
	    <td><%=rs.getString("yemekyapilis") %></td>
	    <td><%=rs.getString("kategoriad") %></td>
	    <td> <img src="<%=rs.getString("resim") %>" width="100" height="100"/></td>
	    
	    <td><iframe class="img-fluid" width="560" height="315" src="<%=rs.getString("video") %>" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></td>
	    
	    <td><a href='yemek_deneme.jsp?idyemekler=<%=rs.getString("idyemekler")%>'>Güncelle<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
	    <td><a href='yemeksil.jsp?idyemekler=<%=rs.getString("idyemekler")%>'>Sil<span class="glyphicon glyphicon-remove" style="font-size:24px; color:red;"></span></a></td>
	  
	  </tr>
	  
	  <%}
	  
  }
 
 %>
</table>
<a href="yemekekle.jsp" class="btn btn-primary">yemek ekle</a> 
 </main>
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
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js1/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets1/demo/chart-area-demo.js"></script>
        <script src="assets1/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets1/demo/datatables-demo.js"></script>
           
         
    </body>
</html>

























