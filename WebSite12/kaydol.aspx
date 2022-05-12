<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kaydol.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">ad:</td>
                <td>
                    <asp:TextBox ID="txtad" runat="server" Width="190px" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">soyad:</td>
                <td>
                    <asp:TextBox ID="txtsoyad" runat="server" Width="190px" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">kullanıcı adı:</td>
                <td>
                    <asp:TextBox ID="txtkad" runat="server" Width="190px" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">parola:</td>
                <td>
                    <asp:TextBox ID="txtparola" runat="server" Width="190px" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">parola tekrar:</td>
                <td>
                    <asp:TextBox ID="txtparolat" runat="server" Width="190px" type="text"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtparola" ControlToValidate="txtparolat" ErrorMessage="şifre uyuşmuyor..."></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="kaydol" type="button" class="btn btn-primary" OnClick="Button1_Click"/>
                   &nbsp &nbsp &nbsp &nbsp &nbsp <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">login ekranı</asp:HyperLink>
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
