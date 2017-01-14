<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="OffCampusHousing.ContactPage" %>

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
            background-image:url("http://vivamodernfurniture.com/uploads/spar-exential-x44.jpg");
        }
        .newStyle1 {
            color: #663300;
        }
        .newStyle2 {
            color: #663300;
        }
        .newStyle3 {
            color: #191202;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .newStyle4 {
            color: #00498A;
        }
        .newStyle5 {
            color: #00498A;
        }
        .newStyle6 {
            color: #000099;
        }
        .newStyle7 {
            color: #364E6F;
        }
        .newStyle8 {
            color: #D6DBE9;
        }
        .newStyle9 {
            color: #0066FF;
        }
        .newStyle10 {
            color: #D6DBE9;
        }
        .newStyle11 {
            color: #FF3300;
        }
        .newStyle12 {
            color: #990000;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .newStyle13 {
            color: #FF3300;
        }
        .auto-style4 {
            color: #CC0000;
        }
    </style>
    <script src="http://maps.googleapis.com/maps/api/js">
</script>

<%--<script>
    function initialize() {
        var mapProp = {
            center: new google.maps.LatLng(32.8105781, -96.9464922),
            zoom: 13,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>--%>

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
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
        <li ><a href="AboutUs.aspx">About Us</a></li>
            <li class="active"><a href="ContactPage.aspx">Contact Us</a></li>
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






    <div class="auto-style1">
    
    &nbsp;<h1 class="auto-style3"><em class="newStyle4">Contact </em></h1>
        

    
        <br />
        <span class="newStyle11"><strong><em>
        <br />
        </em></strong></span>
        <em><span class="newStyle3"><span class="auto-style4"><strong>S</strong></span></span><span class="auto-style4"><strong>tart Properties<br class="auto-style2" />
        </strong>
        </span><span class="newStyle3"><span class="auto-style4"><strong>1234 Live Oak Street,<br class="auto-style2" />
        Dallas,<br class="auto-style2" />
        Texas,<br class="auto-style2" />
        75428</strong></span></span><strong><span class="newStyle11"><br class="auto-style2" />
        </span></strong>
        </em><a href="mailto:star@Outlook.com"><em>star@Outlook.com</em></a><em><br />
        </em>
        <br />
        <h2 class="auto-style3"><em class="newStyle12"><strong>Ask Your Questions</strong></em></h2>
        <br />
        <em class="newStyle13"><span class="newStyle12">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txtName" runat="server" placeholder="Name"></asp:TextBox>
        <span class="newStyle12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
        <span class="newStyle12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Mobile&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        Questions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="txtQuestions" TextMode="MultiLine" Columns="20" Rows="10" runat="server" Height="88px" Width="197px"></asp:TextBox><br />
        </em>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <br />
        <br />
        <%--<span data-geocode="1818 Hunt street Commerce, TX 75428"  data-black-color="#242321">school</span>--%>
        <div>

           <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.275653458438!2d-96.96743062696743!3d32.877463534760714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e827c49161263%3A0x2d8f202ed64abcb6!2s1145+Hidden+Ridge+%231160%2C+Irving%2C+TX+75038!5e0!3m2!1sen!2sus!4v1467484950145" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

        </div>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BackToMain" />
        <br />
        <br />
        <br />
        

    
    </div>

        <%--<div id="googleMap" style="width:500px;height:380px;">--%>

        
    </form>
</body>
</html>
