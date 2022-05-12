<%@ Page Language="C#" AutoEventWireup="true" CodeFile="guncelle.aspx.cs" Inherits="guncelle" %>

<!DOCTYPE html>

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
    <style type="text/css">
        .auto-style1 {
            width: 176px;
        }
        .auto-style2 {
            width: 266px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td class="auto-style1">ID:</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td rowspan="6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                            <asp:TemplateField HeaderText="sec">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" Text="Seç" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.urunTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="marka" Type="String" />
                            <asp:Parameter Name="adet" Type="String" />
                            <asp:Parameter Name="resim" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="marka" Type="String" />
                            <asp:Parameter Name="adet" Type="String" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="Original_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ürün adı:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Marka:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Adet:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Resim:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Güncelle" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
