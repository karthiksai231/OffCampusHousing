<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCompany.aspx.cs" Inherits="OffCampusHousing.AddCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url("http://d3d6208u46n5q9.cloudfront.net/tyson_prop/uploads/news/2015/11/0d7a74cf5a4087a.jpg");
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <font>
            <h1>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Add Company
            </h1>
        </font>
        <table align="Center">
            <tr>
                <td>Company Name </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" />
                </td>
            </tr>
             <tr>
                <td>Phone </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" />
                </td>
            </tr>
             <tr>
                <td>Email </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
            </tr>
             <tr>
                <td>Address&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" Columns="20" Rows="10" runat="server" Height="73px" Width="331px" />
                </td>
            </tr>
             <tr>
                <td>Description&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtDescription" TextMode="MultiLine" Columns="20" Rows="10" runat="server" Height="110px" Width="459px" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnAdd" Text="Add" runat="server"  Width="80px" OnClick="btnAdd_Click" />
                    
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
