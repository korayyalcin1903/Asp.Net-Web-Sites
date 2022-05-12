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
                        <asp:ListItem Value="MarkayaGore">Malzemenin Ekranına Göre</asp:ListItem>
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
            DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
                <asp:BoundField DataField="ekrankarti" HeaderText="ekrankarti" SortExpression="ekrankarti" />
                <asp:BoundField DataField="islemci" HeaderText="islemci" SortExpression="islemci" />
                <asp:BoundField DataField="ekran" HeaderText="ekran" SortExpression="ekran" />
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:veritabaniConnectionString %>" DeleteCommand="DELETE FROM [malzeme] WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([ram] = ?) OR ([ram] IS NULL AND ? IS NULL)) AND (([ekrankarti] = ?) OR ([ekrankarti] IS NULL AND ? IS NULL)) AND (([islemci] = ?) OR ([islemci] IS NULL AND ? IS NULL)) AND (([ekran] = ?) OR ([ekran] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [malzeme] ([ID], [ad], [ram], [ekrankarti], [islemci], [ekran]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:veritabaniConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [malzeme] WHERE ([ad] = ?)" UpdateCommand="UPDATE [malzeme] SET [ad] = ?, [ram] = ?, [ekrankarti] = ?, [islemci] = ?, [ekran] = ? WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([ram] = ?) OR ([ram] IS NULL AND ? IS NULL)) AND (([ekrankarti] = ?) OR ([ekrankarti] IS NULL AND ? IS NULL)) AND (([islemci] = ?) OR ([islemci] IS NULL AND ? IS NULL)) AND (([ekran] = ?) OR ([ekran] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="ram" Type="String" />
                <asp:Parameter Name="ekrankarti" Type="String" />
                <asp:Parameter Name="islemci" Type="String" />
                <asp:Parameter Name="ekran" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TxtAra" Name="ad" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="ram" Type="String" />
                <asp:Parameter Name="ekrankarti" Type="String" />
                <asp:Parameter Name="islemci" Type="String" />
                <asp:Parameter Name="ekran" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:veritabaniConnectionString %>" DeleteCommand="DELETE FROM [malzeme] WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([ram] = ?) OR ([ram] IS NULL AND ? IS NULL)) AND (([ekrankarti] = ?) OR ([ekrankarti] IS NULL AND ? IS NULL)) AND (([islemci] = ?) OR ([islemci] IS NULL AND ? IS NULL)) AND (([ekran] = ?) OR ([ekran] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [malzeme] ([ID], [ad], [ram], [ekrankarti], [islemci], [ekran]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:veritabaniConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [malzeme] WHERE ([ekran] = ?)" UpdateCommand="UPDATE [malzeme] SET [ad] = ?, [ram] = ?, [ekrankarti] = ?, [islemci] = ?, [ekran] = ? WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([ram] = ?) OR ([ram] IS NULL AND ? IS NULL)) AND (([ekrankarti] = ?) OR ([ekrankarti] IS NULL AND ? IS NULL)) AND (([islemci] = ?) OR ([islemci] IS NULL AND ? IS NULL)) AND (([ekran] = ?) OR ([ekran] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="ram" Type="String" />
                <asp:Parameter Name="ekrankarti" Type="String" />
                <asp:Parameter Name="islemci" Type="String" />
                <asp:Parameter Name="ekran" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TxtAra" Name="ekran" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="ram" Type="String" />
                <asp:Parameter Name="ekrankarti" Type="String" />
                <asp:Parameter Name="islemci" Type="String" />
                <asp:Parameter Name="ekran" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ram" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_ekrankarti" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_islemci" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
                <asp:Parameter Name="original_ekran" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/guncelleme.aspx">Güncelleme</asp:HyperLink>
        
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
