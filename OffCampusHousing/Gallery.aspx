<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="OffCampusHousing.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
            <li><a href="ContactPage.aspx">Contact Us</a></li>
        <li><a href="FloorPlans.aspx">Floor Plans</a></li>
          <li><a href="GMaps.aspx">Neighbourhood</a></li>
          <li class="active"><a href="Gallery.aspx">Gallery</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>






    <div>
    
    
    <h1 class="text-center"><strong><em>Check Out the Images</em></strong></h1>
    <p>
        &nbsp;</p>



    <div class="container">
  <br />
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://images1.exitrealtyelitefrisco.com/property-images/164/2016-05-09t13:17/4-chatham-court-mansfield_13373873-14-full.jpg" alt="Chania" />
      </div>

      <div class="item">
        <img src="http://img.seorets.com/ncr/531-chatham-court-nc-100006950-4.jpg" alt="Chania" />
      </div>
    
      <div class="item">
        <img src="http://img.seorets.com/ncr/531-chatham-court-nc-100006950-14.jpg" alt="Flower" />
      </div>

      <div class="item">
        <img src="http://www.pghfoh.com/wp-content/uploads/2015/08/Chatham-Court-Villa.jpg"  />
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


        </div>
        </form>

</body>
</html>
