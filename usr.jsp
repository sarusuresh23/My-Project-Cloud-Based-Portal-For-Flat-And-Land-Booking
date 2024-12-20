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

  <!-- Main Stylesheet File -->
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
            <a class="nav-link active" href="index.jsp#">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="usr.jsp">BUYER REGISTER</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="seller.jsp">SELLER REGISTER</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin.jsp">ADMIN</a>
          </li>     
        </ul>
      </div>
    </div>
  </nav>
            <!-- /Header -->

          <div style="margin-top:10%;" class="container">
              <div class="row">
                  <div class="col-3"></div>
                <div id="reg" class="col-lg-6">
                     <section>
                    <form action="reg" enctype="multipart/form-data" method="post" onsubmit="return Validate_Data(true)">
                                
                      <center>
 <h2><font face="Georgia" color="#2eca6a">BUYER REGISTRATION</font></h2><br>
 <table>
     <tr>
         <td><font face="Georgia" color="black">AADHAR NUMBER</td><td>:</td>
         <td><input type="text" id="lnum" name="A_Name" style="width: 204px;" onkeypress="return  number(event)" maxlength="12"></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">USERNAME</td><td>:</td>
         <td><input type="text" id="hname" name="username" style="width: 204px;" required></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">EMAIL ID</td><td>:</td>
         <td><input type="text" id="mail" name="email" style="width: 204px;" required></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">GENDER</td><td>:</td>
         <td><SELECT name="Gender" id="sex" size=1 tabIndex=7  style="width: 204px;" required>
                 
                 <OPTION value=Male>Male</OPTION>
                 <OPTION value=Female>Female</OPTION>
                 <OPTION value="others">others</OPTION>
             </SELECT></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black"> PASSWORD</td><td>:</td>
         <td><input type="password" name="U_Pass" id="pass" style="width: 204px;" required></td>
         <td><input type="checkbox" onclick="myFunction1()"> SHOW</td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">CONFIRM PASSWORD</td><td>:</td>
         <td><input type="password" name="con_pass" id="rpass" style="width: 204px;" required></td>
         <td><input type="checkbox" onclick="myFunction()"> SHOW</td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">DATE OF BIRTH</td><td>:</td>
         <td><input type="date" name="dob" id="Dob" style="width: 204px;" required></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">MOBILE NUMBER</td><td>:</td>
         <td><input type="text" name="mobile" id="con" onkeypress="checksum()" maxlength="10" style="width: 204px;" required></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">CITY NAME</td><td>:</td>
         <td><input type="text" name="city" id="cit" style="width: 204px;" required></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">ADDRESS</td><td>:</td>
         <td><input type="text" name="address" id="ad" style="width: 204px;" required></td>
     </tr>
     <tr>
         <td><font face="Georgia" color="black">PROFILE PIC</td><td>:</td>
         <td><input type="file" value="" id="image" name="Image" style="width: 204px;" required></td>
     </tr>
     
     <tr>
 </table>
 <br>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="REGISTER"></td>
         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Reset" value="CLEAR"></td>
     </tr>
 <br><br>
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
                                <center>
   ALREADY REGISTERED CLICK HERE TO <a href="user_login.jsp">BUYER LOGIN</a>
                                </center>
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
      function myFunction1(){
          var x = document.getElementById("pass");
          if (x.type === "password"){
              x.type = "text";
          }else{
              x.type = "password";
          }
      }
      
  </script>
  
   <script>
      function myFunction(){
          var x = document.getElementById("rpass");
          if (x.type === "password"){
              x.type = "text";
          }else{
              x.type = "password";
          }
      }
      
  </script>

                    <script>
                        function Validate_Data(f)
                        {
                            var number = "/^[a-zA-Z ]+$/";
                            var charreg = ""
                            var numreg = "";
                            var hname = document.getElementById("hname").value;
                            if (hname == "")
                            {
                                alert('Enter User Name should not be empty');
                                return false;
                            }
                            if (!hname.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Name field should be in Character")
                                return false;
                            }
                            var lnum = document.getElementById("lnum").value;
                            var len = lnum.length;

                            if (lnum == "")
                            {
                                alert('Enter Aadhar number');
                                return false;
                            }
                            if (!lnum.match(/^[0-9]+$/))
                            {
                                alert(" Aadharnumber only number can be enter")
                                return false;
                            }
                            if ((len < 12) || (len > 12))
                            {
                                alert(" Aadharnumber Should Contain 12 Numbers");
                                //document.getElementById("accno").style.border='1px solid red';
                                // document.getElementById("lnum").focus();
                                return false;
                            }
                            var pass = document.getElementById("pass").value;

                            if (pass === "") {
                                alert('Password cant be empty');
                                return  false;

                            }
                            if (!pass) {
                                alert('Invaild password');
                                return false;
                            }
                            var rpass = document.getElementById("rpass").value;
                            if (rpass === "") {
                                alert('Confirm Password cant be empty');
                                return  false;

                            }
                            if (!rpass) {
                                alert('Invalid Confirm Password ');
                                return false;
                            }

                            if (pass != rpass)
                            {
                                alert('Please give Correct password');
                                return false;
                            }
                            var con = document.getElementById("con").value;
                            var bcn = con.length;
                            if (con == "")
                            {
                                alert("enter the contact number");
                                return false;
                            }
                            if (!(con.charAt(0) == "9" || con.charAt(0) == "8" || con.charAt(0) == "7"))
                           {
                                alert("Cell Number  Should Start With only 9 / 8 / 7");
                                return false;
                           }
                           if (bcn != 10)
                           {
                                alert("Cell Number  Should Contains 10 Numbers Only");
                                return false;
                           }

                            var ad = document.getElementById("ad").value;
                            if (ad == "")
                            {
                                alert('Enter Buyer Address');
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
                            var Mail = document.getElementById("mail").value;
                            if (Mail == "")
                            {
                                alert('Mail Id Cannot Be Empty');
                                return false;
                            }

                            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,4})+$/;
                            if (!filter.test(Mail)) {
                                alert("Invalid Mail ID");
                                return false;
                            }
                            var ge = document.getElementById("sex").value;
                            if (ge == "Sex")
                            {
                                alert('Please Select Sex');
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