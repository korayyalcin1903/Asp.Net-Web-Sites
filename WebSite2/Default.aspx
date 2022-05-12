<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="width:60%;margin-top:10%;">
    <div class="form-group">
  <label for="usr">Telefon numarası:</label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" type="text"></asp:TextBox>
</div>
<div class="form-group">
  <label for="pwd">Ad ve Soyad:</label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control" type="text"></asp:TextBox>
    <asp:Button type="button" class="btn btn-primary" ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:TemplateField HeaderText="numara" SortExpression="numara">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("numara") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("numara") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ad_soyad" SortExpression="ad_soyad">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ad_soyad") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ad_soyad") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\hesap.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [hesap] WHERE ([numara] = ?)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [hesap] WHERE [ID] = ? AND (([numara] = ?) OR ([numara] IS NULL AND ? IS NULL)) AND (([ad_soyad] = ?) OR ([ad_soyad] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [hesap] ([ID], [numara], [ad_soyad]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [hesap] SET [numara] = ?, [ad_soyad] = ? WHERE [ID] = ? AND (([numara] = ?) OR ([numara] IS NULL AND ? IS NULL)) AND (([ad_soyad] = ?) OR ([ad_soyad] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_numara" Type="String" />
            <asp:Parameter Name="original_numara" Type="String" />
            <asp:Parameter Name="original_ad_soyad" Type="String" />
            <asp:Parameter Name="original_ad_soyad" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="numara" Type="String" />
            <asp:Parameter Name="ad_soyad" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="numara" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="numara" Type="String" />
            <asp:Parameter Name="ad_soyad" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_numara" Type="String" />
            <asp:Parameter Name="original_numara" Type="String" />
            <asp:Parameter Name="original_ad_soyad" Type="String" />
            <asp:Parameter Name="original_ad_soyad" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [hesap] WHERE ([ad_soyad] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="ad_soyad" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

</div> 
    </div>
    </form>
</body>
</html>
