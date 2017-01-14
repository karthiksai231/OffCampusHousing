<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyList1.aspx.cs" Inherits="OffCampusHousing.CompanyList1" %>

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
        .newStyle1 {
            color: #00498A;
        }
        body{
            background-image:url("https://wallpaperscraft.com/image/sofa_wall_vase_interior_modern_68107_3840x2400.jpg");
        }
        .newStyle2 {
            color: #990000;
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
        </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="form-horizontal" role="form">
        <h1 class="newStyle1"><em class="newStyle2">Companies List</em></h1>
        <p class="newStyle1">&nbsp;</p>
        <p class="newStyle1">&nbsp;</p>

        <div class="form-group has-success has-feedback">
        <div class="col-sm-4">
             <input type="text" runat="server" id="txtSearch" class="form-control" />
             <span class="glyphicon glyphicon-search form-control-feedback"></span></div>
        </div>
         <asp:Button ID="btnSearch" class="btn btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click" >
        </asp:Button>
    <div class="auto-style1">
    
    &nbsp;<%--<div class="col-sm-8">
             <input type="text" runat="server" id="txtSearch" class="form-control" />
             <span class="glyphicon glyphicon-search form-control-feedback"></span></div>--%><%--<asp:TextBox class="form-control" placeholder="Search here........" ID="txtSearch" runat="server"></asp:TextBox>--%><br />
            <%--  <span class="glyphicon glyphicon-search"></span>--%>
       
             <%-- <button type="button" id="btnSearch" class="btn btn-info" runat="server" onclick="btnSearch1_Click">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>--%>
             <br />
             
        <br />
        <br />
        <asp:GridView ID="gv1" OnRowDataBound="gv1_RowDataBound" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="443px" Width="723px">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
             </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" style="margin-top: 0px" Text="LogOut" OnClick="Button1_Click" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle4">&nbsp;</span><br />
    
<%--    </div>--%>
    </form>
        </div>
</body>
</html>
