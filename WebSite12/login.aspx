<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

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
            width: 179px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">kullanıcı adı:</td>
                <td>
                    <asp:TextBox ID="txtkadi" runat="server" Width="176px" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">şifre:</td>
                <td>
                    <asp:TextBox ID="txtparola" runat="server" Width="174px" type="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                   &nbsp &nbsp &nbsp &nbsp<asp:Button ID="Button1" runat="server" Text="Giriş" Width="70px" type="button" class="btn btn-primary" OnClick="Button1_Click" />
                    &nbsp &nbsp &nbsp<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/kaydol.aspx">Kaydol</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
