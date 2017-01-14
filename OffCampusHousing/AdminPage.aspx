<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="OffCampusHousing.AdminPage" %>

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
            background-image:url("http://kys.affinitysoccer.com/1011/css/redblue/background.jpg");
        }
        .newStyle1 {
            color: #0033CC;
        }
        .newStyle2 {
            color: #F0F0F0;
        }
        .newStyle3 {
            color: #F0F0F0;
        }
        .newStyle4 {
            color: #F0F0F0;
        }
        .newStyle5 {
            color: #F0F0F0;
        }
        .newStyle6 {
            color: #F0F0F0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <h1 class="auto-style1"><em class="newStyle2">Manage Details Of Star Properties</em></h1>
        <br />
&nbsp;
        <br />
        <span class="newStyle3">
        <em>Manage Companies</em></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCompanies" class="btn btn-primary" runat="server" Text="CompaniesList" OnClick="btnCompanies_Click" />
        <br />
        <br />
        <br />
        <span class="newStyle4">
        <em>Manage Users&nbsp;</em></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUsers" class="btn btn-primary" runat="server" Text="ManageUsers" OnClick="btnUsers_Click" />
    
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="LogOut" OnClick="Button1_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
