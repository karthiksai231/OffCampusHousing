<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="OffCampusHousing.DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
        body{
            background-image:url("https://prio1.byggfakta.se/LandingPage/images/backgrounds/prio1-bg.jpg");
        }
        .newStyle1 {
            color: #FF0000;
        }
        .newStyle2 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;<h1 class="auto-style1"><em class="newStyle1">Delete User Account</em></h1>
        <span class="newStyle2">
        <br />
        <br />
        <br />
        <br />
        Id&nbsp;&nbsp;</span>&nbsp;
    
    <input type="text" id="txtId" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure to delte the User?');" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" Width="55px" />
    </div>
    </form>
</body>
</html>
