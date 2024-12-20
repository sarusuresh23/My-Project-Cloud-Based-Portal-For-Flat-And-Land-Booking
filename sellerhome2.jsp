<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DB"%>
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

  <script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>
<%-- String ses=(String)session.getAttribute("umail");
if(ses!=null){}
--%>
<body>
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
      <a class="navbar-brand text-brand" href="index.jsp">INNOVATIVE<span class="color-b">RESISTANCE</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
             <li class="nav-item">
            <a class="nav-link" href="sellerhome.jsp">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="House.jsp">FLAT/HOUSE</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="sellerhome2.jsp">LAND</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="SELER_MAIL.jsp">MAIL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="index.jsp">LOGOUT</a>
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
   <%
                                             DB db=new DB();
                                     Integer id=(Integer)session.getAttribute("U_Id");
                                    String name=(String)session.getAttribute("User");
                                                     session.setAttribute("U_Id",id);
                     session.setAttribute("User",name);
                                        ResultSet rs=db.Select("Select * from sellerregister where S_ID='"+id+"' ");
                                        
                                    
                                    %>
  <br>
  <%
                                        while(rs.next())
                                        {
                                            %>
  <br>
  <br>
  <br>
      
      <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            <form action="flatupload" enctype="multipart/form-data" method="post" onsubmit="return Validate_Data(true)">
                             <center> <br><br><h4>LAND DETAILS UPLOAD</h4><br>
                            <br>
                      
                                <table border="3">
                                     <tr><td>SELLER AADHAAR NO</td><td>:</td><td><input type="text" value="<%=rs.getString("A_Name")%>" id="A_Name" name="A_Name" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER Name</td><td>:</td><td><input type="text" value="<%=rs.getString("username")%>" id="S_Name" name="S_Name" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER MOBILE NO</td><td>:</td><td><input type="text" value="<%=rs.getString("mobile_no")%>" id="S_Number" name="S_Number" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER ADDRESS</td><td>:</td><td><input type="text" value="<%=rs.getString("address")%>" id="S_Addr" name="S_Addr" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER EMAIL ID</td><td>:</td><td><input type="text" value="<%=rs.getString("email")%>" id="S_MAIL" name="S_MAIL" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>LAND AREA</td><td>:</td><td><input type="text" value="" id="area" name="area" style="width: 204px;"></td></tr>
                                    <tr><td>LAND CITY</td><td>:</td><td><input type="text" value="" id="cit" name="city" style="width: 204px;"></td></tr>
                                    <tr><td>LAND AMOUNT</td><td>:</td><td><input type="text" value="" id="lad" name="rent" style="width: 204px;"></td></tr>
                                    <tr><td>LAND ADVANCE </td><td>:</td><td><input type="text" value="" id="adv" name="advance" style="width: 204px;"></td></tr>
                                    <tr><td> LAND Image </td><td>:</td><td><input type="file" value="" id="Image" name="Image" style="width: 204px;"></td></tr>
                                    <tr><td> SQUARE FEET </td><td>:</td><td><input type="text" value="" id="FType" name="FType" style="width: 204px;"></td></tr> 
                                    <tr><td>LAND DOCUMENT NO</td><td>:</td><td><input type="text" value="" id="dno" name="D_NO" style="width: 204px;"></td></tr>
                                    <tr><td>LAND SURVEY NO</td><td>:</td><td><input type="text" value="" id="SUNO" name="SUNO" style="width: 204px;"></td></tr>
                                </table>
                                         <input type="submit" value="Register" >   </center>
                            </form>
                    
                                   
						
   <div id="footer">
                <div class="container">
                    <script>
                        function number(e)
                        {
                            var unicode = e.charCode ? e.charCode : e.keyCode
                            if (unicode !== 8)
                            {
                                if (unicode < 48 || unicode > 57)
                                    return false
                            }
                        }
                    </script>

                     <script>
                        function Validate_Data(f)
                        {
                            var number = "/^[a-zA-Z ]+$/";
                            var charreg = ""
                            var numreg = "";
                            var area = document.getElementById("area").value;
                            if (area == "")
                            {
                                alert('Enter Area should not be empty');
                                return false;
                            }
                            if (!area.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Area field should be in Character")
                                return false;
                            }
                            var lad = document.getElementById("lad").value;
                            if (lad == "")
                            {
                                alert('Enter Land Amount number');
                                return false;
                            }
                            if (!lad.match(/^[0-9]+$/))
                            {
                                alert(" Land Amount Only Number Can Be Enter")
                                return false;
                            }
                            var adv = document.getElementById("adv").value;
                         
                            if (adv == "")
                            {
                                alert("enter the Land Advance Amount");
                                return false;
                            }
                            if (!adv.match(/^[0-9]+$/))
                            {
                                alert(" Land Advance only number can be enter")
                                return false;
                            }
                            var cit = document.getElementById("cit").value;
                            if (cit == "")
                            {
                                alert('City Cannot Be Empty');
                                return false;
                            }
                            if (!cit.match(/^[a-zA-Z]+$/))
                            {
                                alert("City field should be in Alphabet")
                                return false;
                            }
                            var dno = document.getElementById("dno").value;
                            if (dno == "")
                            {
                                alert('Document Number Cannot Be Empty');
                                return false;
                            }
                            var SUNO = document.getElementById("SUNO").value;
                            if (SUNO == "")
                            {
                                alert('Survey Number Cannot Be Empty');
                                return false;
                            }
                            var FType = document.getElementById("FType").value;
                            if (FType == "")
                            {
                                alert('Square Feet Cannot Be Empty');
                                return false;
                            }
                            var Image = document.getElementById("Image").value;
                            if (Image == "")
                            {
                                alert('Please Select Image');
                                return false;
                            }
                            return true;
                        }

                    </script>
                    
                     <%
                                    }
                                        
                                        %>
                </div>
            </div>

        </div>
    </body>
</html>
