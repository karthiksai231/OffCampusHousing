<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="OffCampusHousing.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        body{
            background-image:url("http://cyberstudio.biz/main/HB/static/ecru/spring2010/old/images/background.jpg");
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="font-style: italic; text-align: center">User Details<br />
        </h1>
        <br />
        <br />
        <br />
        User Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblId" runat="server"></asp:Label>
    
        <br />
        <br />
        <br />
        <asp:Button ID="btnAddMore" runat="server" Text="AddMore" OnClick="btnAddMore_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" Width="78px" />
    
    </div>
    </form>
</body>
</html>
