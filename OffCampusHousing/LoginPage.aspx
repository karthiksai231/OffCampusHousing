<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="OffCampusHousing.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            background-image:url("http://max-q.co.za/Images/Background-Image.jpg");
        }
        .auto-style1 {
            text-align: center;
            font-size: large;
        }
        .newStyle1 {
            font-family: Arial;
            font-style: inherit;
            font-variant: normal;
            text-transform: none;
            color: #CC3300;
        }
        .newStyle2 {
            color: #C8E2F9;
        }
        .newStyle3 {
            color: #C8E2F9;
        }
        .newStyle4 {
            color: #C8E2F9;
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
        <li class="active"><a href="AboutUs.aspx">About Us</a></li>
            <li><a href="ContactPage.aspx">Contact Us</a></li>
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






    <div class="container">
        <div class="auto-style1">
            <h1><strong class="newStyle1"><span class="newStyle2">Welcome to Star Properties</span> </strong></h1>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
       <table align="center">
           <tr>
               <td>
                   <span class="newStyle3">UserId :</span> 
                   
               </td>
               <td>
                   <asp:TextBox ID="txtUserId" runat="server" placeholder="UserName"/>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserId" runat="server" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
                <td>

                </td>
           </tr>
           <tr>
                <td>

                    <br />

                </td>
           </tr>
           <tr>
               <td>
                   <span class="newStyle4">Password :</span> 
                   
               </td>
               <td>
                   <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" runat="server" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr><td></td>  </tr>
           <tr><td></td></tr>
           <tr>
               <td>
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
               </td>
               <td colspan="2">
                   <asp:Button ID="btnLogin" class="btn btn-primary" Text="Login" runat="server" Width="77px" OnClick="btnLogin_Click" />
               
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="btnReset" class="btn btn-primary" Text="Reset" runat="server" OnClick="btnReset_Click" Width="77px" />


               </td>
           </tr>
       </table>
       <%-- <br />
        <br />
        <table align="center">
            <tr>
          <td><asp:Button ID="btnLogin" Text="Login" runat="server" Width="70px" OnClick="btnLogin_Click" Height="26px" style="text-align: center" /></td>
          <td><asp:Button ID="btnReset" Text="Reset" runat="server" OnClick="btnReset_Click" Width="70px" /></td>
                </tr>
            </table>--%>
    </div>
        
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblLogOut" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblCookie" runat="server" Text="Label"></asp:Label>
        </p>
        
    </form>
</body>
</html>
