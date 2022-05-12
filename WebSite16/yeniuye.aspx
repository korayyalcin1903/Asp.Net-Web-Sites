<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yeniuye.aspx.cs" Inherits="yeniuye" %>

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
            color: #FF0000;
            font-size: medium;
        }
        .style3
        {
            color: #800000;
            font-weight: bold;
            font-style: italic;
            width: 230px;
            text-align: right;
        }
        .style4
        {
            width: 230px;
        }
        .style5
        {
            width: 230px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
            color: #800000;
        }
    </style>
</head>
<body style="background-color:White">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="3">
                    <strong><em><span class="style7">Sitemize üye olmak için aşağıda ki formu 
                    doldurunuz...</span><br />
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Kullanıcı Adınız:</td>
                <td>
                    <asp:TextBox ID="TxtKullaniciAdi" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    E-Posta Adresiniz:</td>
                <td>
                    <asp:TextBox ID="TxtEposta" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Kullanmak istediğiniz Parola:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Kullanmak istediğiniz Parola(Tekrar):</td>
                <td>
                    <asp:TextBox ID="TxtParolaTekrar" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="BtnKaydet" runat="server" BorderColor="Maroon" 
                        style="font-weight: 700; color: #800000" Text="Kaydet" Width="233px" 
                        onclick="BtnKaydet_Click" />
                </td>
                <td>
                    &nbsp;
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Giriş</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
