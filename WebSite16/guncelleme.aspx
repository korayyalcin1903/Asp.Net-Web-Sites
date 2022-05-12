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
                <asp:Label ID="Lblid" runat="server" Width="118px"></asp:Label>
            </td>
            <td rowspan="9">
                <asp:GridView ID="GridView1" runat="server" Height="230px" Width="261px" 
                    AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                        <asp:BoundField DataField="eposta" HeaderText="eposta" SortExpression="eposta" />
                        <asp:BoundField DataField="parola" HeaderText="parola" SortExpression="parola" />
                        <asp:BoundField DataField="parolatekrar" HeaderText="parolatekrar" SortExpression="parolatekrar" />
                        <asp:TemplateField HeaderText="sec">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" Text="Seç" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="sil">
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="Delete" Text="Sil" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSet1TableAdapters.kullaniciTableAdapter" UpdateMethod="UpdateQuery">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ad" Type="String" />
                        <asp:Parameter Name="eposta" Type="String" />
                        <asp:Parameter Name="parola" Type="String" />
                        <asp:Parameter Name="parolatekrar" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
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
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
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
