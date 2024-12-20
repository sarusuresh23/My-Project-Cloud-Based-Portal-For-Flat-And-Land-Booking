<%-- 
    Document   : seller_login
    Created on : 15 Jul, 2023, 10:43:34 AM
    Author     : Admin1
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
  <title>INNOVATIVE RESISTANCE</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>
<body>
    <%--  String ses=(String)session.getAttribute("umail");
        if(ses!=null){
    --%>
     <% String msg=(String)session.getAttribute("msg");
    if(msg!=null){
    %>
    <script> alert("<%=msg %>"); </script>
    <% } session.removeAttribute("msg");  %>
  <div class="click-closed"></div>
  <!--/ Form Search Star /-->
  <div class="box-collapse">
    <div class="title-box-d">
      <h3 class="title-d">Search Property</h3>
    </div>
    <span class="close-box-collapse right-boxed ion-ios-close"></span>
        <div class="box-collapse-wrap form">
        <form class="form-a">
        <div class="row">
          <div class="col-md-12 mb-2">
            <div class="form-group">
              <label for="Type">Keyword</label>
              <input type="text" class="form-control form-control-lg form-control-a" placeholder="Keyword">
            </div>
          </div>
          <div class="col-md-12">
            <button type="submit" class="btn btn-b">Search Property</button>
          </div>
        </div>
        </form>
        </div>
  </div>
  <!--/ Form Search End /-->

  <!--/ Nav Star /-->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="index.jsp">INNOVATIVE<span class="color-b"> RESISTANCE</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
 <li class="nav-item">
            <a class="nav-link active" href="index.jsp#">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="usr.jsp">BUYER</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="seller.jsp">SELLER REGISTER</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin.jsp">ADMIN</a>
          </li>
          <!--li class="nav-item">
            <a class="nav-link" href="property-grid.html">Property</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="blog-grid.html">Blog</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              Pages
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="property-single.html">Property Single</a>
              <a class="dropdown-item" href="blog-single.html">Blog Single</a>
              <a class="dropdown-item" href="agents-grid.html">Agents Grid</a>
              <a class="dropdown-item" href="agent-single.html">Agent Single</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li-->
        </ul>
      </div>
    </div>
  </nav>
  <!--/ Nav End /-->

  <!--/ Carousel Star /-->
  <div style="margin-top:15%;" class="container">
              <div class="row">
                  <div class="col-3"></div>
               
                    
                      <form class="card-header-d" action="sel_log" method="post">
                         
                            <center>
          <h2> <font face="Georgia" color="#2eca6a">SELLER LOGIN PAGE</font></h2><br>
           <br><table border="5">
                                          
                    <tr><td> <font face="Georgia" color="Black"> AADHAR NUMBER :</td><td><input type="text" value="" id="U_Name" name="A_Name"></td></tr>
                    <tr></tr><tr></tr>
                    <tr><td><font face="Georgia" color="Black">PASSWORD :</td><td><input type="password" value="" id="U_Pass" name="password"></td>
                    <td><input type="checkbox" onclick="myFunction()"> SHOW</td>
                    </tr>
                
                    </table>
           <br><br>
            <input type="submit" name="submit" value="LOGIN">
            </center>
                    </form>
                   </div>
              </div>
                      <br><br>
<center>
                     NEW USER CLICK HERE TO <a href="seller.jsp">SELLER REGISTER</a>
                  
</center>
        
  <script>
      function myFunction(){
          var x = document.getElementById("U_Pass");
          if (x.type === "password"){
              x.type = "text";
          }else{
              x.type = "password";
          }
      }
      
  </script>
        
  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/popper/popper.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
