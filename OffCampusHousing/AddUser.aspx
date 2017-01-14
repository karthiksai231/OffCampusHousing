<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="OffCampusHousing.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            }
        body{
            background-image:url("http://p1.pichost.me/i/37/1606092.jpg");
        }
        .newStyle1 {
            color: #CC0000;
        }
        .newStyle2 {
            color: #CC3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1"><em class="newStyle1">Add User</em></h1>
        <br />
        <br />
        <em><span class="newStyle2">User Name&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <span class="newStyle2">
        <br />
        <br />
        Password&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <span class="newStyle2">
        <br />
        <br />
        Role Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <input type="text" ID="txtRoleId" runat="server" class="newStyle2"/></em><span class="newStyle2"> </span> <em>
        <span class="newStyle2">
        <br />
        <br />
        State&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        <br />
        </em>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAdd" runat="server" Text="Add" Width="69px" OnClick="btnAdd_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" Width="69px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
