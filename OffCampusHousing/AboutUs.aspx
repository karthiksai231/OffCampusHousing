<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="OffCampusHousing.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        body{
            background-image:url("http://www.walldevil.com/wallpapers/a83/cool-wallpapers-wallpaper-backgrounds-desktop-design-modern-apartment.jpg");
        
            position:relative;
            }

        .auto-style2 {
            color: #F0F0F0;
        }
        .auto-style3 {
            text-align: center;
            color: #CC3300;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style5 {
            color: #000000;
            background-color: #996600;
        }
        .auto-style6 {
            color: #000000;
            font-size: large;
            text-align: center;
        }
        .auto-style7 {
            background-color: #996600;
        }
        .auto-style8 {
            color: #CC3300;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        #Login { color: #fff;}

       .content {display:none;}
       .preload { width:100px;
            height: 100px;
            position: fixed;
            top: 50%;
            left: 50%;}
    </style>
    <script>

    $(function() {
    $(".preload").fadeOut(2000, function() {
        $(".content").fadeIn(1000);        
    });
});
    </script>



</head>
<body data-spy="hover" data-target=".navbar" data-offset="50" >
    <%--<div class="preload"><img src="C:\Users\karth\Documents\Visual Studio 2015\Projects\OffCampusHousing\loader.gif">--%>
     <div class="preload"><img src="http://i.imgur.com/KUJoe.gif">
</div>
        <div class="content">
    <form id="form1" runat="server">

       


        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Star Properties</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">

        <li class="active" ><a id="Login" href="AboutUs.aspx">About Us</a></li>
            <li ><a href="ContactPage.aspx">Contact Us</a></li>
        <li><a href="FloorPlans.aspx">Floor Plans</a></li>
          <li><a href="GMaps.aspx">Neighbourhood</a></li>
          <li><a href="Gallery.aspx">Gallery</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
    <div>

    
        <h1 class="auto-style3">&nbsp;</h1>
        <h1 class="auto-style3"><em>Want to know about us</em></h1>
        <div class="auto-style1">
            <h3 class="auto-style2">&nbsp;</h3>
            <h3 class="auto-style8"><em>Here are the details about us</em></h3>
        </div>
    
    </div>
        <%--<asp:Button ID="Button1" runat="server" Text="Maps" OnClick="Button1_Click" />--%>
           
    </form>
   
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
            <button type="button" class="btn btn-info"  data-toggle="collapse" data-target="#demo">About Us</button>
            <div id="demo" class="collapse">
    <div class="auto-style7">
    <p class="auto-style1">
      
        <span class="auto-style5">&nbsp;</span><span class="auto-style4"><strong><em><span class="auto-style7"> Comfortable, Urban Apartment Living In Dallas, Texas</span></em></strong></span></p>
    <p class="auto-style6">
&nbsp;<span class="auto-style9"><span class="auto-style7">Located in the bustling Southern metropolis of Dallas, Texas, Star Properties is an extravagant apartment 
        community that provides a comfortable lifestyle in a tranquil, urban setting. Star Properties is only moments from major </span> <br class="auto-style7" />
         <span class="auto-style7">business districts, first-class shopping, endless outdoor recreation, and delectable restaurants. Aside from our desirable location, our community achieves the perfect balance of convenience and luxury at an affordable price with our well-appointed one and two bedroom floor plans. Our community amenities are extremely impressive: take a dip in our sparking swimming pool, stay productive in our professional business center, or sweat out the stress in our well-equipped fitness center with free weights and cardio equipment. Schedule your personalized tour of Star Properties today!</span></span></p>
    </div>
    </div>
            </div>
    
</body>
</html>
