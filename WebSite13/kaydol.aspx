<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kaydol.aspx.cs" Inherits="kaydol" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 99px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Ad:</td>
            <td>
                <asp:TextBox ID="txtad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Soyad:</td>
            <td>
                <asp:TextBox ID="txtsoyad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Kullanıcı adı:</td>
            <td>
                <asp:TextBox ID="txtkad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Parola:</td>
            <td>
                <asp:TextBox ID="txtparola" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Parola tekrar:</td>
            <td>
                <asp:TextBox ID="txtparolat" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtparola" ControlToValidate="txtparolat" 
                    ErrorMessage="Şifre uyuşmuyor..."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/login.aspx" 
                    Text="giriş ekranı" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydol" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
