<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>nogöre</asp:ListItem>
            <asp:ListItem>adagöre</asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ada">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                <asp:BoundField DataField="no" HeaderText="no" SortExpression="no" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ada" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\uye.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [kullanici] WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([no] = ?) OR ([no] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [kullanici] ([ID], [ad], [no]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [kullanici] WHERE ([ad] = ?)" UpdateCommand="UPDATE [kullanici] SET [ad] = ?, [no] = ? WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([no] = ?) OR ([no] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="no" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ad" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="no" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="noya" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\uye.accdb;Persist Security Info=True" DeleteCommand="DELETE FROM [kullanici] WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([no] = ?) OR ([no] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [kullanici] ([ID], [ad], [no]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [kullanici] WHERE ([no] = ?)" UpdateCommand="UPDATE [kullanici] SET [ad] = ?, [no] = ? WHERE [ID] = ? AND (([ad] = ?) OR ([ad] IS NULL AND ? IS NULL)) AND (([no] = ?) OR ([no] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="no" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="no" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="no" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
