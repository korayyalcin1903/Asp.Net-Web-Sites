<%@ Page Language="C#" AutoEventWireup="true" CodeFile="guncelleme.aspx.cs" Inherits="guncelleme" %>

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
            width: 224px;
        }
        .style3
        {
            width: 224px;
            font-weight: bold;
            font-style: italic;
            color: #800000;
            text-align: right;
        }
        .style4
        {
            width: 214px;
        }
        .style5
        {
            width: 224px;
            text-align: right;
            color: #800000;
            font-size: large;
        }
        .style6
        {
            height: 28px;
        }
        .style7
        {
            width: 214px;
            height: 28px;
        }
    </style>
</head>
<body style="background-color:white">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                Kimlik</td>
            <td class="style4">
                <asp:Label ID="LblId" runat="server" Width="118px"></asp:Label>
            </td>
            <td rowspan="9">
                <asp:GridView ID="GridView1" runat="server" Height="230px" Width="261px" 
                    AutoGenerateColumns="False" DataKeyNames="Kimlik" DataSourceID="AccessDataSource2" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Kimlik" />
                        <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                        <asp:BoundField DataField="EPosta" HeaderText="EPosta" 
                            SortExpression="EPosta" />
                        <asp:BoundField DataField="Parola" HeaderText="Parola" 
                            SortExpression="Parola" />
                        <asp:BoundField DataField="ParolaTekrar" HeaderText="ParolaTekrar" 
                            SortExpression="ParolaTekrar" />
                    </Columns>
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/App_Data/veritabani.accdb" 
                    SelectCommand="SELECT * FROM [kullanici]"></asp:AccessDataSource>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/veritabani.accdb" SelectCommand="SELECT * FROM [malzeme]">
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Ad:</td>
            <td class="style4">
                <asp:TextBox ID="Txtad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                EPosta:</td>
            <td class="style4">
                <asp:TextBox ID="Txteposta" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Parola:</td>
            <td class="style4">
                <asp:TextBox ID="Txtparola" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Parola Tekrar:</td>
            <td class="style4">
                <asp:TextBox ID="Txtparolat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong><em>Resim</em></strong></td>
            <td class="style4">
                <asp:FileUpload ID="FileUploadIlac" runat="server" 
                    style="color: #800000; font-weight: 700" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="BtnGuncelle" runat="server" Height="38px" 
                    style="color: #800000; font-weight: 700; font-size: large" Text="Güncelle" 
                    Width="216px" onclick="BtnGuncelle_Click" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
        <asp:HyperLink ID="HyperLink1" runat="server" 
            style="color: #FFFFCC; font-weight: 700; font-style: italic; font-size: large" 
                    BackColor="#0099FF">Kayıt Güncellemek için Tıklayınız...</asp:HyperLink>
    
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
