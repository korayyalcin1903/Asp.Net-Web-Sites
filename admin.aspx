<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <title>White Eagle|Yusuf Özcan</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">


  <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="marka">Markaya göre ara</asp:ListItem>
            <asp:ListItem Value="ad">Ada göre ara</asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="229px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Ara" Width="57px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/urunekle.aspx">Ürün ekle</asp:HyperLink>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ID" DataSourceID="mark" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                <asp:BoundField DataField="marka" HeaderText="marka" SortExpression="marka" />
                <asp:BoundField DataField="adet" HeaderText="adet" SortExpression="adet" />
                <asp:TemplateField HeaderText="resim" SortExpression="resim">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("resim") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("resim") %>' Width="50px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="sil">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Delete" Text="Sil" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="sec">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="Select" Text="Seç" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="mark" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:veriConnectionString %>" DeleteCommand="DELETE FROM [urun] WHERE [ID] = ? AND (([adi] = ?) OR ([adi] IS NULL AND ? IS NULL)) AND (([marka] = ?) OR ([marka] IS NULL AND ? IS NULL)) AND (([adet] = ?) OR ([adet] IS NULL AND ? IS NULL)) AND (([resim] = ?) OR ([resim] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [urun] ([ID], [adi], [marka], [adet], [resim]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:veriConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [urun] WHERE ([marka] = ?)" UpdateCommand="UPDATE [urun] SET [adi] = ?, [marka] = ?, [adet] = ?, [resim] = ? WHERE [ID] = ? AND (([adi] = ?) OR ([adi] IS NULL AND ? IS NULL)) AND (([marka] = ?) OR ([marka] IS NULL AND ? IS NULL)) AND (([adet] = ?) OR ([adet] IS NULL AND ? IS NULL)) AND (([resim] = ?) OR ([resim] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="marka" Type="String" />
                <asp:Parameter Name="adet" Type="String" />
                <asp:Parameter Name="resim" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="marka" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="marka" Type="String" />
                <asp:Parameter Name="adet" Type="String" />
                <asp:Parameter Name="resim" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="adi" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:veriConnectionString %>" DeleteCommand="DELETE FROM [urun] WHERE [ID] = ? AND (([adi] = ?) OR ([adi] IS NULL AND ? IS NULL)) AND (([marka] = ?) OR ([marka] IS NULL AND ? IS NULL)) AND (([adet] = ?) OR ([adet] IS NULL AND ? IS NULL)) AND (([resim] = ?) OR ([resim] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [urun] ([ID], [adi], [marka], [adet], [resim]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:veriConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [urun] WHERE ([adi] = ?)" UpdateCommand="UPDATE [urun] SET [adi] = ?, [marka] = ?, [adet] = ?, [resim] = ? WHERE [ID] = ? AND (([adi] = ?) OR ([adi] IS NULL AND ? IS NULL)) AND (([marka] = ?) OR ([marka] IS NULL AND ? IS NULL)) AND (([adet] = ?) OR ([adet] IS NULL AND ? IS NULL)) AND (([resim] = ?) OR ([resim] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="marka" Type="String" />
                <asp:Parameter Name="adet" Type="String" />
                <asp:Parameter Name="resim" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="adi" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="marka" Type="String" />
                <asp:Parameter Name="adet" Type="String" />
                <asp:Parameter Name="resim" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_adi" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_marka" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_adet" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
                <asp:Parameter Name="original_resim" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
