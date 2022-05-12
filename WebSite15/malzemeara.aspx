<%@ Page Language="C#" AutoEventWireup="true" CodeFile="malzemeara.aspx.cs" Inherits="malzemeara" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 136px;
        }
    </style>
</head>
<body style="background-color:White">
    <form id="form1" runat="server">
    <div>
    
        <span ><strong>Hoş Geldin...</strong></span><asp:Label 
            ID="Label1" runat="server" style="color: #FF0000; font-size: large" 
            Text="LblKarsilama"></asp:Label>
        <br />
        <br />
        <table class="style2">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonSec" runat="server" CellPadding="5" 
                        RepeatDirection="Horizontal" 
                        style="color: #800000; font-weight: 700; font-size: large">
                        <asp:ListItem Value="AdaGore">Malzeme Adına Göre</asp:ListItem>
                        <asp:ListItem Value="MarkayaGore">Malzemenin Markasına Göre</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:TextBox ID="TxtAra" runat="server" Height="40px" Width="199px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnAra" runat="server" BorderColor="Maroon" Height="41px" 
                        style="font-weight: 700; color: #990000; font-size: large" Text="Ara" 
                        Width="178px" onclick="BtnAra_Click"  />
                </td>
            </tr>
            </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Kimlik" DataSourceID="AccessDataSource2">
            <Columns>
                <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Kimlik" />
                <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                <asp:BoundField DataField="RAM" HeaderText="RAM" SortExpression="RAM" />
                <asp:BoundField DataField="EKRAN KARTI" HeaderText="EKRAN KARTI" 
                    SortExpression="EKRAN KARTI" />
                <asp:BoundField DataField="İŞLEMCİ" HeaderText="İŞLEMCİ" 
                    SortExpression="İŞLEMCİ" />
                <asp:BoundField DataField="EKRAN" HeaderText="EKRAN" SortExpression="EKRAN" />
            </Columns>
        </asp:GridView>
        
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
