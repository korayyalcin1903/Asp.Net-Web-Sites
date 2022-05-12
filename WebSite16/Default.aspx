<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 150px;
        }
        .style6
        {
            width: 150px;
            text-align: right;
            font-size: x-large;
            font-weight: bold;
            font-style: italic;
            font-family: AngsanaUPC;
            color: #CC0000;
        }
        .style7
        {
            color: #CC0000;
            font-weight: bold;
        }
        .style8
        {
            font-family: Georgia;
            font-size: 50pt;
            color: #0000FF;
            background-color: transparent;
        }
        .style11
        {
            width: 1209px;
            height: 485px;
        }
    </style>
</head>
<body style="background-color:White">
    <form id="form1" runat="server">
    <div class="style8">
    
        &nbsp;<img alt="" class="style11" src="images/slayt66-970x291.jpg" /></div>
    <table class="style4">
        <tr>
            <td class="style6">
                Kullanıcı Adı:</td>
            <td>
                <asp:TextBox ID="TxtKullanici" runat="server" CssClass="style7" Height="34px" 
                    Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Parola:</td>
            <td>
                <asp:TextBox ID="TxtParola" runat="server" CssClass="style7" Height="32px" 
                    Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
               <asp:Button ID="BtnGiris" runat="server" BorderStyle="Groove" Height="38px" 
                    style="font-weight: 700; color: #CC0000; font-size: large" Text="Giriş" 
                    Width="172px" onclick="BtnGiris_Click" BorderColor="#66FFFF" 
                    ForeColor="#0099FF" />
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FF3300" 
                    NavigateUrl="~/yeniuye.aspx" ForeColor="#66FFCC">Üye OL</asp:HyperLink>
            &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
