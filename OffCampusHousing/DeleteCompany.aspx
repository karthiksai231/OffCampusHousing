<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCompany.aspx.cs" Inherits="OffCampusHousing.DeleteCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url("http://cdn.pieria.co.uk/new_live/dr/section_main/277.jpg");
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
            <div style="text-align:center; color:#ff661a">
            <h1>
                Delete Company
            </h1>
                </div>
        </>
        <table>
            <tr>
                <td >Id </td>
                <td>
                   <input type="text" id="txtId" runat="server" />

                 </td>
                </tr>
            <tr>
                <td >
                    <asp:Button ID="btnDelete" Text="Delete" runat="server" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure to Delete this Company');" />
                </td>
                 <td >
                    <asp:Button ID="btnView" Text="View" runat="server" OnClick="btnView_Click" Width="55px"  />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
