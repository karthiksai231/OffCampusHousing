<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="OffCampusHousing.ManageUsers" %>

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
            background-image:url("http://www.templateof.com/postpic/2013/02/linkedin-professional-backgrounds-free_338245.jpg");
        }
        .newStyle1 {
            color: #FF0000;
        }
        .newStyle2 {
            color: #FF0000;
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
    
        <h1 class="auto-style1"><em class="newStyle3">Manage Users !!!</em></h1>
        &nbsp;<br />
        <br />
        <em><span class="newStyle6">Add User</span></em><span class="newStyle6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="btnAdd" class="btn btn-danger" runat="server" Text="Add" OnClick="btnAdd_Click" Width="103px" />
        <span class="newStyle6">
        <br />
        <br />
        <br />
        <br />
        <em>View User</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="btnView" class="btn btn-danger" runat="server" Text="View" OnClick="btnView_Click" Width="103px" />
    
        <span class="newStyle6">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </span>
        <em><span class="newStyle6">User Questions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    
        <span class="newStyle2">
    
                                                                                                                           <asp:Button ID="btnView1" class="btn btn-danger" runat="server" Text="View" OnClick="btnView1_Click" Width="103px" />
        </span>
        </em>
    
        <span class="newStyle6">
    
        <br />
        <br />
        <br />
        Admin Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button1" class="btn btn-danger" runat="server" OnClick="Button1_Click" Text="Admin Page" Width="103px" />
        <span class="newStyle6">
        <br />
        <br />
        <br />
        Login Page&nbsp;</span><span class="newStyle2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button2" class="btn btn-danger" runat="server" OnClick="Button2_Click" Text="Login Page" Width="103px" />
        <span class="newStyle4">
        <br />
        <br />
        <br />
        Main Page&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" class="btn btn-danger" runat="server" OnClick="Button3_Click" Text="Main Page" Width="103px" />
    
    </div>
    </form>
</body>
</html>
