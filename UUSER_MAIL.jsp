

<%@page import="Connection.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%
            String Servlet_Msg = (String) session.getAttribute("msg");
            String color = (String) session.getAttribute("color");
        %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>INNOVATIVE RESIDENCE</title>
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
  
<script>
     
     
     function formValidation() {
var txt1=document.getElementById("txt1").value;
var txt2=document.getElementById("txt2").value;
var txt3=document.getElementById("txt3").value;

 

if(txt1===""){    
    alert("Error: To address cannot be blank!");
    return false;
}
if(txt2===""){    
    alert("Error: Subject cannot be blank!");
    return false;
}
if(txt3===""){    
    alert("Error: message  cannot be blank!");
    return false;
}



else{return  true;}

}
 </script>

</head>
<body id="page2">
    

<%--  String ses=(String)session.getAttribute("umail");
        if(ses!=null){
    --%>
     
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
         <a class="navbar-brand text-brand" href="index.jsp">INNOVATIVE<span class="color-b"> RESISTANCE</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
       <div class="collapse navbar-collapse navbar-right" style="">
        <ul class="nav navbar-nav">
         <li class="nav-item">
             <a  href="user_home.jsp#">HOME</a>
         </li>
         
          <li class="nav-item">
              <a href="UUSER_MAIL.jsp">MAIL</a>
          </li>
          
           <li class="nav-item">
               <a href="location.jsp">LOCATION</a>
           </li>
           
           <li class="nav-item"><a href="about-us.html"class="dropdown-toggle" data-toggle="dropdown">SEARCH<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu">
          <li class="nav-item"><a href="User_searchfile1.jsp">FLAT/HOUSE SEARCH</a></li>
          <li class="nav-item"><a href="User_searchfile.jsp">LAND SEARCH</a></li>
          </ul>
          </li>
          
          <li class="nav-item"><a href="about-us.html"class="dropdown-toggle" data-toggle="dropdown">BOOKING<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu">
          <li><a href="house_buying.jsp">BOOKING HOUSE</a></li>
          <li><a  href="usrhome.jsp">BOOKING LAND</a></li>
          </ul>
          </li>
          <li class="nav-item"><a href="about-us.html"class="dropdown-toggle" data-toggle="dropdown">VIEW BOOKING DETAILS<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu">
          <li><a href="bookingdetails.jsp">HOUSE BOOKING DETAILS</a></li>
          <li><a href="bookingdetails1.jsp">LAND BOOKING DETAILS</a></li>
          </ul>
          </li>
          <li class="nav-item">
            <a href="index.jsp">LOGOUT</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <br>
  <br>
  <br>
  <br>
  <br>
  
  <article class="col2 pad_left1" style="margin-top: 35px">
      <h3 style=" margin-left: 50%">COMPOSE MAIL</h3><br>

                           <%
              String msg=request.getParameter("msg");
              if(msg!=null){
              %>
              <div style="margin-left: 400px">  <%=msg%></div><%}%>
 <DIV style="border-style: solid;height:430px; width: 1300px; overflow: visible; margin-left: 15%">
     <form action="mail.jsp">

            <table>

                <tr><td><b><font color="red">To:

                    </td>

                    <td><b><b><input type="text" name="mail" /><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Subject:

                    </td>

                    <td>

                        <input type="text" name="sub" ><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Message Text:

                    </td>

                    <td>

                        <textarea rows="12" cols="80" name="mess"></textarea><br/>

                    </td>

                </tr>

                <tr>
                    <td></td>
                    <td>

                        <input type="submit" value="Send">

                    </td>

                    <td>

                        <input type="reset" value="Reset">

                    </td>

                </tr>

            </table>

        </form>

 </DIV>
                        
        	</article>
		</section>
<!-- / content -->
	</div>
	<div class="block"></div>
</div>
<div class="body1">
	<div class="main">
<!-- footer -->
<!-- / footer -->
	</div>
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
    
</div>
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>



