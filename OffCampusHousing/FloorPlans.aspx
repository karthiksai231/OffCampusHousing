<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FloorPlans.aspx.cs" Inherits="OffCampusHousing.FloorPlans" %>

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
            font-weight: normal;
            text-align: center;
            text-decoration: underline;
        }
        .auto-style2 {
            text-align: center;
        }
        body{
            background-image:url("https://wallpaperscraft.com/image/rooms_furniture_design_interior_modern_66304_3840x2400.jpg");
            position:relative;      
             }
        .newStyle1 {
            color: #FF3300;
        }
        .newStyle2 {
            color: #FF0000;
        }
        .newStyle3 {
            color: #00498A;
        }
    </style>
</head>
<body data-spy="hover" data-target=".navbar" data-offset="50">
    <form id="form1" runat="server">
    <div class="auto-style2">



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
        <li ><a href="AboutUs.aspx">About Us</a></li>
            <li><a href="ContactPage.aspx">Contact Us</a></li>
        <li class="active"><a href="FloorPlans.aspx">Floor Plans</a></li>
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










    
        <h1 class="auto-style1">&nbsp;<em class="newStyle3"><strong>Floor Plans</strong></em></h1>

        <div class="auto-style2">
            <br />
            <br />
            <span class="newStyle2">
            <br />
            A1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $800-$900<br />
            LayOut&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OneBed/One Bath<br />
            Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 816 SQ.FT.&nbsp;
            <br />
            <br />
            <br />
            <br />
            A2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $1000-$1200<br />
            LayOut&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TwoBed/One Bath<br />
            Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 916 SQ.FT.&nbsp;
            <br />
            <br />
            <br />
            <br />
            A3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $1200-$1600<br />
            LayOut&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TwoBed/Two Bath<br />
            Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1000 SQ.FT.&nbsp;
            <br />
            <br />
            <br />
            <br />
            A4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $1800-$2000<br />
            LayOut&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ThreeBed/Two Bath<br />
            Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1200 SQ.FT.&nbsp;
            <br />
            </span>
        </div>
    
    </div>
    </form>
</body>
</html>
