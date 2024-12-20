
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DB"%>
<!DOCTYPE HTML>
<html>
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

  <!-- Main Style sheet File -->
  <link href="css/style.css" rel="stylesheet">
        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
        <script>
            function Hide()
            {
                document.getElementById("test").style.display = "none";
            }
        </script> 
    </head>
    <body class="homepage">
        <div id="wrapper">
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
            <!-- Header -->
             <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="index.jsp">INNOVATIVE<span class="color-b"> RESISTANCE</span></a>
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
            <!-- /Header -->

          <div style="margin-top:10%;" class="container">
              <div class="row">
                  <div class="col-3"></div>
                <div id="reg" class="col-lg-6">
                     <center>
                     <section>
                            <form action="flat_upload" enctype="multipart/form-data" method="post" onsubmit="return Validate_Data(true)">
                             <center> <br><br><h4>FLAT/HOUSE DETAILS UPLOAD</h4><br>
                            <br>
                      
                                <table border="3">
                                    <tr><td>SELLER AADHAAR NO</td><td>:</td><td><input type="text" value="<%=rs.getString("A_Name")%>" id="A_Name" name="A_Name" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER Name</td><td>:</td><td><input type="text" value="<%=rs.getString("username")%>" id="S_Name" name="S_Name" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER MOBILE NO</td><td>:</td><td><input type="text" value="<%=rs.getString("mobile_no")%>" id="S_Number" name="S_Number" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER ADDRESS</td><td>:</td><td><input type="text" value="<%=rs.getString("address")%>" id="S_Addr" name="S_Addr" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>SELLER EMAIL ID</td><td>:</td><td><input type="text" value="<%=rs.getString("email")%>" id="S_MAIL" name="S_MAIL" style="width: 204px;" readonly /></td></tr>
                                    <tr><td>CITY</td><td>:</td><td><input type="text" value="" id="cit" name="city" style="width: 204px;"></td></tr>
                                    <tr><td>AREA</td><td>:</td><td><input type="text" value="" id="area" name="area" style="width: 204px;"></td></tr>
                                    <tr><td>STREET</td><td>:</td><td><input type="text" value="" id="str" name="street" style="width: 204px;" ></td></tr>
                                    <tr><td>RENT</td><td>:</td><td><input type="text" value="" id="rent" name="rent" style="width: 204px;" ></td></tr>
                                    <tr><td>ADVANCE </td><td>:</td><td><input type="text" value="" id="adv" name="advance" style="width: 204px;" ></td></tr>
                                    <tr><td>FLAT/HOUSE Image </td><td>:</td><td><input type="file" value="" id="Image" name="Image" style="width: 204px;" ></td></tr>
                                    <tr><td>FLAT/HOUSE Type </td><td>:</td><td>
                                    <select name="FTYPE" id="F_Type" style="width: 204px;" >
                                     <option value="Select">Select File Type</option>
                                     <option value="1BKH">1BKH</option>
                                     <option value="2BKH">2BKH</option>
                                     <option value="3BKH">3BKH</option>
                                    </select>                                                                    
                                    </td>                                            
                                    </tr>
                                    <tr><td>HOUSE NUMBER</td><td>:</td><td><input type="text" value="" id="H_No" name="H_NO" style="width: 204px;" ></td></tr>
                                </table>
                                    <input type="submit" value="Register" > 
                             </center>
                            </form>     
                                <%
                                    String msg = (String) session.getAttribute("msg");
                                    if (msg != null) {
                                %>
                                <script>alert('<%=msg%>');</script>
                                <%
                                        session.removeAttribute("msg");
                                    }
                                %>		
                     </section>
                     </center>   
                    </div>
                </div>	
            </div>
<%
                                        }
                                            %>
<br>
            <!-- Footer -->
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
                            var rent = document.getElementById("rent").value;
                            if (rent == "")
                            {
                                alert('Enter Rent number');
                                return false;
                            }
                            if (!rent.match(/^[0-9]+$/))
                            {
                                alert(" Rent only number can be enter")
                                return false;
                            }
                            var adv = document.getElementById("adv").value;
                         
                            if (adv == "")
                            {
                                alert("enter the Advance Amount");
                                return false;
                            }
                            if (!adv.match(/^[0-9]+$/))
                            {
                                alert(" Advance only number can be enter")
                                return false;
                            }
                            var str = document.getElementById("str").value;
                            if (str == "")
                            {
                                alert('Enter Street Name');
                                return false;
                            }
                             if (!str.match(/^[a-zA-Z]+$/))
                            {
                                alert("Street field should be in Alphabet")
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
                            var H_No = document.getElementById("H_No").value;
                            if (H_No == "")
                            {
                                alert('House Number Cannot Be Empty');
                                return false;
                            }
                            var ge = document.getElementById("F_Type").value;
                            if (ge == "Select")
                            {
                                alert('Please Select Flat OR House Type');
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
                </div>
            </div>

        </div>
    </body>
</html>
