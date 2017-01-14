<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="OffCampusHousing.EditUser" %>

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
            background-image:url("http://mostviewsvideo.com/wp-content/uploads/2013/09/Login-goto-settings-design-change-background-image.jpg");
        }
        .newStyle1 {
            color: #FF3300;
        }
        .newStyle2 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1"><em class="newStyle1">Update User Details</em></h1>
        <br />
        <br />
        <em><span class="newStyle2">Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <input type="text" ID="txtId" runat="server" class="newStyle2" /></em><span class="newStyle2"> </span><em><span class="newStyle2">
        <br />
        <br />
        User Name&nbsp;&nbsp;
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
        Role Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <asp:TextBox ID="txtroleId" runat="server"></asp:TextBox>
        <span class="newStyle2">
        <br />
        <br />
        State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        <span class="newStyle2">
        <br />
        </span></em>
        <br />
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" Width="61px" />
    
    </div>
    </form>
</body>
</html>
