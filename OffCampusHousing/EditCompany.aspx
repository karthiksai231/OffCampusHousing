<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCompany.aspx.cs" Inherits="OffCampusHousing.EditCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url("http://www.urwallpapers.com/download/6877/hd_wallpaper_red_modern_interior_design.jpg/");
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <font>
            <h1>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Edit Company 
            </h1>
        </font>
        <%--<input type="text" ID="txtId" runat="server" />--%>
         <table align="Center">
     
             <tr>
                 <td>Id : </td>
                 <td>
                     <input type="text" ID="txtId" runat="server" />
                 </td>
             </tr>
            <tr>
                <td>Company Name : </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" />
                </td>
            </tr>
             <tr>
                <td>Phone : </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" />
                </td>
            </tr>
             <tr>
                <td>Email : </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
            </tr>
             <tr>
                <td>Address : </td>
                <td>
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" Columns="20" Rows="10" runat="server" Height="73px" Width="331px" />
                </td>
            </tr>
             <tr>
                <td>Description : </td>
                <td>
                    <asp:TextBox ID="txtDescription" TextMode="MultiLine" Columns="20" Rows="10" runat="server" Height="110px" Width="459px" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnUpdate" Text="Update" runat="server"  Width="80px" OnClick="btnUpdate_Click" />
                    
                </td>
                <td>
                    <asp:Button ID="btnView" Text="View" runat="server"  Width="80px" OnClick="btnView_Click"  />
                    
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
