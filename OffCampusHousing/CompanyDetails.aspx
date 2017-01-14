<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyDetails.aspx.cs" Inherits="OffCampusHousing.CompanyDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
            background-image:url("https://expertbeacon.com/sites/default/files/embrace_technology_to_be_a_better_property_management_professional.jpg");
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <font>
            <h1>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Company Details
            </h1>
        </font>
    
        <fieldset>
            <legend>
                Company Details 
            </legend>
            <table>
                <tr>
                    <td>
                        Company Id : 
                    </td>
                    <td>
                        <asp:Label ID="lblId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAddMore" Text="AddMore" runat="server" OnClick="btnAddMore_Click" />
                    </td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnView" Text="View" runat="server" OnClick="btnView_Click" Width="78px" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
    </form>
</body>
</html>
