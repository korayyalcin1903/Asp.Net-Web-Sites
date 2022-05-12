<%@ Page Language="C#" AutoEventWireup="true" CodeFile="veri.aspx.cs" Inherits="veri" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Beşiktaş</title>
    <link rel="icon" type="image/png" href="img/bas.png">
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
    <style type="text/css">
        .style1
        {
            width: 134px;
        }
        .style3
        {
            width: 260px;
        }
        .style4
        {
        }
        .style5
        {
            width: 136px;
        }
    </style>
</head>
<body style="background-image:url('img/arkaplan.jpg');">
    <form id="form1" runat="server">
    <div>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Beşiktaş</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="forvet.aspx">Oyuncular
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.aspx">Giriş</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

       <div class="list-group">
          <a href="forvet.aspx" class="list-group-item">Forvet</a>
          <a href="ortasaha.aspx" class="list-group-item">Orta Saha</a>
          <a href="defans.aspx" class="list-group-item">Defans</a>
            <a href="kaleci.aspx" class="list-group-item">Kaleci</a>
            <a href="veri.aspx" class="list-group-item">Veri tabanı</a>
        </div>
      <!-- /.col-lg-3 -->

     
     <div style="margin-left:2%;">
     <br />
     <br />
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <asp:Button ID="Button3" runat="server" Text="Adı ara" 
             onclick="Button3_Click" class="btn-primary" />
     </div>
        <div class="row text-danger">


        <!-- /.row -->
            <table class="w-100">
                <tr>
                    <td class="style5">

                        ID<td class="style3">

                        <asp:Label ID="id" runat="server"></asp:Label>

                    <td class="style1" rowspan="7">

                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                            DeleteMethod="Delete" InsertMethod="Insert" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="oyuncuTableAdapters.yonetimTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_ID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="adı" Type="String" />
                                <asp:Parameter Name="soyadı" Type="String" />
                                <asp:Parameter Name="eposta" Type="String" />
                                <asp:Parameter Name="sifre" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="adı" Type="String" />
                                <asp:Parameter Name="soyadı" Type="String" />
                                <asp:Parameter Name="eposta" Type="String" />
                                <asp:Parameter Name="sifre" Type="String" />
                                <asp:Parameter Name="Original_ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>

                        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" DataFile="~/App_Data/yonetim.accdb" 
                            DeleteCommand="DELETE FROM [yonetim] WHERE [ID] = ? AND (([adı] = ?) OR ([adı] IS NULL AND ? IS NULL)) AND (([soyadı] = ?) OR ([soyadı] IS NULL AND ? IS NULL)) AND (([eposta] = ?) OR ([eposta] IS NULL AND ? IS NULL)) AND (([sifre] = ?) OR ([sifre] IS NULL AND ? IS NULL))" 
                            InsertCommand="INSERT INTO [yonetim] ([ID], [adı], [soyadı], [eposta], [sifre]) VALUES (?, ?, ?, ?, ?)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [yonetim] WHERE ([adı] = ?)" 
                            UpdateCommand="UPDATE [yonetim] SET [adı] = ?, [soyadı] = ?, [eposta] = ?, [sifre] = ? WHERE [ID] = ? AND (([adı] = ?) OR ([adı] IS NULL AND ? IS NULL)) AND (([soyadı] = ?) OR ([soyadı] IS NULL AND ? IS NULL)) AND (([eposta] = ?) OR ([eposta] IS NULL AND ? IS NULL)) AND (([sifre] = ?) OR ([sifre] IS NULL AND ? IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_adı" Type="String" />
                                <asp:Parameter Name="original_adı" Type="String" />
                                <asp:Parameter Name="original_soyadı" Type="String" />
                                <asp:Parameter Name="original_soyadı" Type="String" />
                                <asp:Parameter Name="original_eposta" Type="String" />
                                <asp:Parameter Name="original_eposta" Type="String" />
                                <asp:Parameter Name="original_sifre" Type="String" />
                                <asp:Parameter Name="original_sifre" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                                <asp:Parameter Name="adı" Type="String" />
                                <asp:Parameter Name="soyadı" Type="String" />
                                <asp:Parameter Name="eposta" Type="String" />
                                <asp:Parameter Name="sifre" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="adı" PropertyName="Text" 
                                    Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="adı" Type="String" />
                                <asp:Parameter Name="soyadı" Type="String" />
                                <asp:Parameter Name="eposta" Type="String" />
                                <asp:Parameter Name="sifre" Type="String" />
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_adı" Type="String" />
                                <asp:Parameter Name="original_adı" Type="String" />
                                <asp:Parameter Name="original_soyadı" Type="String" />
                                <asp:Parameter Name="original_soyadı" Type="String" />
                                <asp:Parameter Name="original_eposta" Type="String" />
                                <asp:Parameter Name="original_eposta" Type="String" />
                                <asp:Parameter Name="original_sifre" Type="String" />
                                <asp:Parameter Name="original_sifre" Type="String" />
                            </UpdateParameters>
                        </asp:AccessDataSource>

                </tr>
                <tr>
                    <td class="style5">
                        Adı:<td class="style3">
                        <asp:TextBox ID="txtadi" runat="server"></asp:TextBox>
                <tr>
                    <td class="style5">

                        Soyadı:<td class="style3">

                        <asp:TextBox ID="txtsoyadi" runat="server"></asp:TextBox>
                <tr>
                    <td class="style5">

                        E-posta:<td class="style3">

                        <asp:TextBox ID="txteposta" runat="server"></asp:TextBox>
                <tr>
                    <td class="style5">

                        Şifre:<td class="style3">

                        <asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
                <tr>
                    <td class="style4" colspan="2">

                        <asp:Button ID="guncelle" runat="server" onclick="Button1_Click" 
                            Text="Güncelle" />
                <tr>
                    <td class="style5">

                        <asp:Label ID="Label2" runat="server"></asp:Label>

                    <td class="style3">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="ID" DataSourceID="ObjectDataSource1" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" CellSpacing="2">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="adı" HeaderText="adı" SortExpression="adı" />
                                <asp:BoundField DataField="soyadı" HeaderText="soyadı" 
                                    SortExpression="soyadı" />
                                <asp:BoundField DataField="eposta" HeaderText="eposta" 
                                    SortExpression="eposta" />
                                <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="sec" 
                                    ShowHeader="True" Text="seç" />
                                <asp:TemplateField HeaderText="sil">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" CausesValidation="false" 
                                            CommandName="Delete" Text="sil" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        
                    </table>
        </div>
      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
  <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </div>
    </form>
</body>
</html>
