<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maps.aspx.cs" Inherits="OffCampusHousing.maps" %>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
        .auto-style1 {
            text-align: center;
        }
        body{
            background-image:url("http://www.designersraum.com/pictures/Modern-Home-Interior-Design-Ideas-with-Casa-Collection-by-Camerich.jpg");
        }
        .auto-style2 {
            color: #CC0000;
        }
    </style>

</head>
<body>
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
          <li><a href="maps.aspx">Neighbourhood</a></li>
          <li><a href="Gallery.aspx">Gallery</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>


        <h1 class="auto-style1"><em class="auto-style2">Places Near Me</em></h1>



        <div>




             
            <br />
            <br />
            <br />
            <asp:Button class="btn btn-danger" ID="btnHotels" runat="server" Text="Hotels" OnClick="btnHotels_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGrocery" class="btn btn-danger" runat="server" Text="Grocery" OnClick="btnGrocery_Click" />
            <br />
            <br />




             
        </div>
       
    <div>
        <script>
            //function initMap()
            //{
               
            //    };
         </script>  
         <cc1:GMap ID="GMap1" runat="server" Width="1100px" Height="500px" />
    </div>
  
    </form>
    <script src="https://maps.googleapis.com/maps/api/js?key= AIzaSyAmyR1TzQiQ4vtYke28VhYfuu9QVv5_xOk&callback=GMap1"
  type="text/javascript"></script>

</body>
</html>
