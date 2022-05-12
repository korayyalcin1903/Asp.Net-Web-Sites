<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 158px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.DataTable1TableAdapter"></asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="doktor_Doktor_no" HeaderText="doktor_Doktor_no" SortExpression="doktor_Doktor_no" />
                <asp:BoundField DataField="Doktor_adi" HeaderText="Doktor_adi" SortExpression="Doktor_adi" />
                <asp:BoundField DataField="Doktor_soyad" HeaderText="Doktor_soyad" SortExpression="Doktor_soyad" />
                <asp:BoundField DataField="TC_no" HeaderText="TC_no" SortExpression="TC_no" />
                <asp:BoundField DataField="Hasta_adi" HeaderText="Hasta_adi" SortExpression="Hasta_adi" />
                <asp:BoundField DataField="Hasta_soyadi" HeaderText="Hasta_soyadi" SortExpression="Hasta_soyadi" />
                <asp:BoundField DataField="hasta_Hasta_no" HeaderText="hasta_Hasta_no" SortExpression="hasta_Hasta_no" />
                <asp:BoundField DataField="hasta özellik_Hasta_no" HeaderText="hasta özellik_Hasta_no" SortExpression="hasta özellik_Hasta_no" />
                <asp:BoundField DataField="Kilosu" HeaderText="Kilosu" SortExpression="Kilosu" />
                <asp:BoundField DataField="Boyu" HeaderText="Boyu" SortExpression="Boyu" />
                <asp:BoundField DataField="Yasi" HeaderText="Yasi" SortExpression="Yasi" />
                <asp:BoundField DataField="Cinsiyet" HeaderText="Cinsiyet" SortExpression="Cinsiyet" />
                <asp:BoundField DataField="hasta özellik_Oda_no" HeaderText="hasta özellik_Oda_no" SortExpression="hasta özellik_Oda_no" />
                <asp:BoundField DataField="oda_Oda_no" HeaderText="oda_Oda_no" SortExpression="oda_Oda_no" />
                <asp:BoundField DataField="Bölümü" HeaderText="Bölümü" SortExpression="Bölümü" />
                <asp:BoundField DataField="Hastaligi" HeaderText="Hastaligi" SortExpression="Hastaligi" />
                <asp:BoundField DataField="oda_Doktor_no" HeaderText="oda_Doktor_no" SortExpression="oda_Doktor_no" />
            </Columns>
        </asp:GridView>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">TC No:</td>
                <td>
                    <asp:TextBox ID="txttc" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Hasta Adı:</td>
                <td>
                    <asp:TextBox ID="txtha" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Hasta Soyadı:</td>
                <td>
                    <asp:TextBox ID="txths" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Hasta No:</td>
                <td>
                    <asp:TextBox ID="txthno" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
