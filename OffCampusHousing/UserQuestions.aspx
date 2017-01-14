<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserQuestions.aspx.cs" Inherits="OffCampusHousing.UserQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        body{
            background-image:url("http://assets.tumblr.com/images/register_login/light6.png");
        }
        .newStyle1 {
            color: #FF0000;
        }
        .newStyle2 {
            color: #FF9933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1"><em class="newStyle2">!!!Here are the User Questions!!!</em></h1>
        <br />
        <br />
        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
       
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        </p>
    </form>
</body>
</html>
