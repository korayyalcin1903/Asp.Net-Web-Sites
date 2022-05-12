<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uyeol.aspx.cs" Inherits="uyeol" %>

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
</head>
<body style="background:url('img/arkaplan.jpg');">
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

     

        <div class="row text-danger">


        <!-- /.row -->
            <table class="w-100">
                <tr>
                    <td class="style5">

                        &nbsp;<td class="style3">

                        &nbsp;<td class="style1" rowspan="7">

                        

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

                        <asp:Button ID="uye" runat="server" onclick="Button1_Click" 
                            Text="Üye ol" class="btn-primary"/>
                <tr>
                    <td class="style5">

                        <asp:Label ID="Label2" runat="server"></asp:Label>

                    <td class="style3">

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
